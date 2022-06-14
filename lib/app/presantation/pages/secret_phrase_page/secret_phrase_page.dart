import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
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
                child: Text(
              "Your Secret Phrase",
              style: Themes.dark.textTheme.headline1,
            )),
            Expanded(
                child: Container(
              child: Text(
                "Write down or copy these words in the right order and save them somewhere safe.",
                style: Themes.dark.textTheme.subtitle1,
                textAlign: TextAlign.center,
              ),
            )),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.white)),
              width: size.width * 0.75,
              child: Wrap(),
            )),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: TextButton(
                  onPressed: () {
                    Clipboard.setData(ClipboardData(text: "Copy"));
                  },
                  child: Text(
                    "Copy",
                  )),
            )
          ],
        ),
      ),
    );
  }
}
