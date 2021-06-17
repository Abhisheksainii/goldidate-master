import 'package:flutter/material.dart';
import 'package:goldidate/utils/utils_exporter.dart';

class PrimaryOutlineButton extends StatelessWidget {
  final String buttonText;
  final Function onPressed;
  final Widget leading;

  const PrimaryOutlineButton({
    Key key,
    @required this.buttonText,
    this.leading,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          border: Border.all(
            color: AppColors.goldColor,
          ),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 30.0,
          vertical: 15.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            leading ?? const SizedBox(),
            Text(
              buttonText.toUpperCase(),
              style: TextStyle(
                color: AppColors.goldColor,
                fontWeight: FontWeight.w600,
                fontSize: 16.0,
              ),
            ),
            const SizedBox(),
          ],
        ),
      ),
    );
  }
}
