import 'package:flutter/material.dart';
import 'package:marvapp/app/theme/app_colors_theme.dart';

class CustomButtonWidget extends Container {
  final Widget buttonContent;
  final VoidCallback callback;
  CustomButtonWidget({
    @required this.buttonContent,
    this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 0.5,
      height: 50,
      child: RaisedButton(
          autofocus: false,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          onPressed: this.callback,
          child: buttonContent,
          color: mainColor),
    );
  }
}
