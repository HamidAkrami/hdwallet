import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hd_wallet/app/presantation/pages/assets_page/assets_pages.dart';
import 'package:hd_wallet/app/presantation/pages/assets_page/widgets/assets_item_widget.dart';
import 'package:hd_wallet/app/presantation/pages/base_widget.dart';
import 'package:hd_wallet/app/presantation/pages/enter_secret_phrase_page/enter_secret_phrase_page.dart';
import 'package:hd_wallet/app/presantation/pages/home/home_page.dart';
import 'package:hd_wallet/app/presantation/pages/intro_page/widget/page_view_widget.dart';

import 'package:hd_wallet/app/presantation/routes/app_routes.dart';
import 'package:hd_wallet/app/presantation/theme/themes.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Get.isDarkMode
              ? Themes.dark.backgroundColor
              : Themes.light.backgroundColor,
          body: BaseWidget(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(),
                const SizedBox(
                  height: 400,
                  width: double.infinity,
                  child: PageViewWidget(),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: ElevatedButton(
                              onPressed: () {
                                Get.toNamed(AppRoutes.agreementPage);
                              },
                              child: Text("Create a new wallet"),
                            ),
                          ),
                        ),
                      ],
                    ),
                    TextButton(
                        onPressed: () {
                          Get.to(HomePage());
                        },
                        child: Text(
                          "I already have a wallet",
                          style: Themes.dark.textTheme.subtitle2,
                        ))
                  ],
                )
              ],
            ),
          )),
    );
  }
}
