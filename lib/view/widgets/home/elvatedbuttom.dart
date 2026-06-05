import 'package:flutter/material.dart';

import '../../../core/constans/constansappvalues.dart';

class FloatingUploadButton extends StatelessWidget {
  const FloatingUploadButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: AppConstans.purple,
      onPressed: () {},
      child: const Icon(Icons.upload),
    );
  }
}
