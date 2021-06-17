import 'package:flutter/material.dart';
import 'package:goldidate/utils/utils_exporter.dart';

class LabelGuideCard extends StatelessWidget {
  const LabelGuideCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Text(
            "Be yourself.",
            style: TextStyle(
              color: AppColors.blackColor,
              fontSize: 18.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(height: 15.0),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            border: Border.all(
              color: AppColors.greyColor,
              width: 0.5,
            ),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 15.0,
            vertical: 15.0,
          ),
          child: Text(
            "Upload only your own photos, age and bio that’s yours",
            style: TextStyle(
              height: 1.5,
              fontSize: 15.0,
            ),
          ),
        ),
      ],
    );
  }
}
