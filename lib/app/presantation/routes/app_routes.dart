import 'package:hd_wallet/app/presantation/bindings/login_page_binding.dart';
import 'package:hd_wallet/app/presantation/bindings/main_binding.dart';
import 'package:hd_wallet/app/presantation/pages/agreement_page/agreement_page.dart';
import 'package:hd_wallet/app/presantation/pages/intro_page/intro_page.dart';
import 'package:hd_wallet/app/presantation/pages/login/login_page.dart';
import 'package:get/get.dart';
import 'package:hd_wallet/app/presantation/pages/secret_phrase_page/secret_phrase_page.dart';

import '../bindings/setting_page_binding.dart';
import '../pages/home/home_page.dart';
import '../pages/setting/setting_page.dart';

class AppRoutes {
  static const String introPage = "/introPage";
  static const String homePage = "/homePage";
  static const String settingPage = "/settingPage";
  static const String agreementPage = "/agreementPage";
  static const String secretPhrasePage = "/secretPhrasePage";
}

class App {
  static final pages = [
    GetPage(
      name: AppRoutes.introPage,
      page: () => IntroPage(),
    ),
    GetPage(
      name: AppRoutes.homePage,
      page: () => const HomePage(),
    ),
    GetPage(
        name: AppRoutes.settingPage,
        page: () => const SettingPage(),
        bindings: [MainBinding(), SettingPageBinding()]),
    GetPage(
      name: AppRoutes.agreementPage,
      page: () => const AgreementPage(),
    ),
    GetPage(
        name: AppRoutes.secretPhrasePage, page: () => const SecretPhrasePage())
  ];
}
