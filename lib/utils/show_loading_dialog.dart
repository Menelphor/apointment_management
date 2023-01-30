import 'package:appointment_management/config/dimensions.dart';
import 'package:flutter/material.dart';

Future<dynamic> showLoadingDialog(BuildContext context) {
  return showDialog(
    context: context,
    barrierDismissible: false,
    builder: (_) => Dialog(
      child: Container(
        padding: Dimensions.screenPadding,
        margin: Dimensions.screenPadding,
        height: 80,
        alignment: Alignment.center,
        child: const CircularProgressIndicator(),
      ),
    ),
  );
}

closeLoadingDialog(BuildContext context) => Navigator.of(context).popUntil(
      (route) => route is! DialogRoute,
    );
