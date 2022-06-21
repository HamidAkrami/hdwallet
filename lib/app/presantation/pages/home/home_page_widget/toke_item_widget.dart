import 'package:flutter/material.dart';
import 'package:hd_wallet/app/presantation/theme/themes.dart';

class TokenItemWidget extends StatelessWidget {
  TokenItemWidget({
    Key? key,
    this.imageIcon = "assets/images/Logo.png",
    this.price = "19.000.00",
    this.tokenName = "Bitcoin",
    this.asset2 = "${0.0001} BTC",
    this.asset = "\$64.02",
    this.hightPrice = "1D +5.51%",
    this.chart = "Chart",
  }) : super(key: key);
  String? imageIcon;
  String? tokenName;
  String? price;
  String? asset;
  String? asset2;
  String? hightPrice;
  String? chart;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: IColor().DARK_BUTTOM_COLOR.withOpacity(0.1)),
      height: size.height * 0.2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      alignment: Alignment.center,
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xffF7931A)),
                      child: Image.asset(imageIcon!),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 6),
                          child: Text(
                            tokenName!,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 6),
                          child: Text(price!),
                        )
                      ],
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(4),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: IColor().Dark_CHECK_COLOR.withOpacity(0.2),
                  ),
                  child: Text(
                    hightPrice!,
                    style: TextStyle(color: IColor().Dark_CHECK_COLOR),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                  ),
                  child: Column(
                    children: [
                      Text(asset2!),
                      Text(
                        asset!,
                        style: Themes.dark.textTheme.headline1,
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(4),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: IColor().Dark_CHECK_COLOR.withOpacity(0.2),
                  ),
                  child: Text(
                    chart!!,
                    style: TextStyle(color: IColor().Dark_CHECK_COLOR),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
