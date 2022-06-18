import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hd_wallet/app/presantation/pages/enter_secret_phrase_page/widgets/secret_phrase_lenght.dart';
import 'package:hd_wallet/app/presantation/pages/public_widgets/secret_phrase_item_widget.dart';
import 'package:hd_wallet/app/presantation/theme/themes.dart';

class EnterSecretPhrasePage extends StatefulWidget {
  const EnterSecretPhrasePage({Key? key}) : super(key: key);

  @override
  State<EnterSecretPhrasePage> createState() => _EnterSecretPhrasePageState();
}

class _EnterSecretPhrasePageState extends State<EnterSecretPhrasePage> {
  int? index = 12;
  changeIndex(int value) {
    index = value;
    createMneonicTextField();
  }

  List<Widget> secretPhraseField = [];

  createMneonicTextField() {
    secretPhraseField.clear();
    for (var i = 0; i < index!; i++) {
      secretPhraseField.add(SecretPhraseItemWidget(
        index: i + 1,
      ));
    }
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    createMneonicTextField();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        child: Column(
          children: [
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
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Enter your Secret Phrase",
                style: Themes.dark.textTheme.headline1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                "Write down or paste your wallet Secret Phrase (12) words in the right order.",
                style: Themes.dark.textTheme.subtitle1,
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          changeIndex(12);
                        });
                      },
                      child: SecretPhraseLength(
                        lengthCOlor: index == 12 ? Colors.black : Colors.white,
                        length: 12,
                        fillColor:
                            index == 12 ? Colors.white : Colors.transparent,
                      )),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          changeIndex(16);
                        });
                      },
                      child: SecretPhraseLength(
                        lengthCOlor: index == 16 ? Colors.black : Colors.white,
                        length: 16,
                        fillColor:
                            index == 16 ? Colors.white : Colors.transparent,
                      )),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          changeIndex(24);
                        });
                      },
                      child: SecretPhraseLength(
                        length: 24,
                        lengthCOlor: index == 24 ? Colors.black : Colors.white,
                        fillColor:
                            index == 24 ? Colors.white : Colors.transparent,
                      )),
                ],
              ),
            ),
            Expanded(
                flex: 4,
                child: GridView.count(
                  childAspectRatio: 2.2,
                  crossAxisCount: 3,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 10,
                  children: [...secretPhraseField],
                )),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  print("paste");
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Paste",
                      style: TextStyle(
                          fontSize: 20, color: IColor().DARK_PRIMARY_COLOR),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset("assets/icons/paste.png")
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                    child: ElevatedButton(
                        onPressed: () {}, child: Text("Import"))),
              ],
            )
          ],
        ),
      ),
    );
  }
}
