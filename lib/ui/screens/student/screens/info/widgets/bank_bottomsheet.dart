import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:panakj_app/core/colors/colors.dart';
import 'package:panakj_app/core/constant/constants.dart';
import 'package:panakj_app/core/db/adapters/bank_adapter/bank_adapter.dart';
import 'package:panakj_app/ui/view_model/search_bank/get_bank_bloc.dart';
import 'package:panakj_app/ui/view_model/selctedbank/selctedbank_bloc.dart';


class bankBottomSheet extends StatefulWidget {
  final bottomSheetheight;
  final String title;
  final hintText;
  List<String> listofData = [];
  bankBottomSheet({
    Key? key,
    required this.title,
    this.bottomSheetheight = 0.9,
    this.hintText,
  }) : super(key: key);

  @override
  State<bankBottomSheet> createState() => _bankBottomSheetState();
}

class _bankBottomSheetState extends State<bankBottomSheet> {
  late Box<BankDB> bankBox;
  List<String> bankNames = [];
  List<String> searchResults = [];

  @override
  void initState() {
    super.initState();
    setupBankBox();
    textController.clear();
  }

  Future<void> setupBankBox() async {
    bankBox = await Hive.openBox<BankDB>('bankBox');

    if (!bankBox.isOpen) {
      print('bankBox is not open');
      return;
    }

    List<int> keys = bankBox.keys.cast<int>().toList();

    print('All keys in bankBox: $keys');

    if (keys.isEmpty) {
      print('No banks found in bankBox');
      return;
    }

    bankNames = keys.map((key) {
      BankDB bank = bankBox.get(key)!;
      return bank.name;
    }).toList();

    print('Bank names: $bankNames');

    if (mounted) {
      setState(() {});
    }
  }

  final List<String> emptyList = [];
  final TextEditingController textController = TextEditingController();
  bool shouldClearTextController = false;

  void _showModal(context) {
    showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
      ),
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return DraggableScrollableSheet(
              initialChildSize: 0.5,
              minChildSize: 0.2,
              maxChildSize: widget.bottomSheetheight,
              expand: false,
              builder:
                  (BuildContext context, ScrollController scrollController) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, bottom: 1, left: 6),
                            child: Text(
                              widget.title,
                              style: const TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 92, 91, 90),
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: const Icon(
                              Icons.close,
                              color: kredColor,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 500,
                      height: 1,
                      color: const Color.fromARGB(255, 211, 211, 208),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 14, top: 8, right: 14, bottom: 8),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              onChanged: (textController) {
                                BlocProvider.of<GetBankBloc>(context).add(
                                  GetBankEvent.searchBankList(
                                      bankQuery: textController),
                                );
                              },
                              style: kCardContentStyle,
                              controller: textController,
                              decoration: InputDecoration(
                                hintText: widget.hintText,
                                contentPadding: const EdgeInsets.all(8),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: const BorderSide(),
                                ),
                                prefixIcon: const Icon(Icons.search),
                                suffixIcon: Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: IconButton(
                                    icon: const Icon(
                                      FontAwesomeIcons.eraser,
                                      size: 24,
                                      color: Color.fromARGB(255, 140, 138, 138),
                                    ),
                                    color: const Color(0xFF1F91E7),
                                    onPressed: () {
                                      textController.clear();

                                      // Use the stored search results when clearing the search
                                      setState(() {
                                        searchResults.clear();
                                      });

                                      // Trigger a new search event with an empty query
                                      BlocProvider.of<GetBankBloc>(context).add(
                                        const GetBankEvent.searchBankList(
                                            bankQuery: ''),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    BlocBuilder<GetBankBloc, GetBankState>(
                      builder: (context, state) {
                        if (state.isLoading) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        } else if (state.isError) {
                          return const Center(
                            child: Text('Error fetching data'),
                          );
                        } else {
                          return Expanded(
                            child: ListView.separated(
                              controller: scrollController,
                              // when textcontroller is empty we look for items in hive , else we take data from api
                              itemCount: textController.text.isEmpty
                                  ? bankBox.length
                                  : (state.bank.data != null &&
                                          state.bank.data!.isNotEmpty)
                                      ? state.bank.data!.length
                                      : 0,
                              separatorBuilder: (context, index) {
                                return const Divider();
                              },
                              itemBuilder: (context, index) {
                                return InkWell(
                                  child: showBottomSheetData(
                                      index, state.bank.data ?? emptyList),
                                  onTap: () {
                                    if (state.bank != null) {
                                      final bankData = state.bank!.data ?? [];
                                      if (bankData.isNotEmpty &&
                                          index < bankData.length) {
                                        Future.delayed(Duration.zero, () {
                                          setState(() {
                                            textController.text =
                                                bankData[index].name ?? '';
                                            shouldClearTextController = false;
                                          });
                                        });
                                        BlocProvider.of<SelctedbankBloc>(
                                                context)
                                            .add(
                                          SelctedbankEvent.selectedBank(
                                            selectedBank:
                                                bankData[index].id as int,
                                          ),
                                        );
                                      } else if (bankNames.isNotEmpty &&
                                          index < bankNames.length) {
                                        Future.delayed(Duration.zero, () {
                                          setState(() {
                                            textController.text =
                                                bankNames[index] ?? '';
                                            shouldClearTextController = false;
                                          });
                                        });
                                        BlocProvider.of<SelctedbankBloc>(
                                                context)
                                            .add(
                                          SelctedbankEvent.selectedBank(
                                            selectedBank:
                                                bankBox.getAt(index)!.id,
                                          ),
                                        );
                                      }

                                      // Additional logic if needed
                                      print(
                                          'Selected item in bottom sheet: $index');

                                      // Clear the textController only if it was a search result
                                      if (shouldClearTextController) {
                                        Future.delayed(Duration.zero, () {
                                          setState(() {
                                            textController.clear();
                                            shouldClearTextController = false;
                                          });
                                        });
                                      }

                                      Navigator.of(context).pop();
                                    }
                                  },
                                );
                              },
                            ),
                          );
                        }
                      },
                    )
                  ],
                );
              },
            );
          },
        );
      },
    );
  }

  Widget showBottomSheetData(int index, List data) {
    final isFirstItem = index == 0;
    final isLastItem = index == data.length - 1;
    final selectedBankName = textController.text.isEmpty
        ? bankNames[index]
        : (data.isNotEmpty ? data[index].name : '');

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (isFirstItem)
          const Padding(
            padding: EdgeInsets.only(top: 4),
            child: Divider(
              height: 1,
              thickness: 1,
            ),
          ),
        Container(
          margin: const EdgeInsets.only(top: 12, bottom: 10, left: 14),
          child: Text(
            selectedBankName,
            style: const TextStyle(
              color: Color.fromARGB(255, 84, 84, 84),
              fontSize: 14,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        if (isLastItem)
          const Padding(
            padding: EdgeInsets.only(bottom: 6),
            child: Divider(
              height: 1,
              thickness: 1,
            ),
          ),
      ],
    );
  }

  List<String> _buildSearchList(String userSearchTerm) {
    searchResults = [];

    for (int i = 0; i < emptyList.length; i++) {
      String name = emptyList[i];
      if (name.toLowerCase().contains(userSearchTerm.toLowerCase())) {
        searchResults.add(emptyList[i]);
      }
    }
    return searchResults;
  }

  @override
  Widget build(BuildContext context) {
    final Devicewidth = MediaQuery.of(context).size.width;
    return Center(
      child: BlocBuilder<SelctedbankBloc, SelctedbankState>(
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    width: Devicewidth,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color.fromARGB(255, 136, 133, 133),
                        width: 1.0,
                      ),
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 14),
                      child: TextFormField(
                        style: kCardContentStyle,
                        readOnly: true,
                        maxLines: 1,
                        controller: textController,
                        onTap: () async {
                          _showModal(context);
                          WidgetsBinding.instance!.addPostFrameCallback((_) {});
                        },
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          suffixIcon:
                              Icon(Icons.arrow_drop_down, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      _showModal(context);
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(1.0),
                      child: SizedBox(
                        width: 370,
                        height: 48,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
