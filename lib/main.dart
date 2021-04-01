import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marvapp/app/modules/login/bindings.dart';
import 'package:marvapp/app/modules/login/page.dart';
import 'package:marvapp/app/routes/app_pages.dart';
import 'package:marvapp/app/theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.LOGIN,
    initialBinding: LoginBinding(),
    home: LoginPage(),
    getPages: AppPages.pages,
    theme: appThemeData,
  ));
}
