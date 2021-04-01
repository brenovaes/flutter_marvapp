import 'package:flutter/material.dart';
import 'package:marvapp/app/theme/app_colors_theme.dart';

class LabelWithDivider extends StatelessWidget {
  final String labelName;

  LabelWithDivider({@required this.labelName});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                this.labelName,
                style: TextStyle(fontSize: 26),
              ),
            ),
            Divider(
              height: 2,
              thickness: 2,
              indent: 0,
              endIndent: 0,
              color: mainColor,
            ),
          ],
        ),
      ),
    );
  }
}
