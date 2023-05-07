import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class whatsAppWebView extends StatefulWidget {
  const whatsAppWebView({Key? key}) : super(key: key);

  @override
  State<whatsAppWebView> createState() => _whatsAppWebViewState();
}

class _whatsAppWebViewState extends State<whatsAppWebView> {
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
        title: const Text('WhatsApp', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          InAppWebView(
            initialUrlRequest: URLRequest(
                url: Uri.parse(
                    'https://api.whatsapp.com/send?phone=96551609454')),
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
