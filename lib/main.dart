import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(Interniac());

class Interniac extends StatefulWidget {
  @override
  _InterniacState createState() => _InterniacState();
}

class _InterniacState extends State<Interniac> {
  void initState(){
    super.initState();
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: 'http://192.168.1.113:8000/accounts/profile',
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}
