import 'dart:math';

import 'package:appointment_management/config/dimensions.dart';
import 'package:appointment_management/widgets/gap.dart';
import 'package:flutter/material.dart';

class BottomSheetLayout extends StatelessWidget {
  const BottomSheetLayout({
    Key? key,
    required this.children,
    required this.text,
  }) : super(key: key);

  final List<Widget> children;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Dimensions.screenPadding.copyWith(
        bottom: max(
          MediaQuery.of(context).viewInsets.bottom,
          Dimensions.screenPaddingValue,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            text,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          for (Widget child in children) ...[const DoubleGap(), child],
        ],
      ),
    );
  }
}
