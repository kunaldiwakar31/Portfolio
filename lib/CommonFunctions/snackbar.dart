import 'package:flutter/material.dart';
import 'package:portfolio/TextsConstants.dart';

void showSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text("$message"),
      duration: const Duration(seconds: TextsConstants.SnackBarDuration),
    ),
  );
}