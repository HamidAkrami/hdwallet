import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hd_wallet/app/presantation/theme/themes.dart';

class RulesBoxWidget extends StatefulWidget {
  RulesBoxWidget(
      {required this.rule,
      required this.agree,
      required this.result,
      this.color = Colors.white,
      Key? key})
      : super(key: key);
  String? rule;
  bool? agree;
  ValueChanged<bool>? result;
  Color? color;

  @override
  State<RulesBoxWidget> createState() => _RulesBoxWidgetState();
}

class _RulesBoxWidgetState extends State<RulesBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          color: !widget.agree!
              ? widget.color!.withOpacity(0.1)
              : IColor().Dark_CHECK_COLOR.withOpacity(0.1)),
      padding: EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: Row(
        children: [
          Expanded(
              flex: 4,
              child: Text(
                widget.rule!,
                style: TextStyle(
                    fontFamily: "OpenSans",
                    color: !widget.agree!
                        ? widget.color
                        : IColor().Dark_CHECK_COLOR,
                    fontWeight: FontWeight.normal,
                    fontSize: 16),
              )),
          Expanded(
            flex: 1,
            child: Transform.scale(
              scale: 1.8,
              child: Checkbox(
                  side: BorderSide(
                      width: 0.5,
                      color: !widget.agree!
                          ? widget.color!
                          : IColor().Dark_CHECK_COLOR),
                  tristate: false,
                  activeColor: !widget.agree!
                      ? widget.color!
                      : IColor().Dark_CHECK_COLOR.withOpacity(0.1),
                  checkColor: IColor().Dark_CHECK_COLOR,
                  splashRadius: 10,
                  value: widget.agree,
                  onChanged: (value) {
                    setState(() {
                      widget.agree = value;
                      widget.result!(value!);
                    });
                  }),
            ),
          )
        ],
      ),
    );
  }
}
