import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hd_wallet/app/presantation/theme/themes.dart';

class SuccessDialog extends StatelessWidget {
  String? dialogAlert;
  SuccessDialog({required this.dialogAlert, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Container(
          height: size.height * 0.55,
          margin: EdgeInsets.all(25),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Color(0xff2C2C2E),
              borderRadius: BorderRadius.circular(12)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: Image.asset("assets/images/done.png")),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: 40, left: 15, right: 15),
                  child: Text(
                    dialogAlert!,
                    style: TextStyle(
                        fontFamily: "OpenSans",
                        fontWeight: FontWeight.normal,
                        fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                      child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Done",
                            style: TextStyle(
                                fontFamily: "OpenSans",
                                fontWeight: FontWeight.w700,
                                fontSize: 22),
                          ))),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
