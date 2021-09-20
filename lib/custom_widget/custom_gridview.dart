
import 'package:find_me_flutter_app/constants/color_palettes.dart';
import 'package:flutter/material.dart';
class CustomGrid extends StatefulWidget {
  final Widget? child;
  void Function()? callBack;
  final Color? gridColor;
  final Color? shadowColor;
  final double? elevation;
  final double? height;
  final double? width;
  final double? borderRadius;
  final double? radius;
  CustomGrid({Key? key, this.child, this.callBack, this.gridColor, this.shadowColor, this.elevation, this.height, this.width, this.borderRadius, this.radius}) : super(key: key);

  @override
  _CustomGridState createState() => _CustomGridState();
}

class _CustomGridState extends State<CustomGrid> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.callBack,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(widget.borderRadius??0.0))),
        elevation: widget.elevation ?? 10,
        shadowColor: widget.shadowColor ?? AppTheme.black.withOpacity(0.3),
        child: Container(
          height: widget.height ?? MediaQuery.of(context).size.height/4,
          width: widget.width ?? MediaQuery.of(context).size.width /2.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(widget.radius ?? 0.0),
            color: widget.gridColor ?? AppTheme.white,
          ),

          child: Padding(
            padding: const EdgeInsets.only(left: 18.0, top: 30,),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                widget.child!
              ],
            ),
          ),
        ),
      ),
    );
  }
}
