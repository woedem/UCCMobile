import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:connectivity/connectivity.dart';
import './nointernet.dart';
import 'package:carousel_pro/carousel_pro.dart';

class news extends StatefulWidget {
  @override
  _newsPageState createState() => new _newsPageState();
}

class _newsPageState extends State<news> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News',
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.white,
            fontFamily: "Quando",
            fontWeight: FontWeight.w700,
          ),
        ),

      ),
      body: getListView()
    );

  }
  Widget getListView() {
    var listView = ListView(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(2),
          child: Container(
            //margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            color: Colors.white70,
            child: Column(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    new GestureDetector(
                      onTap: () {
                        _checkInternetConnectivitycampusNews();
                      },
                      child: new Card(
                        child: Column(
                          children: <Widget>[
                            new Container(
                              //padding: EdgeInsets.all(10.0),
                              margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 0.0, bottom: 10.0),
                              child:  SizedBox(
                                  height: 200.0,
                                  width: 350.0,
                                  child: Carousel(
                                    images: [
                                      Image.asset('images/samjonah.jpg'),
                                      Image.asset('images/ucclogo.jpg'),
                                      Image.asset('images/uccheader.png'),
                                      Image.asset('images/newspic1.jpg'),
                                      Image.asset('images/newspic.jpeg'),
                                      Image.asset('images/wall.jpg'),
                                      Image.asset('images/graduation.jpg'),
                                      Image.asset('images/newspic2.jpg'),
                                    ],
                                    dotSize: 4.0,
                                    dotSpacing: 15.0,
                                    dotColor: Colors.lightGreenAccent,
                                    indicatorBgPadding: 5.0,
                                    dotBgColor: Colors.redAccent.withOpacity(0.5),
                                    borderRadius: true,
                                    animationDuration: Duration(seconds: 3),

                                  )
                              ),
                            ),
                            Text('Campus News',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.black54,
                                fontFamily: "Quando",
                                fontWeight: FontWeight.w700,
                              ),
                            )
                          ],
                        )
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    new GestureDetector(
                      onTap: () {
                        _checkInternetConnectivitycampusGhNews();
                      },
                      child: new Card(
                          child: Column(
                            children: <Widget>[
                              new Container(
                                //padding: EdgeInsets.all(10.0),
                                margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 0.0, bottom: 10.0),
                                child:  SizedBox(
                                    height: 200.0,
                                    width: 350.0,
                                    child: Carousel(
                                      images: [
                                        Image.asset('images/nwesgh1.png'),
                                        Image.asset('images/nwesgh2.jpg'),
                                        Image.asset('images/nwesgh3.png'),
                                        Image.asset('images/nwesgh14.png')
                                      ],
                                      dotSize: 4.0,
                                      dotSpacing: 15.0,
                                      dotColor: Colors.lightGreenAccent,
                                      indicatorBgPadding: 5.0,
                                      dotBgColor: Colors.redAccent.withOpacity(0.5),
                                      borderRadius: true,
                                      animationDuration: Duration(seconds: 4),
                                      autoplayDuration: Duration(seconds: 3),
                                      boxFit: BoxFit.fill,
                                    )
                                ),
                              ),
                              Text('Ghana News',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.black54,
                                  fontFamily: "Quando",
                                  fontWeight: FontWeight.w700,
                                ),
                              )
                            ],
                          )
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    new GestureDetector(
                      onTap: () {
                        _checkInternetConnectivitycampusBBCNews();
                      },
                      child: new Card(
                          child: Column(
                            children: <Widget>[
                              new Container(
                                padding: EdgeInsets.all(10.0),
                                margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 0.0, bottom: 10.0),
                                child:  SizedBox(
                                    height: 200.0,
                                    width: 350.0,
                                    child: Carousel(
                                      images: [
                                        Image.asset('images/bbc1.jpeg'),
                                        Image.asset('images/bbc2.jpg'),
                                        Image.asset('images/bbc3.png'),
                                        Image.asset('images/bbc4.png'),
                                        Image.asset('images/bbc5.jpg'),
                                      ],
                                      dotSize: 4.0,
                                      dotSpacing: 15.0,
                                      dotColor: Colors.lightGreenAccent,
                                      indicatorBgPadding: 5.0,
                                      dotBgColor: Colors.redAccent.withOpacity(0.5),
                                      borderRadius: true,
                                    )
                                ),
                              ),
                              Text('BBC News',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.black54,
                                  fontFamily: "Quando",
                                  fontWeight: FontWeight.w700,
                                ),
                              )
                            ],
                          )
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
    return listView;
  }


  void campusNews() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return WebviewScaffold(
        appBar: AppBar(
          title: Text('Campus News',
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
              fontFamily: "Quando",
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        url: 'https://ucc.edu.gh/news',
        withZoom: true,
        withJavascript: true,
        clearCookies: false,
        clearCache: false,
        hidden: true,
        initialChild: Center(
          child: CircularProgressIndicator(
            backgroundColor: Colors.indigo,
          ),
        ),
      );
    }));
  }


  void GhanaNews() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return WebviewScaffold(
        appBar: AppBar(
          title: Text('Ghana News',
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
              fontFamily: "Quando",
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        url: 'https://mobile.ghanaweb.com',
        withZoom: true,
        withJavascript: true,
        clearCookies: false,
        clearCache: false,
        hidden: true,
        initialChild: Center(
          child: CircularProgressIndicator(
            backgroundColor: Colors.indigo,
          ),
        ),
      );
    }));
  }


  void BBCNews() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return WebviewScaffold(
        appBar: AppBar(
          title: Text('BBC News',
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
              fontFamily: "Quando",
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        url: 'https://www.bbc.com',
        withZoom: true,
        withJavascript: true,
        clearCookies: false,
        clearCache: false,
        hidden: true,
        initialChild: Center(
          child: CircularProgressIndicator(
            backgroundColor: Colors.indigo,
          ),
        ),
      );
    }));
  }
  _checkInternetConnectivitycampusNews() async {
    var result = await Connectivity().checkConnectivity();
    if (result == ConnectivityResult.none) {
      Navigator.push(
          context,
          new MaterialPageRoute(
              builder: (BuildContext context) => new offline()));
    } else if (result == ConnectivityResult.mobile) {
      campusNews();
    } else if (result == ConnectivityResult.wifi) {
      campusNews();
    }
  }

  _checkInternetConnectivitycampusGhNews() async {
    var result = await Connectivity().checkConnectivity();
    if (result == ConnectivityResult.none) {
      Navigator.push(
          context,
          new MaterialPageRoute(
              builder: (BuildContext context) => new offline()));
    } else if (result == ConnectivityResult.mobile) {
      GhanaNews();
    } else if (result == ConnectivityResult.wifi) {
      GhanaNews();
    }
  }

  _checkInternetConnectivitycampusBBCNews() async {
    var result = await Connectivity().checkConnectivity();
    if (result == ConnectivityResult.none) {
      Navigator.push(
          context,
          new MaterialPageRoute(
              builder: (BuildContext context) => new offline()));
    } else if (result == ConnectivityResult.mobile) {
      BBCNews();
    } else if (result == ConnectivityResult.wifi) {
      BBCNews();
    }
  }
}