import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget {
  final String url;
  final String title;

  WebViewPage({Key? key, required this.url, required this.title})
      : super(key: key);

  @override
  _WebViewPageState createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  late WebViewController _controller;
  bool _isLoading = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0xffffffff))
      ..setNavigationDelegate(NavigationDelegate(
        onProgress: (int progress) {
          // Update loading bar.
        },
        onPageStarted: (String url) {
          if (!_isLoading) {
            setState(() {
              _isLoading = true;
            });
          }
        },
        onPageFinished: (String url) {
          if (_isLoading) {
            setState(() {
              _isLoading = false;
            });
          }
        },
        onHttpError: (HttpResponseError error) {},
        onWebResourceError: (WebResourceError error) {},
        onNavigationRequest: (NavigationRequest request) {
          if (request.url.startsWith('https://www.youtube.com/')) {
            return NavigationDecision.prevent;
          }
          return NavigationDecision.navigate;
        },
      ))
      ..loadRequest(Uri.parse(widget.url));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () async {
            if (await _controller.canGoBack()) {
              _controller.goBack();
            } else {
              GoRouter.of(context).canPop() ? GoRouter.of(context).pop() : null;
            }
          },
        ),
      ),
      body: PopScope(
        onPopInvoked: (didPop) async {
          if (await _controller.canGoBack()) {
            _controller.goBack();
          } else {
            GoRouter.of(context).canPop() ? GoRouter.of(context).pop() : null;
          }
        },
        child: Stack(
          children: [
            WebViewWidget(controller: _controller),
            if (_isLoading)
              const Center(
                child: CircularProgressIndicator(),
              ),
          ],
        ),
      ),
    );
  }
}
