import 'package:flutter/material.dart';
import 'package:hd_wallet/app/presantation/pages/intro_page/widget/page_view_item_widget.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';

class PageViewWidget extends StatefulWidget {
  const PageViewWidget({Key? key}) : super(key: key);

  @override
  State<PageViewWidget> createState() => _PageViewWidgetState();
}

class _PageViewWidgetState extends State<PageViewWidget> {
  PageController pageController = PageController();
  final curentPageNotifier = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView.builder(
            onPageChanged: (int index) => curentPageNotifier.value = index,
            controller: pageController,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return PageviewItemWidget(
                index: index,
              );
            },
            itemCount: 3,
          ),
        ),
        CirclePageIndicator(
          currentPageNotifier: curentPageNotifier,
          itemCount: 3,
          selectedDotColor: Color(0xffFFD60A),
          dotColor: Colors.white,
        )
      ],
    );
  }
}
