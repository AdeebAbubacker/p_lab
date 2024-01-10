import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:panakj_app/core/colors/colors.dart';
import 'package:panakj_app/core/constant/constants.dart';

class CustomBottomSheet extends StatefulWidget {
  final double bottomSheetheight;
  final String title;
  final String hintText;
 final List<String> listofData;
  const CustomBottomSheet(
      {Key? key,
      this.listofData= const [],
      required this.title,
      this.bottomSheetheight = 0.9,
      this.hintText = ''})
      : super(key: key);

  @override
  State<CustomBottomSheet> createState() => _customBottomSheetCopyState();
}

// ignore: camel_case_types
class _customBottomSheetCopyState extends State<CustomBottomSheet> {
  final List<String> emptyList = [];
  final TextEditingController textController = TextEditingController();
  bool visibilty = false;

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
                                    icon: const Icon(FontAwesomeIcons.eraser,
                                        size: 24,
                                        color:
                                            Color.fromARGB(255, 140, 138, 138)),
                                    color: const Color(0xFF1F91E7),
                                    onPressed: () {
                                      setState(
                                        () {
                                          textController.clear();
                                        },
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
                    Expanded(
                      child: ListView.separated(
                        controller: scrollController,
                        itemCount: (widget.listofData.isNotEmpty)
                            ? widget.listofData.length
                            : emptyList.length,
                        separatorBuilder: (context, index) {
                          return const Divider();
                        },
                        itemBuilder: (context, index) {
                          return InkWell(
                            child: (widget.listofData.isNotEmpty)
                                ? showBottomSheetData(index, widget.listofData)
                                : showBottomSheetData(index, emptyList),
                            onTap: () {
                              textController.text = widget.listofData[index];
                              // ignore: avoid_print
                              print(
                                  'Selected item in bottom sheet----------$index');
                              Navigator.of(context).pop();
                            },
                          );
                        },
                      ),
                    ),
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
    final deviceWidth = MediaQuery.of(context).size.width;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              visibilty
                  ? Stack(
                      children: [
                        Container(
                          width: deviceWidth * 0.69,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: const Color.fromARGB(255, 136, 133, 133),
                                width: 1.0,
                              ),
                              color: const Color.fromARGB(255, 255, 255, 255)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 14),
                            child: TextFormField(
                              style: kCardContentStyle,
                              readOnly: true,
                              maxLines: 1,
                              // controller: textController,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                suffixIcon: Padding(
                                  padding: EdgeInsets.only(right: 3.0),
                                  child: Icon(Icons.arrow_drop_down,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            // _showModal(context);
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 2.0),
                            child: SizedBox(
                              width: deviceWidth * 0.69,
                              height: 48,
                            ),
                          ),
                        ),
                      ],
                    )
                  : Stack(
                      children: [
                        Container(
                          width: deviceWidth * 0.69,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: const Color.fromARGB(255, 136, 133, 133),
                                width: 1.0,
                              ),
                              color: const Color.fromARGB(255, 255, 255, 255)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 14),
                            child: TextFormField(
                              style: kCardContentStyle,
                              readOnly: true,
                              maxLines: 1,
                              controller: textController,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                suffixIcon: Padding(
                                  padding: EdgeInsets.only(right: 3.0),
                                  child: Icon(Icons.arrow_drop_down,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            _showModal(context);
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 2.0),
                            child: SizedBox(
                              width: deviceWidth * 0.69,
                              height: 48,
                            ),
                          ),
                        ),
                      ],
                    ),
              visibilty
                  ? Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: SizedBox(
                        width: 50,
                        height: 50,
                        child: OutlinedButton(
                          onPressed: () {
                            setState(() {
                              visibilty = !visibilty;
                            });
                          },
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(9.0),
                            ),
                            side: const BorderSide(color: kvioletColor2),
                            backgroundColor: kvioletColor2,
                          ),
                          child: const Icon(
                            Icons.edit,
                            color: kwhitecolor,
                          ),
                        ),
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: SizedBox(
                        width: 50,
                        height: 50,
                        child: OutlinedButton(
                          onPressed: () {
                            setState(() {
                              visibilty = !visibilty;
                            });
                          },
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(9.0),
                            ),
                            side: const BorderSide(color: kvioletColor2),
                          ),
                          child: const Icon(
                            Icons.edit,
                            color: kvioletColor2,
                          ),
                        ),
                      ),
                    )
            ],
          ),
          visibilty
              ? Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: deviceWidth * 0.69,
                        child: TextFormField(
                          style: kCardContentStyle,
                          maxLines: 1,
                          controller: textController,
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.only(
                              top: 0,
                              bottom: 0,
                              left: 14,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(9),
                              ),
                            ),
                          ),
                        ),
                      ),
                      visibilty
                          ? Padding(
                              padding: const EdgeInsets.only(left: 11.0),
                              child: SizedBox(
                                width: 50,
                                height: 50,
                                child: OutlinedButton(
                                  onPressed: () {
                                    setState(() {
                                      visibilty = !visibilty;
                                    });
                                  },
                                  style: OutlinedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(9.0),
                                    ),
                                    side:
                                        const BorderSide(color: kvioletColor2),
                                  ),
                                  child: const Icon(
                                    Icons.save,
                                    color: kvioletColor2,
                                  ),
                                ),
                              ),
                            )
                          : Padding(
                              padding: const EdgeInsets.only(left: 14.0),
                              child: SizedBox(
                                width: 50,
                                height: 50,
                                child: OutlinedButton(
                                  onPressed: () {
                                    setState(() {
                                      visibilty = !visibilty;
                                    });
                                  },
                                  style: OutlinedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(9.0),
                                    ),
                                    side: const BorderSide(color: kredColor),
                                  ),
                                  child: const Icon(
                                    Icons.save,
                                    color: kredAccentColor,
                                  ),
                                ),
                              ),
                            ),
                    ],
                  ),
                )
              : const Text('')
        ],
      ),
    );
  }
}
