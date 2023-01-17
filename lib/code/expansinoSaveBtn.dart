import 'package:flutter/material.dart';
import 'package:manfa_apps/code/colors.dart';

class expansionSaveBtn extends StatelessWidget {
  expansionSaveBtn(this.text, this.save);

  final String text;
  final bool save;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(4.0),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor:
                save == true ? ColorSelect.buttonColorText : Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(64),
                side: BorderSide(
                    color: save == true
                        ? Colors.transparent
                        : ColorSelect.buttonColorText)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              text,
              style: TextStyle(
                  color: save == true
                      ? Colors.white
                      : ColorSelect.buttonColorText),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
