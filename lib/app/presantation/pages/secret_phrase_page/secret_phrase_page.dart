import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hd_wallet/app/presantation/pages/enter_secret_phrase_page/enter_secret_phrase_page.dart';
import 'package:hd_wallet/app/presantation/pages/public_widgets/success_dialog.dart';
import 'package:hd_wallet/app/presantation/routes/app_routes.dart';
import 'package:hd_wallet/app/presantation/theme/themes.dart';

class SecretPhrasePage extends StatefulWidget {
  const SecretPhrasePage({Key? key}) : super(key: key);

  @override
  State<SecretPhrasePage> createState() => _SecretPhrasePageState();
}

class _SecretPhrasePageState extends State<SecretPhrasePage> {
  List<String> mnemonic = [
    "qadaq",
    "qwdqwd",
    "fqwde",
    "ddvse",
    "sdwfq",
    "dfqww",
    "thteq",
    "voepi",
    "wdwk",
    "eqowf",
    "fkeofk",
    "vgefk"
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
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
                    )),
              ],
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Text(
                    "Your Secret Phrase",
                    style: Themes.dark.textTheme.headline1,
                  ),
                  Container(
                    child: Text(
                      "Write down or copy these words in the right order and save them somewhere safe.",
                      style: Themes.dark.textTheme.subtitle1,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    width: size.width * 0.75,
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      children: [
                        ...mnemonic.asMap().entries.map((e) => Container(
                              child: Row(
                                children: [
                                  Text((e.key + 1).toString()),
                                  Text(
                                    e.value,
                                    style: Themes.dark.textTheme.subtitle1,
                                  ),
                                ],
                              ),
                            ))
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Clipboard.setData(ClipboardData(text: "Copy"));
                      print("Copy");
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Copy",
                            style: TextStyle(
                                fontFamily: "OpenSans",
                                fontWeight: FontWeight.bold,
                                color: Color(0xffFFD60A),
                                fontSize: 24),
                          ),
                          Image.asset("assets/icons/copy.png"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                      child: Container(
                    margin: EdgeInsets.only(bottom: 10),
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffFF453A).withOpacity(0.1)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Do not expose your Secret Phrase",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontFamily: "OpenSans",
                              fontSize: 18,
                              color: Color(0xffFF453A)),
                        ),
                        Text(
                          "if someone has your Secret Phrase (12 words) they will have full access to your wallet.",
                          style: TextStyle(
                              fontFamily: "OpenSans",
                              fontWeight: FontWeight.normal,
                              color: Color(0xffFF453A)),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  )),
                  Row(
                    children: [
                      Expanded(
                          child: ElevatedButton(
                              onPressed: () {
                                Get.to(EnterSecretPhrasePage());
                              },
                              child: Text("Continue"))),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
