import 'package:flutter/material.dart';
import 'package:hd_wallet/app/presantation/pages/home/home_page_widget/toke_item_widget.dart';
import 'package:hd_wallet/app/presantation/theme/themes.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool search = false;

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
                          onPressed: () {},
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
                            onTap: () {},
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
                            itemBuilder: (context, index) => TokenItemWidget()),
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

class CustomSliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final double expandedHeight;
  final deviceSie;

  const CustomSliverAppBarDelegate(
      {required this.expandedHeight, this.deviceSie});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final size = deviceSie;
    final top = expandedHeight - shrinkOffset - size / 2;

    return Stack(
      fit: StackFit.expand,
      children: [
        buildAppBar(shrinkOffset),
        Positioned(
          top: 100,
          left: 20,
          right: 20,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: size * 0.2),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        print("Recevie");
                      },
                      child: Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          color: IColor().DARK_BUTTOM_COLOR.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(45),
                        ),
                        child: Icon(
                          Icons.arrow_downward,
                          size: 50,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        "Recevie",
                        style: Themes.dark.textTheme.bodyText1,
                      ),
                    )
                  ],
                ),
                InkWell(
                  onTap: () {
                    print("send");
                  },
                  child: Column(
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Color(0xffF2F2F7).withOpacity(0.1),
                          borderRadius: BorderRadius.circular(45),
                        ),
                        child: Icon(
                          Icons.arrow_upward,
                          size: 50,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          "Send",
                          style: Themes.dark.textTheme.bodyText1,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  double appear(double shrinkOffset) => shrinkOffset / expandedHeight;

  double disappear(double shrinkOffset) => 1 - shrinkOffset / expandedHeight;

  Widget buildAppBar(double shrinkOffset) => AppBar(
        automaticallyImplyLeading: false,
        leading: Image.asset("assets/icons/setting.png"),
        actions: [Image.asset("assets/icons/search.png")],
        title: Text(
          "\$352.0",
          style: Themes.dark.textTheme.headline3,
        ),
        centerTitle: true,
      );

  // Widget buildBackground(double shrinkOffset) => Opacity(
  //       opacity: disappear(shrinkOffset),
  //       child: Image.network(
  //         'https://source.unsplash.com/random?mono+dark',
  //         fit: BoxFit.cover,
  //       ),
  //     );

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight + 30;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
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
