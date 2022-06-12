import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hd_wallet/app/presantation/pages/intro_page/widget/page_view_widget.dart';
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
          body: Stack(
            children: [
              SvgPicture.asset(
                "assets/images/Vector 2.svg",
                fit: BoxFit.cover,
              ),
              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(),
                    SizedBox(
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
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0),
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text("Create a new wallet"),
                                ),
                              ),
                            ),
                          ],
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "I already have a wallet",
                              style: Themes.dark.textTheme.subtitle2,
                            ))
                      ],
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
