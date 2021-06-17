import 'package:flutter/material.dart';
import 'package:goldidate/utils/utils_exporter.dart';

class DescriptiveSlideText extends StatelessWidget {
  final String descriptiveText;

  const DescriptiveSlideText({
    Key key,
    @required this.descriptiveText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      descriptiveText,
      style: TextStyle(
        color: AppColors.primaryColor,
        fontSize: 17.0,
        height: 1.5,
      ),
      textAlign: TextAlign.center,
    );
  }
}
