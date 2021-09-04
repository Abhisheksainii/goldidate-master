import 'package:flutter/material.dart';
import 'package:goldidate/utils/utils_exporter.dart';

class LabelGuideCard extends StatelessWidget {

  LabelGuideCard({this.head,this.description});
  final String head;
  final String description;


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Text(
            head,
            style: TextStyle(
              color: AppColors.blackColor,
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
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
            horizontal: 8.0,
            vertical: 8.0,
          ),
          child: Text(
            description,
            style: TextStyle(
              height: 1.5,
              fontSize: 12.0,
              color: Colors.grey.shade600
            ),
          ),
        ),
      ],
    );
  }
}
