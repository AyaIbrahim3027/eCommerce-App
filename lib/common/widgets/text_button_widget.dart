import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({
    super.key,
    required this.onPressed,
    required this.text,
    this.width = double.infinity,
    this.textStyle,
  });
  final void Function() onPressed;
  final String text;
  final double width;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: textStyle ?? Theme.of(context).textTheme.labelSmall,
        ),
      ),
    );
  }
}
