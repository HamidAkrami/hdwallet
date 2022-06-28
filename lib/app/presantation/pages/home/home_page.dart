import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hd_wallet/app/data/models/coin_model.dart';
import 'package:hd_wallet/app/presantation/pages/assets_page/assets_pages.dart';
import 'package:hd_wallet/app/presantation/pages/coin_page/coin_page.dart';
import 'package:hd_wallet/app/presantation/pages/currency_page/currency_page.dart';
import 'package:hd_wallet/app/presantation/pages/home/home_page_widget/send_receive_bottom_sheet.dart';
import 'package:hd_wallet/app/presantation/pages/home/home_page_widget/token_item_widget.dart';
import 'package:hd_wallet/app/presantation/pages/setting/setting_page.dart';
import 'package:hd_wallet/app/presantation/pages/settings/settings_page.dart';
import 'package:hd_wallet/app/presantation/theme/themes.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool search = false;
  int? coinIndex;
  startSendOrRecievePage(title) {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return SendAndReceiveBottomSheet(
            title: title,
          );
        });
  }

  showSetting() {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return SettingsPage();
        });
  }

  showCoinPage() {
    CoinModel coin = CoinModel(
        name: "BitCoin",
        imageUrl: "assets/images/Logo.png",
        usd24hChange: 98.51,
        usd: 21000);
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return CoinPage(
            coin: coin,
          );
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
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            showSetting();
                          },
                          icon: Image.asset("assets/icons/setting.png")),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              search = true;
                            });
                          },
                          icon: Image.asset("assets/icons/search.png"))
                    ],
                  ),
                ),
                Text(
                  "\$352.02",
                  style: Themes.dark.textTheme.headline3,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          InkWell(
                            onTap: () {
                              startSendOrRecievePage("Receive");
                              print("Receive");
                            },
                            child: Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: IColor()
                                      .DARK_BUTTOM_COLOR
                                      .withOpacity(0.1)),
                              child: Icon(
                                Icons.arrow_downward,
                                size: 50,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 11),
                            child: Text(
                              "Receive",
                              style: Themes.dark.textTheme.bodyText1,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          InkWell(
                            onTap: () {
                              startSendOrRecievePage("Send");
                              print("Send");
                            },
                            child: Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: IColor()
                                      .DARK_BUTTOM_COLOR
                                      .withOpacity(0.1)),
                              child: Icon(
                                Icons.arrow_upward,
                                size: 50,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 11),
                            child: Text(
                              "Send",
                              style: Themes.dark.textTheme.bodyText1,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
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
                height: size.height * 0.57,
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
                              Get.to(AssetPage());
                            },
                            child: Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: IColor()
                                      .DARK_PRIMARY_COLOR
                                      .withOpacity(0.2)),
                              child: Text(
                                "+ Add Asset",
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
                    search
                        ? Container(
                            margin: EdgeInsets.all(10),
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: IColor()
                                    .DARK_BUTTOM_COLOR
                                    .withOpacity(0.1)),
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
                                  onSubmitted: (value) {
                                    search = false;
                                  },
                                  autofocus: true,
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
                          )
                        : Container(),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(top: 8),
                        child: ListView.builder(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            itemCount: 10,
                            itemBuilder: (context, index) => InkWell(
                                onTap: () {
                                  showCoinPage();
                                },
                                child: TokenItemWidget())),
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










// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     return Scaffold(
//         body: CustomScrollView(
//       slivers: [
//         SliverAppBar(
//           automaticallyImplyLeading: false,
//           backgroundColor: Colors.blue,
//           expandedHeight: 200,
//           floating: true,
//           pinned: true,
//           flexibleSpace: FlexibleSpaceBar(
//             title: Text(
//               "\$352.02",
//               style: Themes.dark.textTheme.headline3,
//             ),
//             centerTitle: true,
//             background: Container(
//               alignment: Alignment.center,
//               color: Colors.green,
//               child: Text(
//                 "sadawsd",
//                 style: TextStyle(fontSize: 25),
//               ),
//             ),
//           ),
//           leading: IconButton(
//               onPressed: () {}, icon: Image.asset("assets/icons/setting.png")),
//           actions: [
//             IconButton(
//                 onPressed: () {}, icon: Image.asset("assets/icons/search.png")),
//           ],
//         ),
//         SliverToBoxAdapter(
//             child: SingleChildScrollView(
//                 child: Container(
//           color: Colors.red,
//           height: 700,
//         )))
//       ],
//     ));
//   }
// }
