import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hd_wallet/app/presantation/pages/add_custom_token_page/add_custom_token_page.dart';
import 'package:hd_wallet/app/presantation/pages/assets_page/widgets/assets_item_widget.dart';
import 'package:hd_wallet/app/presantation/theme/themes.dart';

class AssetPage extends StatefulWidget {
  @override
  State<AssetPage> createState() => _AssetPageState();
}

class _AssetPageState extends State<AssetPage> {
  ShowAddCustomTokenPage() {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return AddCustomTokenPage();
        });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Image.asset("assets/icons/setting.png")),
                      Text(
                        "\$352.02",
                        style: Themes.dark.textTheme.headline1,
                      ),
                      IconButton(
                          onPressed: () {
                            setState(() {});
                          },
                          icon: Image.asset("assets/icons/search.png"))
                    ],
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                    color: IColor().DARK_BG_COLOR,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                alignment: Alignment.bottomCenter,
                height: size.height * 0.78,
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Assets",
                            style: TextStyle(
                                fontSize: 20, color: IColor().DARK_TEXT_COLOR),
                          ),
                          InkWell(
                            onTap: () {
                              ShowAddCustomTokenPage();
                            },
                            child: Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: IColor()
                                      .DARK_PRIMARY_COLOR
                                      .withOpacity(0.2)),
                              child: Text(
                                "+ Custom",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: IColor().DARK_PRIMARY_COLOR,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )
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
                            padding: const EdgeInsets.only(
                                top: 8.0, left: 8, bottom: 8),
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
                            itemBuilder: (context, index) =>
                                AssetsItemWidget()),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
