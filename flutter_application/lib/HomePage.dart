import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('大首页'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: ListView(children: [
            TextButton(
                onPressed: () => {GoRouter.of(context).go('/BaseHome')},
                child: const Text('BaseHome')),
            TextButton(
                onPressed: () => {GoRouter.of(context).go('/sqliteDemo')},
                child: const Text('Sqlite Demo')),
            TextButton(
              child: const Text('TimerTestPage'),
              onPressed: () => {
                GoRouter.of(context).go('/TimerTestPage'),
              },
            ),
            TextButton(
                onPressed: () => {
                      GoRouter.of(context).go('/CameraPage'),
                    },
                child: const Text('CameraPage')),
            TextButton(
                onPressed: () => {
                      GoRouter.of(context).go('/LocalizationPage'),
                    },
                child: const Text('LocalizationPage')),
            TextButton(
              child: const Text('SharedPreferencesPage'),
              onPressed: () =>
                  {GoRouter.of(context).go('/SharedPreferencesPage')},
            ),
            TextButton(
              child: const Text('LifecyclePage'),
              onPressed: () => {GoRouter.of(context).go('/LifecyclePage')},
            ),
            TextButton(
              child: const Text('TabBarPage'),
              onPressed: () => {GoRouter.of(context).go('/TabBarPage')},
            ),
            TextButton(
              child: const Text('DrawerPage'),
              onPressed: () => {GoRouter.of(context).go('/DrawerPage')},
            ),
            TextButton(
              child: const Text('GesturePage'),
              onPressed: () => {GoRouter.of(context).go('/GesturePage')},
            ),
            TextButton(
              child: const Text('HttpPage'),
              onPressed: () => {GoRouter.of(context).go('/HttpPage')},
            ),
            TextButton(
                onPressed: () => {GoRouter.of(context).go('/FormPage')},
                child: const Text('FormPage')),
            TextButton(
                onPressed: () => {GoRouter.of(context).go('/PlatformPage')},
                child: const Text('PlatformPage')),
            TextButton(
                onPressed: () => {GoRouter.of(context).go('/IconPage')},
                child: const Text('IconPage')),
            TextButton(
                onPressed: () =>
                    {GoRouter.of(context).go('/BoxDecorationPage')},
                child: const Text('BoxDecorationPage')),
            TextButton(
                onPressed: () => {GoRouter.of(context).go('/ShoppingList')},
                child: const Text('ShoppingList')),
            TextButton(
                onPressed: () => {GoRouter.of(context).go('/LayoutPage')},
                child: const Text('LayoutPage')),
            TextButton(
                onPressed: () =>
                    {GoRouter.of(context).go('/CupertinoButtonPage')},
                child: const Text('CupertinoButtonPage')),
            TextButton(
                onPressed: () => {GoRouter.of(context).go('/ThemePage')},
                child: const Text('ThemePage')),
            TextButton(
                onPressed: () => {GoRouter.of(context).go('/Fontfamilypage')},
                child: const Text('Fontfamilypage')),
            TextButton(
                onPressed: () => {GoRouter.of(context).go('/GridPage')},
                child: const Text('GridPage')),
            TextButton(
                onPressed: () => {GoRouter.of(context).go('/MyPluginPage')},
                child: const Text('MyPluginPage')),
            TextButton(
              child: const Text('SqlitePage2'),
              onPressed: () => {GoRouter.of(context).go('/SqlitePage2')},
            ),
            TextButton(
              child: const Text('NavigationPage'),
              onPressed: () => {GoRouter.of(context).go('/NavigationPage')},
            ),
            TextButton(
              child: const Text('GuessGamePage'),
              onPressed: () => {GoRouter.of(context).go('/GuessGamePage')},
            ),
            TextButton(
              child: const Text('RandomWords'),
              onPressed: () => {GoRouter.of(context).go('/RandomWords')},
            ),
            TextButton(
              child: const Text('Lottiepage'),
              onPressed: () => {GoRouter.of(context).go('/Lottiepage')},
            ),
            TextButton(
                onPressed: () => {GoRouter.of(context).go('/GetXpage')},
                child: const Text('GetXpage')),
            TextButton(
                onPressed: () => {GoRouter.of(context).go('/WebViewPage')},
                child: const Text('WebViewPage')),
            TextButton(
                onPressed: () =>
                    {GoRouter.of(context).go('/Inheritedtestpage')},
                child: Text("Inheritedtestpage")),
            TextButton(
                onPressed: () {
                  GoRouter.of(context).go('/MypainterPage');
                },
                child: Text("MypainterPage")),
            TextButton(
                onPressed: () {
                  GoRouter.of(context).go('/Lifecycletestpage');
                },
                child: Text("Lifecycletestpage")),
            TextButton(
                onPressed: () {
                  GoRouter.of(context).go('/FadeAppTestPage');
                },
                child: Text("FadeAppTestPage")),
            TextButton(
                onPressed: () {
                  GoRouter.of(context).go('/RedBoxPage');
                },
                child: Text("RedBoxPage")),
            TextButton(
                onPressed: () {
                  GoRouter.of(context).go('/RotatingBoxPage');
                },
                child: Text("RotatingBoxPage")),
            TextButton(
                onPressed: () {
                  GoRouter.of(context).go('/IsolateTestPage');
                },
                child: Text("IsolateTestPage")),
            TextButton(
                onPressed: () {
                  GoRouter.of(context).go('/SpacedItemsList');
                },
                child: Text("SpacedItemsList")),
            TextButton(
                onPressed: () {
                  GoRouter.of(context).go('/SliverExample');
                },
                child: Text("SliverExample")),
            TextButton(
                onPressed: () {
                  GoRouter.of(context).go('/Exampleparallax');
                },
                child: Text("Exampleparallax")),
            TextButton(
                onPressed: () {
                  GoRouter.of(context).go('/Mediaquerypage');
                },
                child: Text("Mediaquerypage")),
            TextButton(
                onPressed: () {
                  GoRouter.of(context).go('/Exampleshader');
                },
                child: Text("Exampleshader")),
            TextButton(
                onPressed: () {
                  GoRouter.of(context).go('/MixStateState');
                },
                child: Text("MixStateState")),
            TextButton(
                onPressed: () {
                  GoRouter.of(context).go('/ExampleDragAndDrop');
                },
                child: Text("ExampleDragAndDrop")),
            TextButton(
                onPressed: () {
                  GoRouter.of(context).go('/ExampleInkwell');
                },
                child: Text("ExampleInkwell")),
            TextButton(
                onPressed: () {
                  GoRouter.of(context).go('/ExampleDismissable');
                },
                child: Text("ExampleDismissable")),
            TextButton(
                onPressed: () {
                  GoRouter.of(context).go('/TextController');
                },
                child: Text("TextController")),
            TextButton(
                onPressed: () {
                  GoRouter.of(context).go('/Focustextpage');
                },
                child: Text("Focustextpage")),
            TextButton(
                onPressed: () {
                  GoRouter.of(context).go('/ValidTextfield');
                },
                child: Text("ValidTextfield")),
          ]),
        ),
      ),
    );
  }
}
