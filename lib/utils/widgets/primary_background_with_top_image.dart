import 'package:flutter/material.dart';
import 'package:goldidate/utils/utils_exporter.dart';

class PrimaryBackgroundWithTopImage extends StatelessWidget {
  const PrimaryBackgroundWithTopImage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            Common.assetsImages + "half_primary_round_half_primary.png",
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          top: -70,
          right: 0,
          left: 0,
          child: Image.asset(
            Common.assetsImages + "couple_groups.png",
          ),
        ),
      ],
    );
  }
}
