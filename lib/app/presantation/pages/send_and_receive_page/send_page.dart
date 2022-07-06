import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hd_wallet/app/presantation/pages/public_widgets/input_widget.dart';
import 'package:hd_wallet/app/presantation/theme/themes.dart';

class SendPage extends StatefulWidget {
  SendPage({
    Key? key,
  }) : super(key: key);

  @override
  State<SendPage> createState() => _SendPageState();
}

class _SendPageState extends State<SendPage> {
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
                      "Send ",
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
                    child: InputWidget(hint: "Recipient Address"),
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
              SizedBox(
                height: 70,
                child: Row(
                  children: [
                    Expanded(
                      child: InputWidget(hint: "Amount"),
                    ),
                    Column(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(left: 10),
                              padding: EdgeInsets.symmetric(horizontal: 12),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: IColor()
                                      .DARK_BUTTOM_COLOR
                                      .withOpacity(0.1)),
                              child: Text(
                                "MAX",
                                style: TextStyle(
                                    color: IColor().DARK_PRIMARY_COLOR,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
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
                      "You can’t undo this transfer",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "if you mistakenly send your crypto to wrong address, you will lost your funds.",
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
                          onPressed: () {}, child: Text("Send"))),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
