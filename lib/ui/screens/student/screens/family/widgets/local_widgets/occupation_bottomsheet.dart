import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:panakj_app/core/colors/colors.dart';
import 'package:panakj_app/core/constant/constants.dart';
import 'package:panakj_app/core/db/adapters/occupation_adapter/occupation_adapter.dart';
import 'package:panakj_app/ui/view_model/search_occupation/search_occupation_bloc.dart';
import 'package:panakj_app/ui/view_model/selected_occupation/selected_occupation_bloc.dart';

class OccupationBottomSheet extends StatefulWidget {
  final bottomSheetheight;
  final String title;
  final hintText;

  OccupationBottomSheet({
    Key? key,
    required this.title,
    this.bottomSheetheight = 0.9,
    this.hintText,
  }) : super(key: key);

  @override
  State<OccupationBottomSheet> createState() => _OccupationBottomSheetState();
}

class _OccupationBottomSheetState extends State<OccupationBottomSheet> {
  late Box<OccupationDB> occupationBox;
  List<String> occupationNames = [];
  List<String> displayedOccupations = [];
  List<String> newDisplayedOccupation = [];
  late StreamController<bool>? _updateStreamController;
  late TextEditingController textController;

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
    setupOccupationBox();
  }

  @override
  void dispose() {
    _updateStreamController?.close();
    super.dispose();
  }

  Future<void> setupOccupationBox() async {
    occupationBox = await Hive.openBox<OccupationDB>('occupationBox');

    // Initialize displayedOccupations with the initial values from Hive
    displayedOccupations =
        occupationBox.values.map((occupation) => occupation.name).toList();

    // Add a listener to update the displayed occupations when data changes in Hive
    occupationBox.listenable().addListener(() {
      if (mounted) {
        setState(() {
          displayedOccupations = occupationBox.values
              .map((occupation) => occupation.name)
              .toList();
        });
      }
    });

    // Listen to changes from the SearchOccupationBloc
    // ignore: use_build_context_synchronously

BlocProvider.of<SearchOccupationBloc>(context).stream.listen((state) {
  if (state.occupation != null && state.occupation.data != null && state.occupation.data!.isNotEmpty) {
    if (mounted) {
      setState(() {
        occupationBox; // This line doesn't have any effect
        displayedOccupations; // This line doesn't have any effect
      });
    }
  }
});



    // Fetch initial data
   BlocProvider.of<SearchOccupationBloc>(context).add(SearchOccupationEvent.searchOccupationList(searchQuery: ""));
  }

  void _showModal(context) {
    StreamSubscription<bool>? subscription;

    showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
      ),
      context: context,
      builder: (context) {
        // Create a new StreamController instance
        _updateStreamController = StreamController<bool>();

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
                          ),
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
                              onChanged: (searchTerm) {
                                _searchFromHive(searchTerm);
                                BlocProvider.of<SearchOccupationBloc>(context)
                                    .add(SearchOccupationEvent
                                        .searchOccupationList(
                                            searchQuery: searchTerm));
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
                                      setState(() {
                                        textController.clear();
                                        _searchFromHive('');
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    StreamBuilder<bool>(
                      stream: _updateStreamController?.stream,
                      builder: (context, snapshot) {
                        return Expanded(
                          child: ListView.separated(
                            controller: scrollController,
                            itemCount: displayedOccupations.length,
                            itemBuilder: (context, index) {
                              return InkWell(
                                child: showBottomSheetData(
                                    index, displayedOccupations),
                                onTap: () {
                                  if (newDisplayedOccupation.isNotEmpty &&
                                      index < newDisplayedOccupation.length) {
                                    final selectedBankName =
                                        newDisplayedOccupation[index];
                                    final selectedBankObject = occupationBox
                                        .values
                                        .firstWhere((occupation) =>
                                            occupation.name ==
                                            selectedBankName);

                                    textController.text =
                                        selectedBankObject.name;

                                    BlocProvider.of<SelectedOccupationBloc>(
                                            context)
                                        .add(
                                      SelectedOccupationEvent.selectedOccupation(selectedOccupation: selectedBankObject.id)
                                    );
                                  } else if (index <
                                      displayedOccupations.length) {
                                    final selectedBankName =
                                        displayedOccupations[index];
                                    final selectedBankObject = occupationBox
                                        .values
                                        .firstWhere((occupation) =>
                                            occupation.name ==
                                            selectedBankName);

                                    textController.text =
                                        selectedBankObject.name;

                                    BlocProvider.of<SelectedOccupationBloc>(
                                            context)
                                        .add(
                                      SelectedOccupationEvent.selectedOccupation(selectedOccupation: selectedBankObject.id)
                                    );
                                  }

                                  Navigator.of(context).pop();
                                },
                              );
                            },
                            separatorBuilder: (context, index) {
                              return const Divider();
                            },
                          ),
                        );
                      },
                    ),
                  ],
                );
              },
            );
          },
        );
      },
    );

    // Dispose the subscription when the modal is closed
    Navigator.of(context).popUntil((route) {
      subscription?.cancel();
      return true;
    });
  }

  void _searchFromHive(String searchTerm) {
    if (mounted) {
      _updateDisplayedBanks(searchTerm);
    }
  }

  void _updateDisplayedBanks(String searchTerm) {
    final List<String> updatedDisplayedBanks = occupationBox.values
        .where((occupation) =>
            occupation.name.toLowerCase().contains(searchTerm.toLowerCase()))
        .map((occupation) => occupation.name)
        .toList();

    if (!listEquals(displayedOccupations, updatedDisplayedBanks)) {
      // Only update the state if there are changes
      _updateStreamController?.add(true);
      setState(() {
        displayedOccupations = updatedDisplayedBanks;
        newDisplayedOccupation =
            updatedDisplayedBanks; // Update newDisplayedOccupation as well
      });
    }
  }

  Widget showBottomSheetData(int index, List<String> data) {
    final isFirstItem = index == 0;
    final isLastItem = index == data.length - 1;

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
            data[index],
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

  @override
  Widget build(BuildContext context) {
    final Devicewidth = MediaQuery.of(context).size.width;
    return Center(
      child: BlocBuilder<SelectedOccupationBloc, SelectedOccupationState>(
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
