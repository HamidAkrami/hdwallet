import 'dart:ui';

import 'package:flutter/material.dart';

import '../../theme/themes.dart';

class SecretPhraseItemWidget extends StatefulWidget {
  String? title;
  int? index;
  SecretPhraseItemWidget({Key? key, this.title, this.index}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SecretPhraseItemWidgetState createState() => _SecretPhraseItemWidgetState();
}

class _SecretPhraseItemWidgetState extends State<SecretPhraseItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 4),
      decoration: BoxDecoration(
          border: Border.all(color: IColor().DARK_TEXT_COLOR.withOpacity(0.6)),
          borderRadius: BorderRadius.circular(11.0)),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Text(
                '${widget.index!}- ',
                style: TextStyle(
                  color: IColor().DARK_TEXT_COLOR.withOpacity(0.6),
                ),
                textAlign: TextAlign.right,
              ),
            ),
          ),
          Expanded(
            flex: 10,
            child: TextField(
              cursorColor: Colors.white,
              style: TextStyle(fontSize: 16, color: Colors.white),
              maxLines: 1,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent)),
                  fillColor: Colors.transparent,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
