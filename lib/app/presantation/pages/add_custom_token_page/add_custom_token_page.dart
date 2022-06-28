import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hd_wallet/app/presantation/pages/public_widgets/input_widget.dart';
import 'package:hd_wallet/app/presantation/theme/themes.dart';

class AddCustomTokenPage extends StatefulWidget {
  AddCustomTokenPage({
    Key? key,
  }) : super(key: key);

  @override
  State<AddCustomTokenPage> createState() => _AddCustomTokenPageState();
}

class _AddCustomTokenPageState extends State<AddCustomTokenPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.033),
      height: size.height * 0.9,
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
                      "Add Custom Token",
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
              InkWell(
                child: Container(
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.only(bottom: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: IColor().DARK_BUTTOM_COLOR.withOpacity(0.1)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Network",
                        style: TextStyle(fontSize: 18),
                      ),
                      Row(
                        children: [
                          Text(
                            "Bitcoin",
                            style: TextStyle(
                                color:
                                    IColor().DARK_TEXT_COLOR.withOpacity(0.5),
                                fontSize: 18),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: IColor().DARK_TEXT_COLOR.withOpacity(0.5),
                            size: 20,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: InputWidget(hint: "Contract Address"),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.only(left: 10),
                      padding: EdgeInsets.all(18),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: IColor().DARK_BUTTOM_COLOR.withOpacity(0.1)),
                      child: Image.asset("assets/icons/paste.png"),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.only(left: 10),
                      padding: EdgeInsets.all(18),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: IColor().DARK_BUTTOM_COLOR.withOpacity(0.1)),
                      child: Image.asset("assets/icons/scan.png"),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: InputWidget(hint: "Name"),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: InputWidget(hint: "Symbol"),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: InputWidget(hint: "Decimal"),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 10),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: IColor().DARK_BUTTOM_COLOR.withOpacity(0.1)),
                child: Column(
                  children: [
                    Text(
                      "Anyone can create a token",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "including fake versions of existing tokens. Learn about skams and security risks.",
                      style: TextStyle(fontSize: 13),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                      child: ElevatedButton(
                          onPressed: () {}, child: Text("Save"))),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
