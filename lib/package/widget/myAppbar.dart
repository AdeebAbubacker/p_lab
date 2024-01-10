import 'package:panakj_app/core/colors/colors.dart';
import 'package:panakj_app/package/core/constants.dart';
import 'package:flutter/material.dart';


class myAppBar extends StatelessWidget {
  final String title;
  final Icon leadingIcon;
  final Icon trailingIcon;
  final bool isEmpty;
  const myAppBar({
    this.isEmpty = false,
    this.title = 'Pankaj Trust',
    this.leadingIcon = const Icon(
      Icons.search,
      color: KwhiteColor,
    ),
    super.key,
    this.trailingIcon = const Icon(
      Icons.notifications_none,
      color: KwhiteColor,
    ),
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: isEmpty ? const Text('') : leadingIcon,
      title: Text(
        isEmpty ? '' : title,
        style: whiteColor,
      ),
      backgroundColor: kvioletColor,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 17),
          child: isEmpty ? const Text('') : trailingIcon,
        ),
      ],
    );
  }
}


//for isempty true = no value
//for isempty fasle = pass values