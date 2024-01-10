import 'package:flutter/material.dart';

class ToggleBtn extends StatelessWidget {
  final activeIconBgColor;
  final inactiveIconBgColor;
  final activeIconColor;
  final inactiveIconColor;
  final bool isActive;
  final VoidCallback onToggle;
  // ignore: prefer_typing_uninitialized_variables
  final currentStep;
  const ToggleBtn(
      {super.key,
      required this.isActive,
      required this.onToggle,
      this.currentStep,
      this.activeIconBgColor = const Color(0xFF702DE3),
      this.inactiveIconBgColor = const Color.fromARGB(255, 184, 180, 180),
       this.activeIconColor = const Color(0xFF702DE3),
      this.inactiveIconColor = const Color.fromARGB(255, 184, 180, 180),
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35,
      height: 35,
      decoration: BoxDecoration(
          color: isActive
              ? activeIconBgColor
              : inactiveIconBgColor,
          borderRadius: const BorderRadius.all(Radius.circular(90))),
      child: Center(child: Icon(currentStep,color: isActive ? activeIconColor : inactiveIconColor,)),
    );
  }
}


