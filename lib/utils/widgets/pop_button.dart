import 'dart:io';

import 'package:flutter/material.dart';
import 'package:goldidate/utils/utils_exporter.dart';

class PopButton extends StatelessWidget {
  final Color iconColor;
  final double iconSize;
  final Function onPressed;

  const PopButton({
    Key key,
    this.iconColor = AppColors.whiteColor,
    this.iconSize = 26.0,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed ?? () => Navigator.pop(context),
      child: Icon(
        Platform.isAndroid
            ? Icons.arrow_back_sharp
            : Icons.arrow_back_ios_outlined,
        color: iconColor,
        size: iconSize,
      ),
    );
  }
}
