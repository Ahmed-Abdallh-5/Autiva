import 'package:flutter/material.dart';

class Forwardarrow extends StatelessWidget {
  const Forwardarrow({super.key, this.onPressed});

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onPressed, icon: Icon(Icons.arrow_forward_ios));
  }
}
