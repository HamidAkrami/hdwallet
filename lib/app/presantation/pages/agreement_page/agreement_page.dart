import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'package:hd_wallet/app/presantation/pages/agreement_page/widget/rule_box_widget.dart';
import 'package:hd_wallet/app/presantation/routes/app_routes.dart';
import 'package:hd_wallet/app/presantation/theme/themes.dart';

class AgreementPage extends StatefulWidget {
  const AgreementPage({Key? key}) : super(key: key);

  @override
  State<AgreementPage> createState() => _AgreementPageState();
}

class _AgreementPageState extends State<AgreementPage> {
  bool? agree1 = false;
  bool? agree2 = false;
  bool? agree3 = false;
  bool? enableButton = false;
  checkRules() {
    if (agree1! && agree2! && agree3!) {
      enableButton = true;
    } else {
      enableButton = false;
    }

    setState(() {});
  }

  agreementRule1(bool value) {
    agree1 = value;
    checkRules();
  }

  agreementRule2(bool value) {
    agree2 = value;
    checkRules();
  }

  agreementRule3(bool value) {
    agree3 = value;
    checkRules();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Themes.dark.iconTheme.color,
                    ))
              ],
            ),
            Expanded(
              flex: 1,
              child: Text(
                "Backup your wallet now!",
                style: Themes.dark.textTheme.headline1,
              ),
            ),
            Expanded(
              flex: 2,
              child: Text(
                "In the next step you will see  Secret Phrase (12 words) that allows you to recover a wallet",
                style: Themes.dark.textTheme.subtitle1,
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(flex: 5, child: Image.asset("assets/images/intro2.png")),
            Expanded(
                flex: 6,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    children: [
                      Expanded(
                        child: RulesBoxWidget(
                            rule:
                                "if i loose my secret phrase, my funds will be lost forever.",
                            agree: agree1,
                            result: agreementRule1),
                      ),
                      Expanded(
                        child: RulesBoxWidget(
                          rule:
                              "if i expose or show my secret phrase to anybody, my funds can get stolen.",
                          agree: agree2,
                          result: agreementRule2,
                        ),
                      ),
                      Expanded(
                        child: RulesBoxWidget(
                          rule:
                              "it is my full responsibility to keep my secret phrase secure.",
                          agree: agree3,
                          result: agreementRule3,
                        ),
                      ),
                    ],
                  ),
                )),
            Row(
              children: [
                Expanded(
                    child: ElevatedButton(
                        onPressed: enableButton!
                            ? () {
                                Get.toNamed(AppRoutes.secretPhrasePage);
                              }
                            : null,
                        child: const Text("Continue")))
              ],
            )
          ],
        ),
      ),
    );
  }
}
