import 'package:flutter/material.dart';
import 'package:hd_wallet/app/presantation/theme/themes.dart';

class SettingItemWidget extends StatefulWidget {
  SettingItemWidget(
      {Key? key, required this.imageIcon, required this.title, this.enabled})
      : super(key: key);
  String? imageIcon;
  String? title;
  bool? enabled;

  @override
  State<SettingItemWidget> createState() => _SettingItemWidgetState();
}

class _SettingItemWidgetState extends State<SettingItemWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
            color: IColor().DARK_BUTTOM_COLOR.withOpacity(0.1),
            borderRadius: BorderRadius.circular(15)),
        height: size.height * 0.11,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  alignment: Alignment.center,
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.transparent),
                  child: Image.asset(widget.imageIcon!),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    widget.title!,
                    style: TextStyle(
                        color: IColor().DARK_TEXT_COLOR, fontSize: 20),
                  ),
                )
              ],
            ),
            widget.enabled != null
                ? Switch(
                    activeTrackColor: IColor().Dark_CHECK_COLOR,
                    activeColor: IColor().DARK_TEXT_COLOR,
                    inactiveTrackColor: IColor().DARK_INPUT_COLOR,
                    inactiveThumbColor: IColor().DARK_TEXT_COLOR,
                    value: widget.enabled!,
                    onChanged: (value) {
                      setState(() {
                        widget.enabled = value;
                      });
                    })
                : Container()
          ],
        ));
  }
}
