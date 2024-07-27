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
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Column(children: [
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
            ]),
          ),
        ),
      ),
    );
  }
}
