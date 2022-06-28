import 'package:flutter/material.dart';
import 'package:hd_wallet/app/presantation/theme/themes.dart';

class SendAndReceiveItemWidget extends StatelessWidget {
  SendAndReceiveItemWidget({
    Key? key,
    this.imageIcon = "assets/images/Logo.png",
    this.price = "19.000.00",
    this.tokenName = "Bitcoin",
    this.asset2 = "${0.0001} BTC",
    this.asset = "\$64.02",
  }) : super(key: key);
  String? imageIcon;
  String? tokenName;
  String? price;
  String? asset;
  String? asset2;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: IColor().DARK_BUTTOM_COLOR.withOpacity(0.1)),
      height: size.height * 0.12,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
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
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Column(
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
                    ),
                  ],
                ),
                Text(
                  asset2!,
                  style: TextStyle(color: IColor().DARK_TEXT_COLOR),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
