import 'package:flutter/material.dart';

import 'package:manfa_apps/widgets/colors.dart';

ScaffoldFeatureController<SnackBar, SnackBarClosedReason> snackBar1(
    BuildContext context) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        "none",
        style: TextStyle(color: ColorSelect.buttonColorText),
      ),
    ),
  );
}
