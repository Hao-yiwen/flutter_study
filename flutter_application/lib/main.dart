import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/routes/AuthBinding.dart';
import 'package:flutter_application/routes/routes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';

late List<CameraDescription> cameras;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  AuthBinding().dependencies();
  runApp(GetMaterialApp.router(
    theme: ThemeData(
      // Define the default brightness and colors.
      // brightness: Brightness.dark,
      primaryColor: Colors.blue,

      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: Colors.grey, // 使用预定义的 MaterialColor
      ).copyWith(
        primary: Colors.black, // 设置自定义的 primary 颜色
        secondary: Colors.pink, // 设置自定义的 secondary 颜色
      ),

      // Define the default font family.
      fontFamily: 'Georgia',

      // Define the default `TextTheme`. Use this to specify the default
      // text styling for headlines, titles, bodies of text, and more.
      textTheme: const TextTheme(
        displayLarge: TextStyle(fontSize: 72, fontWeight: FontWeight.bold),
        titleLarge: TextStyle(fontSize: 36, fontStyle: FontStyle.italic),
        bodyMedium: TextStyle(fontSize: 14, fontFamily: 'Hind'),
      ),
    ),
    routerDelegate: router.routerDelegate,
    routeInformationParser: router.routeInformationParser,
    routeInformationProvider: router.routeInformationProvider,
    localizationsDelegates: AppLocalizations.localizationsDelegates,
    supportedLocales: AppLocalizations.supportedLocales,
  ));
}
