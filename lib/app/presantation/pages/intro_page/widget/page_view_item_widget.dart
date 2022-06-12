import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hd_wallet/app/presantation/theme/themes.dart';

class PageviewItemWidget extends StatelessWidget {
  PageviewItemWidget({Key? key, this.index}) {
    selectItem(index);
  }
  int? index;
  String? title;
  String? details;
  String? imageAssetUrl;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              title!,
              style: Themes.dark.textTheme.headline1,
              textAlign: TextAlign.center,
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Expanded(flex: 2, child: SvgPicture.asset(imageAssetUrl!)),
        SizedBox(
          height: 30,
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            details!,
            style: Themes.dark.textTheme.subtitle1,
            textAlign: TextAlign.center,
          ),
        )),
      ],
    );
  }

  selectItem(index) {
    switch (index) {
      case 0:
        title = "The crypto wallet for everyone";
        imageAssetUrl = "assets/images/intro1.svg";
        details = "create new or import your wallet";

        break;
      case 1:
        title = "Privacy and Security";
        imageAssetUrl = "assets/images/intro2.svg";
        details = "private keys never leave your device";
        break;
      case 2:
        title = "Send & Receive instantly";
        imageAssetUrl = "assets/images/intro3.svg";
        details = "the fastest way to Send and Receive any crypto or token.";
        break;
      default:
    }
  }
}
