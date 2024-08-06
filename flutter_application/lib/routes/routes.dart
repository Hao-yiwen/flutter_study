import 'package:flutter/material.dart';
import 'package:flutter_application/pages/BoxDecorationPage.dart';
import 'package:flutter_application/pages/Camera.dart';
import 'package:flutter_application/pages/CupertinoButtonPage.dart';
import 'package:flutter_application/pages/DrawerPage.dart';
import 'package:flutter_application/pages/FontFamilyPage.dart';
import 'package:flutter_application/pages/FormPage.dart';
import 'package:flutter_application/pages/GesturePage.dart';
import 'package:flutter_application/pages/Get/GetXPage.dart';
import 'package:flutter_application/pages/GridPage.dart';
import 'package:flutter_application/pages/HttpPage.dart';
import 'package:flutter_application/pages/IconPage.dart';
import 'package:flutter_application/pages/LayoutPage.dart';
import 'package:flutter_application/pages/LifecyclePage.dart';
import 'package:flutter_application/pages/LocalizationPage.dart';
import 'package:flutter_application/pages/LottiePage.dart';
import 'package:flutter_application/pages/MyPluginPage.dart';
import 'package:flutter_application/pages/NavigationPage.dart';
import 'package:flutter_application/pages/PlatformPage.dart';
import 'package:flutter_application/pages/RandomWords.dart';
import 'package:flutter_application/pages/SharedPreferencesPage.dart';
import 'package:flutter_application/pages/ShoppingList.dart';
import 'package:flutter_application/pages/SqlitePage.dart';
import 'package:flutter_application/pages/SqlitePage2.dart';
import 'package:flutter_application/pages/TabBarPage.dart';
import 'package:flutter_application/pages/ThemePage.dart';
import 'package:flutter_application/pages/TimerTestPage.dart';
import 'package:flutter_application/pages/WebViewPage.dart';
import 'package:flutter_application/pages/guess/GuessGamePage.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_application/HomePage.dart';
import 'package:path/path.dart';

import '../pages/ExampleDismissable.dart';
import '../pages/ExampleInkWell.dart';
import '../pages/ExampleShader.dart';
import '../pages/InHeritedWidgetPage/InheritedTestPage.dart';
import '../pages/MediaQueryPage.dart';
import '../pages/MixState.dart';
import '../pages/SliverExample.dart';
import '../pages/SpacedItemsList.dart';
import '../pages/animated/FadeAppTestPage.dart';
import '../pages/animated/RotatingBoxPage.dart';
import '../pages/customPainter/MypainterPage.dart';
import '../pages/drag/ExampleDragAndDrop.dart';
import '../pages/form/FocusTextPage.dart';
import '../pages/form/TextController.dart';
import '../pages/form/ValidTextField.dart';
import '../pages/http/IsolateTestPage.dart';
import '../pages/lifeCycle/LifeCycleTestPage.dart';
import '../pages/parallax/ExampleParallax.dart';
import '../pages/renderobjectwidget/RedBoxPage.dart';

final GoRouter router = GoRouter(routes: <RouteBase>[
  GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'sqliteDemo',
          builder: (context, state) => SqlitePage(),
        ),
        GoRoute(
            path: 'TimerTestPage',
            builder: (context, state) => const TimerTestPage(
                  text: 'test',
                )),
        GoRoute(
            path: 'CameraPage',
            builder: (context, state) => const CameraPage()),
        GoRoute(
            path: 'LocalizationPage',
            builder: (context, state) => const LocalizationPage()),
        GoRoute(
            path: 'SharedPreferencesPage',
            builder: (context, state) => const SharedPreferencesPage()),
        GoRoute(
          path: 'LifecyclePage',
          builder: (context, state) => const LifecyclePage(),
        ),
        GoRoute(
            path: 'TabBarPage',
            builder: (context, state) => const TabBarPage()),
        GoRoute(
            path: 'DrawerPage',
            builder: (context, state) => const DrawerPage()),
        GoRoute(
            path: 'GesturePage',
            builder: (context, state) => const GesturePage()),
        GoRoute(
            path: 'HttpPage', builder: (context, state) => const HttpPage()),
        GoRoute(
            path: 'FormPage', builder: (context, state) => const FormPage()),
        GoRoute(
            path: 'PlatformPage',
            builder: (context, state) => const PlatformPage()),
        GoRoute(
          path: 'IconPage',
          builder: (context, state) => const IconPage(),
        ),
        GoRoute(
          path: 'BoxDecorationPage',
          builder: (context, state) => const BoxDecorationPage(),
        ),
        GoRoute(
            path: 'ShoppingList',
            builder: (context, state) => const ShoppingList(
                  products: [
                    Product(name: 'Eggs'),
                    Product(name: 'Flour'),
                    Product(name: 'Chocolate chips'),
                  ],
                )),
        GoRoute(
          path: 'LayoutPage',
          builder: (context, state) => const LayoutPage(),
        ),
        GoRoute(
            path: 'CupertinoButtonPage',
            builder: (context, state) {
              return const CupertinoButtonPage();
            }),
        GoRoute(
            path: 'ThemePage',
            builder: (context, state) {
              return const ThemePage(
                title: 'ThemePage',
              );
            }),
        GoRoute(
            path: 'Fontfamilypage',
            builder: (context, state) {
              return const Fontfamilypage();
            }),
        GoRoute(
          path: 'GridPage',
          builder: (context, state) => const GridPage(),
        ),
        GoRoute(
            path: 'MyPluginPage',
            builder: (context, state) => const MyPluginPage()),
        GoRoute(
            path: 'SqlitePage2', builder: (context, state) => SqlitePage2()),
        GoRoute(
            path: 'NavigationPage',
            builder: (context, state) => const NavigationPage()),
        GoRoute(
            path: 'GuessGamePage',
            builder: (context, state) {
              return const GuessGamePage(
                titles: 'GuessGamePage',
              );
            }),
        GoRoute(
            path: 'RandomWords',
            builder: (context, state) {
              return const RandomWords();
            }),
        GoRoute(
          path: 'Lottiepage',
          builder: (context, state) {
            return const Lottiepage();
          },
        ),
        GoRoute(
          path: 'GetXpage',
          builder: (context, state) {
            return const GetXpage();
          },
        ),
        GoRoute(
            path: 'WebViewPage',
            builder: (context, state) {
              return WebViewPage(
                url: 'https://www.google.com',
                title: 'WebViewPage',
              );
            }),
        GoRoute(
            path: 'Inheritedtestpage',
            builder: (context, state) {
              return const Inheritedtestpage();
            }),
        GoRoute(
            path: 'MypainterPage',
            builder: (context, state) {
              return MypainterPage();
            }),
        GoRoute(
            path: 'Lifecycletestpage',
            builder: (context, state) {
              return const Lifecycletestpage();
            }),
        GoRoute(
            path: 'FadeAppTestPage',
            builder: (context, state) {
              return const FadeAppTestPage(title: 'FadeAppTestPage');
            }),
        GoRoute(
            path: 'RedBoxPage',
            builder: (context, state) {
              return const RedBoxPage();
            }),
        GoRoute(
            path: 'RotatingBoxPage',
            builder: (context, state) {
              return const RotatingBoxPage();
            }),
        GoRoute(
            path: 'IsolateTestPage',
            builder: (context, state) {
              return IsolateTestPage();
            }),
        GoRoute(path: 'SpacedItemsList', builder: (context, state) {
          return const SpacedItemsList();
        }),
        GoRoute(path: 'SliverExample', builder: (context, state) {
          return const SliverExample();
        }),
        GoRoute(path: 'Exampleparallax', builder: (context, state){
          return const Exampleparallax();
        }),
        GoRoute(path: 'Mediaquerypage', builder: (context, state){
          return const Mediaquerypage();
        }),
        GoRoute(path: 'Exampleshader', builder: (context, state){
          return const Exampleshader();
        }),
        GoRoute(path: 'MixStateState', builder: (context, state){
          return const MixState();
        }),
        GoRoute(path: 'ExampleDragAndDrop', builder: (context, state){
          return const ExampleDragAndDrop();
        }),
        GoRoute(path: 'ExampleInkwell', builder: (context, state){
          return const ExampleInkwell();
        }),
        GoRoute(path: 'ExampleDismissable', builder: (context, state){
          return const ExampleDismissable();
        }),
        GoRoute(path: 'TextController', builder: (context, state){
          return const TextController();
        }),
        GoRoute(path: 'Focustextpage', builder: (context, state){
          return const Focustextpage();
        }),
        GoRoute(path: 'ValidTextfield', builder: (context, state){
          return const ValidTextfield();
        }),
      ]),
]);
