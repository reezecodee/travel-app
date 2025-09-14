import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class CustomTextFormField extends StatelessWidget {
  final String label;
  final String placeholder;
  final bool isObscureText;
  final EdgeInsets margin;

  const CustomTextFormField({
    Key,
    key,
    required this.label,
    required this.placeholder,
    this.isObscureText = false,
    this.margin = EdgeInsets.zero,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label),
          SizedBox(height: 6),
          TextFormField(
            cursorColor: kBlackColor,
            obscureText: isObscureText,
            decoration: InputDecoration(
              hintText: placeholder,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
                borderSide: BorderSide(color: kPrimayColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
