import 'package:flutter/material.dart';

class CustomTxtFormField extends StatelessWidget {
  final Function(String)? onChange;
  final String? hintText;
  final Widget? prefixIcon;
  final BorderRadius? borderRadius;
  final Color? colorBorder;
  final Color? colorEnabledBorder;
  final Color? colorFocusedBorder;

  CustomTxtFormField({
    this.onChange,
    this.hintText,
    this.prefixIcon,
    this.borderRadius,
    this.colorBorder,
    this.colorEnabledBorder,
    this.colorFocusedBorder,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(2),
      child: TextFormField(
        onChanged: onChange,
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: prefixIcon,
          enabledBorder: OutlineInputBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(4.0),
            borderSide: BorderSide(color: colorEnabledBorder ?? Colors.grey),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(4.0),
            borderSide: BorderSide(color: colorFocusedBorder ?? Colors.blue),
          ),
          border: OutlineInputBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(4.0),
            borderSide: BorderSide(color: colorBorder ?? Colors.grey),
          ),
        ),
      ),
    );
  }
}
