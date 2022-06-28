import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hd_wallet/app/presantation/pages/currency_page/widgets/currensy_item_widget.dart';

import '../../theme/themes.dart';

class CurrencyPage extends StatefulWidget {
  CurrencyPage({
    Key? key,
  }) : super(key: key);

  @override
  State<CurrencyPage> createState() => _CurrencyPageState();
}

class _CurrencyPageState extends State<CurrencyPage> {
  int? selectedCurrency = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          color: IColor().DARK_BG_COLOR,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      alignment: Alignment.bottomCenter,
      height: size.height * 0.7,
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
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: Text(
                        "Back",
                        style: TextStyle(
                            fontSize: 20, color: IColor().DARK_PRIMARY_COLOR),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    "Currency",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        color: IColor().DARK_TEXT_COLOR,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(child: Container())
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
                  padding: const EdgeInsets.only(top: 8.0, left: 8, bottom: 8),
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
              child: ListView(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                children: [
                  InkWell(
                      onTap: () {
                        setState(() {
                          selectedCurrency = 0;
                        });
                      },
                      child: CurrencyItemWIdget(
                        title: "USD",
                        symbol: ". US Dollar",
                        selectedCurrency: selectedCurrency,
                        index: 0,
                      )),
                  InkWell(
                      onTap: () {
                        setState(() {
                          selectedCurrency = 1;
                        });
                      },
                      child: CurrencyItemWIdget(
                        selectedCurrency: selectedCurrency,
                        title: "EUR",
                        symbol: ". Euro",
                        index: 1,
                      )),
                  InkWell(
                      onTap: () {
                        setState(() {
                          selectedCurrency = 2;
                        });
                      },
                      child: CurrencyItemWIdget(
                        selectedCurrency: selectedCurrency,
                        title: "BTC",
                        symbol: ". Bitcoin",
                        index: 2,
                      )),
                  InkWell(
                      onTap: () {
                        setState(() {
                          selectedCurrency = 3;
                        });
                      },
                      child: CurrencyItemWIdget(
                        selectedCurrency: selectedCurrency,
                        title: "ETH",
                        symbol: ". Ethereum",
                        index: 3,
                      )),
                  InkWell(
                      onTap: () {
                        setState(() {
                          selectedCurrency = 4;
                        });
                      },
                      child: CurrencyItemWIdget(
                        selectedCurrency: selectedCurrency,
                        title: "BNB",
                        symbol: ". BNB Beacon Chain",
                        index: 4,
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
