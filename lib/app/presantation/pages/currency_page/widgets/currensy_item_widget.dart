import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:hd_wallet/app/presantation/theme/themes.dart';

class CurrencyItemWIdget extends StatefulWidget {
  CurrencyItemWIdget(
      {Key? key,
      required this.title,
      required this.symbol,
      required this.selectedCurrency,
      this.index})
      : super(key: key);

  String? title;
  String? symbol;
  int? selectedCurrency;
  int? index;

  @override
  State<CurrencyItemWIdget> createState() => _CurrencyItemWIdgetState();
}

class _CurrencyItemWIdgetState extends State<CurrencyItemWIdget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
            color: IColor().DARK_BUTTOM_COLOR.withOpacity(0.1),
            borderRadius: BorderRadius.circular(15)),
        height: size.height * 0.11,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    widget.title!,
                    style: TextStyle(
                        color: IColor().DARK_TEXT_COLOR, fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    widget.symbol!,
                  ),
                ),
              ],
            ),
            widget.selectedCurrency == widget.index
                ? Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Image.asset("assets/icons/mark.png"),
                  )
                : Container()
          ],
        ));
  }
}
