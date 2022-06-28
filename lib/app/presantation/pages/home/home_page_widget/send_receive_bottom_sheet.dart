import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hd_wallet/app/presantation/pages/home/home_page_widget/send_and_receive_item_widget.dart';
import 'package:hd_wallet/app/presantation/theme/themes.dart';

class SendAndReceiveBottomSheet extends StatelessWidget {
  SendAndReceiveBottomSheet({Key? key, required this.title}) : super(key: key);
  String? title;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          color: IColor().DARK_BG_COLOR,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      alignment: Alignment.bottomCenter,
      height: size.height * 0.74,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            width: 50,
            height: 5,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: IColor().DARK_TEXT_COLOR),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
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
                            fontSize: 20, color: IColor().DARK_PRIMARY_COLOR),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    title!,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        color: IColor().DARK_TEXT_COLOR,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(child: Container())
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: IColor().DARK_BUTTOM_COLOR.withOpacity(0.1)),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 8, bottom: 8),
                  child: Icon(
                    Icons.search,
                    color: IColor().DARK_TEXT_COLOR,
                  ),
                ),
                Expanded(
                    child: TextField(
                  onSubmitted: (value) {},
                  textAlignVertical: TextAlignVertical.bottom,
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                      hintStyle: TextStyle(
                        fontSize: 18,
                        color: Colors.grey.withOpacity(0.6),
                      ),
                      fillColor: Colors.transparent,
                      hintText: "Search"),
                )),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 8),
              child: ListView.builder(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  itemCount: 10,
                  itemBuilder: (context, index) => SendAndReceiveItemWidget()),
            ),
          )
        ],
      ),
    );
  }
}
