import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class UCCWebsite extends StatefulWidget {
  @override
  _UCCWebsiteState createState() => _UCCWebsiteState();
}

class _UCCWebsiteState extends State<UCCWebsite> {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      appBar: AppBar(
      title: Text('UCC Website',
        style: TextStyle(
          fontSize: 18.0,
          color: Colors.white,
          fontFamily: "Quando",
          fontWeight: FontWeight.w700,
        ),
      ),
      ),

      url: 'https://dric.ucc.edu.gh/',
      withZoom: true,
      clearCache: false,
      clearCookies: false,
      withJavascript: true,
      hidden: true,
      initialChild: Center(
        child: CircularProgressIndicator(
          backgroundColor: Colors.indigo,
        ),
      ),
      );
  }
}



//class UCCWebsite extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Webview Widget',
//      debugShowCheckedModeBanner: false,
//      theme: ThemeData(
//        primaryColor: Colors.indigo,
////        primaryColorDark: const Color(0xFF167F57),
////        accentColor: const Color(0xFF02BB9F),
//      ),
//      home: Web(title: 'UCC Website'),
//    );
//  }
//}
//
//class Web extends StatefulWidget {
//  Web({Key key, this.title}) : super(key: key);
//  final String title;
//  @override
//  _WebState createState() => _WebState();
//}
//
//class _WebState extends State<Web> {
//  bool _isLoading = true;
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//        appBar: AppBar(
//          title: Text(widget.title,style: TextStyle(color:Colors.white),),
//
//        ),
//        body: ProgressHUD(
//          child: Padding(
//            padding: EdgeInsets.all(10.0),
//            child: Stack(
//              children: <Widget>[
//                WebView(
//                  initialUrl:"https://ucc.edu.gh",
//                  javascriptMode: JavascriptMode.unrestricted,
//                  onPageFinished: pageFinishedLoading,
//                ),
//              ],
//            ),
//          ),
//          inAsyncCall: _isLoading,
//          opacity: 0.0,
//        )
//    );
//  }
//  void pageFinishedLoading(String url) {
//    setState(() {
//      _isLoading = false;
//    });
//  }
//}

//class UCCWebsite extends StatefulWidget {
//  @override
//  _UCCWebsitePageState createState() => new _UCCWebsitePageState();
//}
//
//class _UCCWebsitePageState extends State<UCCWebsite> {
//  @override
//  Widget build(BuildContext context) {
//    WebviewScaffold(
//        appBar: AppBar(
//        title: Text('UCC Website'),
//        ),
//
//    url: 'https://ucc.edu.gh',
//        withZoom: true,
//        clearCache: false,
//        clearCookies: false,
//        withJavascript: true,
//      withLocalStorage: true,
//        );
//
//  }

//  WebviewScaffold(
//  appBar: AppBar(
//  title: Text('UCC Website'),
//  ),
//
//  url: 'https://ucc.edu.gh',
//  withZoom: true,
//  clearCache: false,
//  clearCookies: false,
//  withJavascript: true,
//  );


//  _checkInternetConnectivity() async
//  {
//    var result = await Connectivity().checkConnectivity();
//    if(result == ConnectivityResult.none)
//    {
//      _showDialog('No Internet', 'You are not connected to Internet.');
//
//    }else if(result == ConnectivityResult.mobile){
//
//      _showDialog('No Internet', 'You are connected to Mobile Data.');
//    }else if(result == ConnectivityResult.wifi)
//    {
//      _showDialog('Internet', 'You are connected to Wifi.');
//
//    }
//  }
//
//  _showDialog(title, text)
//  {
//    showDialog(
//        context: context,
//        builder: ( context) {
//          return AlertDialog(
//            title: Text('Alert'),
//            content: Text(text),
//            actions: <Widget>[
//              FlatButton(
//                  onPressed: (){
//                  }, child: Text('OK')),
//
//            ],
//          );
//        }
//    );
//  }

