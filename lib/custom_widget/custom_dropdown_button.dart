import 'package:find_me_flutter_app/constants/color_palettes.dart';
import 'package:flutter/material.dart';

//Custom FormField
class CustomDropDownButton extends StatefulWidget {
  final Widget? hint;
  final List<DropdownMenuItem<dynamic>>? items;
  final dynamic value;
  final Widget? icon;
  void Function(dynamic)? onChanged;
  final Color? iconDisabledColor;
  final Widget? underline;
  final double? width;
  final double? height;
  CustomDropDownButton({Key? key, this.hint, @required this.items, this.value, this.icon, this.onChanged, this.iconDisabledColor, this.underline, this.width, this.height}) : super(key: key);

  @override
  _CustomDropDownButtonState createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? MediaQuery.of(context).size.width,
      height: widget.height ?? 45,
      decoration: BoxDecoration(
        color: AppTheme.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButton<dynamic>(
        hint: widget.hint,
        items: widget.items,
        value: widget.value,
        icon: widget.icon,
        elevation: 16,
        onChanged: widget.onChanged,
        iconSize: 24,
        iconDisabledColor: widget.iconDisabledColor,
        underline: widget.underline,
      ),
    );
  }
}