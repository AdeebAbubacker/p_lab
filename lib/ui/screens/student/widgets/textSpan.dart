import 'package:flutter/material.dart';
import 'package:panakj_app/core/colors/colors.dart';
import 'package:panakj_app/ui/screens/student/widgets/spacer_height.dart';


class Textspan extends StatelessWidget {
  const Textspan({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'Upcoming Step',
          style: TextStyle(
              fontSize: 16.0, color: kblackColor, fontWeight: FontWeight.bold),
        ),
        HeightSpacer(height: 9),
        Text(
          textAlign: TextAlign.justify,
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas fermentum ultrices sapien, vel pharetra velit tincidunt et. Sed eu augue vel urna posuere laoreet at at arcu. Suspendisse eget lorem eget lectus sodales luctus.',
          style: TextStyle(fontWeight: FontWeight.normal),
        ),
      ],
    );
  }
}
