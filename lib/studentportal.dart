import 'package:flutter/material.dart';
import './MyWebView.dart';
import 'package:webview_flutter/webview_flutter.dart';

class portal extends StatefulWidget {
  @override
  _portalPageState createState() => new _portalPageState();
}

class _portalPageState extends State<portal> {

  bool _isLoading = true;
  @override
  Widget build(BuildContext context) {

      return Scaffold(
        appBar: AppBar(
          title: Text('Student Portal',
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.white,
            fontFamily: "Quando",
            fontWeight: FontWeight.w700,
          ),
        ),
        ),
    body: ProgressHUD(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Stack(
              children: <Widget>[
                WebView(
                  initialUrl:"https://portal.ucc.edu.gh",
                  javascriptMode: JavascriptMode.unrestricted,
                  onPageFinished: pageFinishedLoading,
                ),
              ],
            ),
          ),
          inAsyncCall: _isLoading,
          opacity: 0.0,
        )
      );

  }

  void pageFinishedLoading(String url) {
    setState(() {
      _isLoading = false;
    });
  }
}

