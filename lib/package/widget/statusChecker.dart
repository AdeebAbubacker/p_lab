import 'package:flutter/material.dart';

class StatusChecker extends StatelessWidget {
  final bool isActive;
  final String Step;
  final String title;
  final String status;
  final statusColor;
  final Color activeStepColor;
  final Color inactiveStepColor;
  final Color activeTitleColor;
  final Color inactiveTitleColor;
  final Color activeTagColor;
  final Color inactiveTagColor;
  final Color activeTagTextColor;
  final Color inactiveTagTextColor;
  const StatusChecker({
    super.key,
    required this.status,
    this.statusColor,
    required this.Step,
    required this.title,
    required this.isActive,
    required this.activeStepColor,
    required this.inactiveStepColor,
    required this.activeTitleColor,
    required this.inactiveTitleColor,
    required this.activeTagColor,
    required this.inactiveTagColor,
    required this.activeTagTextColor,
    required this.inactiveTagTextColor,
  });

  @override
  Widget build(BuildContext context) {
    final stepColor = isActive ? activeStepColor : inactiveStepColor;
    final titleColor = isActive ? activeTitleColor : inactiveTitleColor;
    final tagBgColor = isActive ? activeTagColor : inactiveTagColor;
    final tagTextColor = isActive ? activeTagTextColor : inactiveTagTextColor;
    return SizedBox(
      width: 65,
      height: 56,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start, // Add this line
        children: [
          Text(
            Step,
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 10, color: stepColor),
          ),
          Text(
            title,
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: 11, fontWeight: FontWeight.w600, color: titleColor),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Container(
              width: 59,
              height: 20,
              decoration: BoxDecoration(
                  color: tagBgColor,
                  borderRadius: const BorderRadius.all(Radius.circular(3))),
              child: 
              Center(
                child: 
                
                Text(status,
                    style: TextStyle(color: tagTextColor, fontSize: 10),
                    textAlign: TextAlign.left),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
