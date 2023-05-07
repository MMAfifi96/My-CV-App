import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class linkedInWebView extends StatefulWidget {
  const linkedInWebView({Key? key}) : super(key: key);

  @override
  State<linkedInWebView> createState() => _linkedInWebViewState();
}

class _linkedInWebViewState extends State<linkedInWebView> {
  late final Function(String sessionId) onSessionCreated;
  double _progress = 0;
  late InAppWebViewController webView;
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('LinkedIn', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          InAppWebView(
            initialUrlRequest: URLRequest(
                url: Uri.parse(
                    'https://www.linkedin.com/in/moustafa-mohammed-a686451a8/')),
            onWebViewCreated: (InAppWebViewController controller) {
              webView = controller;
            },
            onProgressChanged:
                (InAppWebViewController controller, int progress) {
              setState(() {
                _progress = progress / 100;
              });
            },
            onLoadStart: (controller, url) {
              print(url);
              var sessionIdKey = 'sessionIdKey';
              if (url?.queryParameters.containsKey(sessionIdKey) == true) {
                onSessionCreated.call(url?.queryParameters[sessionIdKey] ?? '');
              }
            },
          ),
          _progress < 1
              ? SizedBox(
                  height: 3,
                  child: LinearProgressIndicator(
                    value: _progress,
                    backgroundColor:
                        Theme.of(context).colorScheme.secondary.withOpacity(1),
                  ),
                )
              : const SizedBox()
        ],
      ),
    );
  }
}
