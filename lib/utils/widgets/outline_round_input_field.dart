import 'package:flutter/material.dart';
import 'package:goldidate/utils/utils_exporter.dart';

class OutlineRoundInputField extends StatefulWidget {
  final String hintText;
  final TextInputType textInputType;
  final TextEditingController textController;
  final String trailingIcon;
  final bool obscureDigits;
  final Color borderColor;

  const OutlineRoundInputField({
    Key key,
    @required this.hintText,
    this.textInputType = TextInputType.text,
    @required this.textController,
    this.trailingIcon,
    this.obscureDigits = false,
    this.borderColor = AppColors.goldColor,
  }) : super(key: key);

  @override
  _OutlineRoundInputFieldState createState() => _OutlineRoundInputFieldState();
}

class _OutlineRoundInputFieldState extends State<OutlineRoundInputField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20.0, 4.0, 5.0, 4.0),
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(
          color: widget.borderColor,
          width: 0.5,
        ),
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
      ),
      child: TextFormField(
        controller: widget.textController,
        keyboardType: widget.textInputType,
        obscureText: widget.obscureDigits,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          suffixIcon: widget.trailingIcon == null
              ? null
              : Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 15.0,
                  ),
                  child: Image.asset(
                    "${Common.assetsIcons + widget.trailingIcon}",
                    width: 1.0,
                    height: 1.0,
                  ),
                ),
          hintText: widget.hintText,
          hintStyle: TextStyle(
            color: widget.borderColor,
            fontSize: 15.0,
            letterSpacing: 0.7,
          ),
          border: InputBorder.none,
        ),
        style: TextStyle(
          color: AppColors.blackColor,
          fontWeight: FontWeight.w400,
        ),
        maxLines: 1,
      ),
    );
  }
}
