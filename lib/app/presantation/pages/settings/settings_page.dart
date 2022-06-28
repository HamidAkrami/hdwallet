import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hd_wallet/app/presantation/pages/currency_page/currency_page.dart';
import 'package:hd_wallet/app/presantation/pages/home/home_page_widget/send_and_receive_item_widget.dart';
import 'package:hd_wallet/app/presantation/pages/settings/widget/setting_item_widget.dart';
import 'package:hd_wallet/app/presantation/theme/themes.dart';

class SettingsPage extends StatefulWidget {
  SettingsPage({
    Key? key,
  }) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool enabled = false;

  showCurrencySetting() {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return CurrencyPage();
        });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          color: IColor().DARK_BG_COLOR,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      alignment: Alignment.bottomCenter,
      height: size.height * 0.79,
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
                    "Settings",
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
          Expanded(
            child: Container(
              child: ListView(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                children: [
                  InkWell(
                    onTap: () {
                      showCurrencySetting();
                    },
                    child: SettingItemWidget(
                      imageIcon: "assets/icons/currency.png",
                      title: "Currency",
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: SettingItemWidget(
                      imageIcon: "assets/icons/notifications.png",
                      title: "Notifications",
                      enabled: enabled,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: SettingItemWidget(
                      imageIcon: "assets/icons/security.png",
                      title: "security",
                      enabled: enabled,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: SettingItemWidget(
                      imageIcon: "assets/icons/darkmode.png",
                      title: "Dark Mode",
                      enabled: enabled,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
