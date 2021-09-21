import 'package:find_me_flutter_app/constants/color_palettes.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color? decorationColor, borderColor, textColor;
  final Function()? onPressed;
  final String? buttonText;
  final double? buttonRadius;
  final double? buttonHeight;
  final double? buttonWidth;
  final double? textFontSize;
  const CustomButton({Key? key, this.decorationColor, this.borderColor, this.textColor, @required this.onPressed, this.buttonText, this.buttonRadius, this.buttonHeight, this.buttonWidth, this.textFontSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: buttonHeight ?? 48,
      width:  buttonWidth ?? double.maxFinite,
      decoration: BoxDecoration(
          color: decorationColor ?? AppTheme.white,
          borderRadius: BorderRadius.all(Radius.circular(buttonRadius ?? 24.0)),
          border: Border.all(color: borderColor ?? AppTheme.white)),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: Colors.white24,
          borderRadius:  BorderRadius.all(Radius.circular( buttonRadius?? 24.0)),
          onTap: onPressed,
          child: Padding(
            padding: const EdgeInsets.only(
                top: 12, bottom: 12, left: 18, right: 18),
            child: Center(
              child: Text(
                  buttonText?? '',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontFamily: 'Mulish',
                    fontWeight: FontWeight.w400,
                    fontSize: textFontSize ?? 15,
                    letterSpacing: 0.4,
                    height: 0.9,
                    color: textColor ?? AppTheme.white,
                  ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

