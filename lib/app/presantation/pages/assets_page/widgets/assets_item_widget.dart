import 'package:flutter/material.dart';
import 'package:hd_wallet/app/presantation/theme/themes.dart';

class AssetsItemWidget extends StatefulWidget {
  AssetsItemWidget({
    Key? key,
    this.imageIcon = "assets/images/Logo.png",
    this.price = "\$19.000.00",
    this.tokenName = "Bitcoin",
    this.asset2 = "${0.0001} BTC",
    this.asset = "\$64.02",
    this.hightPrice = "1D +5.51%",
    this.chart = "Chart",
    this.enabled = false,
  }) : super(key: key);
  String? imageIcon;
  String? tokenName;
  String? price;
  String? asset;
  String? asset2;
  String? hightPrice;
  String? chart;
  bool? enabled;

  @override
  State<AssetsItemWidget> createState() => _AssetsItemWidgetState();
}

class _AssetsItemWidgetState extends State<AssetsItemWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: IColor().DARK_BUTTOM_COLOR.withOpacity(0.1)),
      height: size.height * 0.11,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  alignment: Alignment.center,
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffF7931A)),
                  child: Image.asset(widget.imageIcon!),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 6),
                      child: Text(
                        widget.tokenName!,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 6),
                      child: Text(widget.price!),
                    )
                  ],
                ),
              ],
            ),
            Switch(
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
          ],
        ),
      ),
    );
  }
}
