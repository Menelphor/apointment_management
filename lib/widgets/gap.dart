import 'package:flutter/material.dart';

class Gap extends StatelessWidget {
  const Gap({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox.square(dimension: 8);
  }
}

class DoubleGap extends StatelessWidget {
  const DoubleGap({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox.square(dimension: 16);
  }
}
