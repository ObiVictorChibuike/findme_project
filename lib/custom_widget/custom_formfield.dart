import 'package:find_me_flutter_app/constants/color_palettes.dart';
import 'package:flutter/material.dart';

//Custom FormField
class CustomFormField extends StatelessWidget {
  final String? labelText;
  final Color? textColor;
  final Color? focusedBorderColor;
  final Color? enabledBorderColor;
  final Color? cursorColor;
  final String? Function(String?)? validator;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final double? cursorHeight;
  final double? height;
  final double? width;
  final TextEditingController? controller;
  final TextInputAction? textInputAction;
  const CustomFormField({Key? key, this.labelText, this.textColor, this.focusedBorderColor, this.enabledBorderColor, @required this.validator, this.cursorColor, this.prefixIcon, this.suffixIcon, this.keyboardType, this.textInputAction, this.cursorHeight, this.controller, this.height, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 45,
      width: width ?? double.infinity,
      decoration: BoxDecoration(
        color: AppTheme.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        controller: controller,
        textCapitalization: TextCapitalization.words,
        cursorHeight: cursorHeight ?? 22.0,
        textInputAction: TextInputAction.next,
        keyboardType: keyboardType,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                borderSide: BorderSide(color: enabledBorderColor ?? Colors.transparent, width: 0.7)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                borderSide: BorderSide(color: focusedBorderColor ?? Colors.transparent, width: 0.7)),
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            isDense: true,
            contentPadding: EdgeInsets.all(15),
            labelText: labelText,
            labelStyle:
            TextStyle(color: textColor ?? AppTheme.black, fontSize: 14, fontFamily: 'Poppins')),
        cursorColor: cursorColor ?? AppTheme.black,
        validator: validator,
      ),
    );
  }
}
//Password FormField
class CustomPasswordFormField extends StatefulWidget {
  final String? labelText;
  final Color? textColor;
  final Color? focusedBorderColor;
  final Color? enabledBorderColor;
  final Color? cursorColor;
  final String? Function(String?)? validator;
  final Widget? prefixIcon;
  final TextInputType? keyboardType;
  final double? cursorHeight;
  final TextEditingController? controller;
  final TextInputAction? textInputAction;
  const CustomPasswordFormField({Key? key, this.labelText, this.textColor, this.focusedBorderColor, this.enabledBorderColor, @required this.validator, this.cursorColor, this.prefixIcon, this.keyboardType, this.textInputAction, this.cursorHeight, this.controller}) : super(key: key);

  @override
  _CustomPasswordFormFieldState createState() => _CustomPasswordFormFieldState();
}

class _CustomPasswordFormFieldState extends State<CustomPasswordFormField> {
  bool isObscured = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppTheme.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        controller: widget.controller,
        textCapitalization: TextCapitalization.words,
        obscureText: isObscured,
        cursorHeight: widget.cursorHeight ?? 22.0,
        textInputAction: TextInputAction.next,
        keyboardType: widget.keyboardType,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                borderSide: BorderSide(color: widget.enabledBorderColor ?? Colors.transparent, width: 0.7)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                borderSide: BorderSide(color: widget.focusedBorderColor ?? Colors.transparent, width: 0.7)),
            prefixIcon: widget.prefixIcon,
            suffixIcon: IconButton(
              onPressed: (){
                setState(() {
                  isObscured = !isObscured;
                });
              },
              icon: Icon(
                isObscured ? Icons.visibility_off : Icons.visibility, size: 20, color: Colors.grey,),
            ),
            isDense: true,
            contentPadding: EdgeInsets.all(15),
            labelText: widget.labelText,
            labelStyle:
            TextStyle(color: widget.textColor ?? AppTheme.black, fontSize: 14, fontFamily: 'Poppins')),
        cursorColor: widget.cursorColor ?? AppTheme.black,
        validator: widget.validator,
      ),
    );
  }
}
