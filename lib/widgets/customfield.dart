import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  final String hintText;
  final Icon prefixicon;
  final Icon? sufixicon;
  final Color color;
  final double borderRadius;
  final bool fillColor;
  final double fontSize;
  final Color focusedBorderColor;
  final List<BoxShadow>? boxShadow;
  final bool obscureText;
  final VoidCallback? onSuffixIconPressed;

  const CustomField({
    required this.hintText,
    required this.prefixicon,
    this.sufixicon,
    required this.color,
    required this.borderRadius,
    required this.fillColor,
    required this.fontSize,
    required this.focusedBorderColor,
    this.boxShadow,
    this.obscureText = false,
    this.onSuffixIconPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: boxShadow,
      ),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: prefixicon,
          suffixIcon: sufixicon != null
              ? IconButton(
                  icon: sufixicon!,
                  onPressed: onSuffixIconPressed,
                )
              : null,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: BorderSide.none,
          ),
          filled: fillColor,
        ),
        style: TextStyle(fontSize: fontSize),
      ),
    );
  }
}
