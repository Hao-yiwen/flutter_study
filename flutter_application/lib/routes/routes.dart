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
import 'package:flutter_application/pages/http/HttpHome.dart';
import 'package:flutter_application/pages/http/HttpPage.dart';
import 'package:flutter_application/pages/IconPage.dart';
import 'package:flutter_application/pages/LayoutPage.dart';
import 'package:flutter_application/pages/LifecyclePage.dart';
import 'package:flutter_application/pages/LocalizationPage.dart';
import 'package:flutter_application/pages/LottiePage.dart';
import 'package:flutter_application/pages/native/MyPluginPage.dart';
import 'package:flutter_application/pages/NavigationPage.dart';
import 'package:flutter_application/pages/PlatformPage.dart';
import 'package:flutter_application/pages/RandomWords.dart';
import 'package:flutter_application/pages/SharedPreferencesPage.dart';
import 'package:flutter_application/pages/ShoppingList.dart';
import 'package:flutter_application/pages/sqlite/SqlitePage.dart';
import 'package:flutter_application/pages/sqlite/SqlitePage2.dart';
import 'package:flutter_application/pages/TabBarPage.dart';
import 'package:flutter_application/pages/ThemePage.dart';
import 'package:flutter_application/pages/TimerTestPage.dart';
import 'package:flutter_application/pages/WebViewPage.dart';
import 'package:flutter_application/pages/base/model/PostData.dart';
import 'package:flutter_application/pages/guess/GuessGamePage.dart';
import 'package:flutter_application/pages/shopper/cart.dart';
import 'package:flutter_application/pages/shopper/catalog.dart';
import 'package:flutter_application/pages/shopper/login.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_application/HomePage.dart';
import 'package:path/path.dart';

import '../pages/ExampleDismissable.dart';
import '../pages/ExampleInkWell.dart';
import '../pages/ExampleShader.dart';
import '../pages/InHeritedWidgetPage/InheritedTestPage.dart';
import '../pages/base/MediaQueryPage.dart';
import '../pages/MixState.dart';
import '../pages/SliverExample.dart';
import '../pages/SpacedItemsList.dart';
import '../pages/animated/AnimatedContainerPage.dart';
import '../pages/animated/AnimatedHome.dart';
import '../pages/animated/AnimatedOpacityPage.dart';
import '../pages/animated/FadeAppTestPage.dart';
import '../pages/animated/PhysicsCardDragDemo.dart';
import '../pages/animated/RotatingBoxPage.dart';
import '../pages/animated/hero/HeroFirstPage.dart';
import '../pages/animated/hero/HeroTwoPage.dart';
import '../pages/animated/router_transition/TransitionPage1.dart';
import '../pages/animated/router_transition/TransitionPage2.dart';
import '../pages/base/BaseHome.dart';
import '../pages/base/GoRouterExtraData.dart';
import '../pages/base/ImagePlaceholder.dart';
import '../pages/base/SvgTransformPage.dart';
import '../pages/base/VideoPlayerScreen.dart';
import '../pages/customPainter/MypainterPage.dart';
import '../pages/drag/ExampleDragAndDrop.dart';
import '../pages/form/FocusTextPage.dart';
import '../pages/form/TextController.dart';
import '../pages/form/ValidTextField.dart';
import '../pages/http/HttpAlbumPage.dart';
import '../pages/http/IsolateTestPage.dart';
import '../pages/http/JsonSerialTestPage.dart';
import '../pages/http/WebsocketTestPage.dart';
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
            path: 'BaseHome',
            builder: (context, state) {
              return const BaseHome();
            },
            routes: [
              GoRoute(
                  path: 'ImagePlaceholder',
                  builder: (context, state) {
                    return const ImagePlaceholder();
                  }),
              GoRoute(
                  path: 'VideoPlayerScreen',
                  builder: (context, state) {
                    return const VideoPlayerScreen();
                  }),
              GoRoute(
                  path: 'SvgTransformPage',
                  builder: (context, state) {
                    return const SvgTransformPage();
                  }),
              GoRoute(
                  path: 'GoRouterExtradata',
                  builder: (context, state) {
                    final data = state.extra as PostData;
                    return GoRouterExtradata(
                      title: data.title,
                      url: data.url,
                    );
                  }),
            ]),
        GoRoute(
            path: 'AnimatedHome',
            builder: (context, state) {
              return const AnimatedHome();
            },
            routes: [
              GoRoute(
                  path: 'RotatingBoxPage',
                  builder: (context, state) {
                    return const RotatingBoxPage();
                  }),
              GoRoute(
                  path: 'FadeAppTestPage',
                  builder: (context, state) {
                    return const FadeAppTestPage(title: 'FadeAppTestPage');
                  }),
              GoRoute(
                  path: 'AnimatedContainerPage',
                  builder: (context, state) {
                    return const AnimatedContainerPage();
                  }),
              GoRoute(
                  path: 'AnimatedOpacityPage',
                  builder: (context, state) {
                    return const AnimatedOpacityPage();
                  }),
              GoRoute(
                  path: 'AnimatedOpacityPage',
                  builder: (context, state) {
                    return const AnimatedOpacityPage();
                  }),
              GoRoute(
                path: 'AnimatedOpacityPage',
                builder: (context, state) {
                  return const AnimatedOpacityPage();
                },
              ),
              GoRoute(
                  path: 'HeroFirstPage',
                  builder: (context, state) => HeroFirstPage(),
                  routes: [
                    GoRoute(
                      path: 'HeroTwoPage',
                      builder: (context, state) => HeroTwoPage(),
                    ),
                  ]),
              GoRoute(
                  path: 'TransitionPage1',
                  builder: (context, state) => TransitionPage1(),
                  routes: [
                    GoRoute(
                        path: 'TransitionPage2',
                        pageBuilder: (context, state) {
                          return CustomTransitionPage(
                              child: TransitionPage2(),
                              transitionsBuilder: (context, animation,
                                  secondaryAnimation, child) {
                                const begin = Offset(0.0, 1.0);
                                const end = Offset.zero;
                                const curve = Curves.ease;

                                var tween = Tween(begin: begin, end: end)
                                    .chain(CurveTween(curve: curve));
                                var offsetAnimation = animation.drive(tween);

                                return SlideTransition(
                                  position: offsetAnimation,
                                  child: child,
                                );
                              });
                        }),
                  ]),
              GoRoute(
                  path: 'PhysicsCardDragDemo',
                  builder: (context, state) {
                    return const PhysicsCardDragDemo();
                  }),
            ]),
        GoRoute(
            path: 'login',
            builder: (context, state) {
              return MyLogin();
            }),
        GoRoute(
            path: 'http',
            builder: (context, state) {
              return HttpHome();
            },
            routes: [
              GoRoute(
                  path: 'HttpAlbumPage',
                  builder: (context, state) {
                    return const HttpAlbumPage();
                  }),
              GoRoute(
                  path: 'HttpPage',
                  builder: (context, state) => const HttpPage()),
              GoRoute(
                  path: 'IsolateTestPage',
                  builder: (context, state) {
                    return IsolateTestPage();
                  }),
              GoRoute(
                  path: 'WebSocketTestPage',
                  builder: (context, state) {
                    return WebSocketTestPage();
                  }),
              GoRoute(
                  path: 'JsonSerialTestPage',
                  builder: (context, state) {
                    return JsonSerialTestPage();
                  }),
            ]),
        GoRoute(
            path: 'catalog',
            builder: (context, state) {
              return MyCatalog();
            },
            routes: [
              GoRoute(
                path: 'cart',
                builder: (context, state) => MyCart(),
              ),
            ]),
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
            path: 'RedBoxPage',
            builder: (context, state) {
              return const RedBoxPage();
            }),
        GoRoute(
            path: 'SpacedItemsList',
            builder: (context, state) {
              return const SpacedItemsList();
            }),
        GoRoute(
            path: 'SliverExample',
            builder: (context, state) {
              return const SliverExample();
            }),
        GoRoute(
            path: 'Exampleparallax',
            builder: (context, state) {
              return const Exampleparallax();
            }),
        GoRoute(
            path: 'Mediaquerypage',
            builder: (context, state) {
              return const Mediaquerypage();
            }),
        GoRoute(
            path: 'Exampleshader',
            builder: (context, state) {
              return const Exampleshader();
            }),
        GoRoute(
            path: 'MixStateState',
            builder: (context, state) {
              return const MixState();
            }),
        GoRoute(
            path: 'ExampleDragAndDrop',
            builder: (context, state) {
              return const ExampleDragAndDrop();
            }),
        GoRoute(
            path: 'ExampleInkwell',
            builder: (context, state) {
              return const ExampleInkwell();
            }),
        GoRoute(
            path: 'ExampleDismissable',
            builder: (context, state) {
              return const ExampleDismissable();
            }),
        GoRoute(
            path: 'TextController',
            builder: (context, state) {
              return const TextController();
            }),
        GoRoute(
            path: 'Focustextpage',
            builder: (context, state) {
              return const Focustextpage();
            }),
        GoRoute(
            path: 'ValidTextfield',
            builder: (context, state) {
              return const ValidTextfield();
            }),
      ]),
]);
