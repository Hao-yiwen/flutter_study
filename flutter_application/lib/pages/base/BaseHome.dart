import 'package:flutter/material.dart';
import 'package:flutter_application/pages/base/model/PostData.dart';
import 'package:go_router/go_router.dart';

class BaseHome extends StatelessWidget {
  const BaseHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('flutter基础'),
      ),
      body: ListView(
        children: [
          TextButton(
              onPressed: () =>
                  {GoRouter.of(context).go('/BaseHome/ImagePlaceholder')},
              child: const Text('ImagePlaceholder')),
          TextButton(
              onPressed: () =>
                  {GoRouter.of(context).go('/BaseHome/VideoPlayerScreen')},
              child: const Text('VideoPlayerScreen')),
          TextButton(
              onPressed: () =>
                  {GoRouter.of(context).go('/BaseHome/SvgTransformPage')},
              child: const Text('SvgTransformPage')),
          TextButton(
              onPressed: () async {
                final String str = await GoRouter.of(context).push(
                        '/BaseHome/GoRouterExtradata',
                        extra: PostData(
                            title: "hello",
                            url: "http://www.baidu.com")) as String ??
                    '';
                print('返回值：$str');
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text('返回值：' + str)));
              },
              child: const Text('GoRouterExtradata')),
        ],
      ),
    );
  }
}
