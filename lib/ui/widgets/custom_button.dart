import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final double width;
  final EdgeInsets margin;
  final void Function() onPressed;

  const CustomButton({
    Key? key,
    required this.title,
    this.width = double.infinity,
    this.margin = EdgeInsets.zero,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 55,
      margin: margin,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: kPrimayColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: whiteTextStyle.copyWith(fontSize: 16, fontWeight: medium),
        ),
      ),
    );
  }
}
