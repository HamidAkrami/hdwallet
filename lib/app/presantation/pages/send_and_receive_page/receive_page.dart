import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:hd_wallet/app/presantation/theme/themes.dart';
import 'package:qr_flutter/qr_flutter.dart';

class ReceivePage extends StatefulWidget {
  ReceivePage({
    required this.contract,
    Key? key,
  }) : super(key: key);
  String contract;
  @override
  State<ReceivePage> createState() => _ReceivePageState();
}

class _ReceivePageState extends State<ReceivePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.033),
      height: size.height * 0.8,
      decoration: BoxDecoration(
          color: IColor().DARK_BG_COLOR,
          borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                width: 50,
                height: 5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: IColor().DARK_TEXT_COLOR),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: Text(
                          "Cancel",
                          style: TextStyle(
                              fontSize: 18, color: IColor().DARK_PRIMARY_COLOR),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      "Receive ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18,
                          color: IColor().DARK_TEXT_COLOR,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(child: Container())
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              CustomPaint(
                foregroundPainter: BorderPainter(),
                child: Container(
                  padding: EdgeInsets.all(10),
                  height: 200,
                  width: 200,
                  child: QrImage(
                    data: widget.contract,
                    size: 250,
                    foregroundColor: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                    color: IColor().DARK_BUTTOM_COLOR.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15)),
                padding: EdgeInsets.all(10),
                child: Text(
                  widget.contract,
                  style: Themes.dark.textTheme.headline1,
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Row(
                        children: [
                          const Text(
                            "Copy",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xffFFD60A),
                                fontSize: 24),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Image.asset("assets/icons/copy.png")
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Row(
                        children: [
                          const Text(
                            "Paste",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xffFFD60A),
                                fontSize: 24),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Image.asset("assets/icons/paste.png")
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 10),
                padding: EdgeInsets.all(25),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: IColor().DARK_WARNING_COLOR.withOpacity(0.1)),
                child: Column(
                  children: [
                    Text(
                      "Send only Bitcoin (BTC) to this address.",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: IColor().DARK_WARNING_COLOR),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "sending any other coins may result in permanent loss.",
                      style: TextStyle(
                          fontSize: 13, color: IColor().DARK_WARNING_COLOR),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class BorderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double sh = size.height;
    double sw = size.width;
    double cornerSide = 40;

    Paint paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.butt;
    Path path = Path()
      ..moveTo(cornerSide, 0)
      ..quadraticBezierTo(0, 0, 0, cornerSide)
      ..moveTo(0, sh - cornerSide)
      ..quadraticBezierTo(0, sh, cornerSide, sh)
      ..moveTo(sw - cornerSide, sh)
      ..quadraticBezierTo(sw, sh, sw, sh - cornerSide)
      ..moveTo(sw, cornerSide)
      ..quadraticBezierTo(sw, 0, sw - cornerSide, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(BorderPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(BorderPainter oldDelegate) => false;
}
