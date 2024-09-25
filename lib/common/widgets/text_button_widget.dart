import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({
    super.key,
    required this.onPressed,
    required this.text,
    this.width = double.infinity,
  });
  final void Function() onPressed;
  final String text;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: Theme.of(context).textTheme.labelSmall,
        ),
      ),
    );
  }
}
