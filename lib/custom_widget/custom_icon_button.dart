import 'package:find_me_flutter_app/constants/color_palettes.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final Color? decorationColor, borderColor, textColor;
  final Function()? onPressed;
  final Widget ? buttonImage;
  final double? buttonRadius;
  final double? buttonHeight;
  final double? buttonWidth;
  const CustomIconButton({Key? key, this.decorationColor, this.borderColor, this.textColor, @required this.onPressed, this.buttonImage, this.buttonRadius, this.buttonHeight, this.buttonWidth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: buttonHeight ?? 48,
      width: buttonWidth ?? double.maxFinite,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: AppTheme.grey.withOpacity(0.5),
            spreadRadius: .5,
            blurRadius: 2,
            offset: Offset(1, 2),
          ),
        ],
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
              child: buttonImage,
            ),
          ),
        ),
      ),
    );
  }
}