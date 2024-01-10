import 'package:flutter/material.dart';

class BankMainLayout extends StatefulWidget {
  final Widget row;
  final Widget cardData;
  const BankMainLayout({
    required this.row,
    super.key,
    required this.cardData,
  });
  // ignore: prefer_typing_uninitialized_variables

  @override
  State<BankMainLayout> createState() => _BankMainLayoutState();
}

class _BankMainLayoutState extends State<BankMainLayout> {
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(
          height: 10,
        ),
        Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              // color: Colors.white,
              // boxShadow: const [
              //   BoxShadow(
              //     color: Color.fromRGBO(0, 0, 0, 0.16), // RGBA color
              //     offset: Offset(5, 8), // X and Y offset
              //     blurRadius: 15, // Blur radius (B)
              //     spreadRadius: 0, // Spread (S)
              //   ),
              // ],
            ),
            width: deviceWidth,
            height: 370,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                widget.cardData,
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: widget.row,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
