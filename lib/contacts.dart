import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UsefulContacts extends StatefulWidget {
  @override
  _UsefulContactsState createState() => new _UsefulContactsState();
}

class _UsefulContactsState extends State<UsefulContacts> {
  TextEditingController _url = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Useful Contacts',
          style: TextStyle(
          fontSize: 18.0,
          color: Colors.white,
          fontFamily: "Quando",
          fontWeight: FontWeight.w700,
        ),
      ),
      ),
      body: getListView(),
    );
  }

  Widget getListView() {
    var listView = ListView(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(2),
          child: Container(
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            color: Colors.white70,
            child: Column(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    new GestureDetector(
                      onTap: () {
                        police(context);
                      },
                      child: new Card(
                        child: new Container(
                          padding: new EdgeInsets.all(10),
                          margin: EdgeInsets.only(top: 2.0),
                          child: new Row(
                            children: <Widget>[
                               Expanded(
                                child: new Text(
                                  'Police\n191',
                                  textDirection: TextDirection.ltr,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.black,
                                    fontFamily: "Alike",
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.call,
                                color: Colors.green,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    new GestureDetector(
                      onTap: () {
                        fireService(context);
                      },
                      child: new Card(
                        child: new Container(
                          padding: new EdgeInsets.all(10),
                          margin: EdgeInsets.only(top: 2.0),
                          child: new Row(
                            children: <Widget>[
                               Expanded(
                                child: new Text(
                                  'Fire Service\n192',
                                  textDirection: TextDirection.ltr,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontFamily: "Alike",
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.call,
                                color: Colors.green,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    new GestureDetector(
                      onTap: () {
                        atlfm2(context);
                      },
                      child: new Card(
                        child: new Container(
                          padding: new EdgeInsets.all(10),
                          margin: EdgeInsets.only(top: 2.0),
                          child: new Row(
                            children: <Widget>[
                               Expanded(
                                child: new Text(
                                  'ATL FM\n+233244568552',
                                  textDirection: TextDirection.ltr,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontFamily: "Alike",
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.call,
                                color: Colors.green,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    new GestureDetector(
                      onTap: () {
                        atlfm1(context);
                      },
                      child: new Card(
                        child: new Container(
                          padding: new EdgeInsets.all(10),
                          margin: EdgeInsets.only(top: 2.0),
                          child: new Row(
                            children: <Widget>[
                               Expanded(
                                child: new Text(
                                  'ATL FM\n+233249811881',
                                  textDirection: TextDirection.ltr,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontFamily: "Alike",
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.call,
                                color: Colors.green,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    new GestureDetector(
                      onTap: () {
                        mis_one(context);
                      },
                      child: new Card(
                        child: new Container(
                          padding: new EdgeInsets.all(10),
                          margin: EdgeInsets.only(top: 2.0),
                          child: new Row(
                            children: <Widget>[
                               Expanded(
                                child: new Text(
                                  'MIS System Support\n+233545801203',
                                  textDirection: TextDirection.ltr,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontFamily: "Alike",
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.call,
                                color: Colors.green,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    new GestureDetector(
                      onTap: () {
                        mis_two(context);
                      },
                      child: new Card(
                        child: new Container(
                          padding: new EdgeInsets.all(10),
                          margin: EdgeInsets.only(top: 2.0),
                          child: new Row(
                            children: <Widget>[
                               Expanded(
                                child: new Text(
                                  'MIS System Support\n+233545802062',
                                  textDirection: TextDirection.ltr,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontFamily: "Alike",
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.call,
                                color: Colors.green,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    new GestureDetector(
                      onTap: () {
                        code_one(context);
                      },
                      child: new Card(
                        child: new Container(
                          padding: new EdgeInsets.all(10),
                          margin: EdgeInsets.only(top: 2.0),
                          child: new Row(
                            children: <Widget>[
                               Expanded(
                                child: new Text(
                                  'Fees Enquiries(CoDe Students only)\n033-2092-050',
                                  textDirection: TextDirection.ltr,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontFamily: "Alike",
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.call,
                                color: Colors.green,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    new GestureDetector(
                      onTap: () {
                        code_two(context);
                      },
                      child: new Card(
                        child: new Container(
                          padding: new EdgeInsets.all(10),
                          margin: EdgeInsets.only(top: 2.0),
                          child: new Row(
                            children: <Widget>[
                               Expanded(
                                child: new Text(
                                  'Fees Enquiries(CoDe Students only)\n033-2092-044',
                                  textDirection: TextDirection.ltr,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontFamily: "Alike",
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.call,
                                color: Colors.green,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    new GestureDetector(
                      onTap: () {
                        uccCallCentre(context);
                      },
                      child: new Card(
                        child: new Container(
                          padding: new EdgeInsets.all(10),
                          margin: EdgeInsets.only(top: 2.0),
                          child: new Row(
                            children: <Widget>[
                               Expanded(
                                child: new Text(
                                  'UCC Call Centre\n03321324809',
                                  textDirection: TextDirection.ltr,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontFamily: "Alike",
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.call,
                                color: Colors.green,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    new GestureDetector(
                      onTap: () {
                        registrar(context);
                      },
                      child: new Card(
                        child: new Container(
                          padding: new EdgeInsets.all(10),
                          margin: EdgeInsets.only(top: 2.0),
                          child: new Row(
                            children: <Widget>[
                               Expanded(
                                child: new Text(
                                  'The Registrar, UCC\n0332132440',
                                  textDirection: TextDirection.ltr,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontFamily: "Alike",
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.call,
                                color: Colors.green,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    new GestureDetector(
                      onTap: () {
                        accountOffice(context);
                      },
                      child: new Card(
                        child: new Container(
                          padding: new EdgeInsets.all(10),
                          margin: EdgeInsets.only(top: 2.0),
                          child: new Row(
                            children: <Widget>[
                               Expanded(
                                child: new Text(
                                  'Main UCC Accounts Office\n+233508118646',
                                  textDirection: TextDirection.ltr,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontFamily: "Alike",
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.call,
                                color: Colors.green,
                              ),
                            ],
                          ),
                        ),
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

  void flightBook(BuildContext context) {
    TextEditingController _url = new TextEditingController();
    _openURLCall() async {
      var url = _url.text;
      _url.text = "tel:191";
//      if(await canLaunch(url)){
//        launch(url);
//      }else{
//        print('Can not launch');
//      }
    }

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Alert',
              style: TextStyle(
                fontSize: 20.0,
                fontFamily: "Quando",
              ),),
            content: Text('Do you want to call this number?',
              style: TextStyle(
                fontSize: 16.0,
                fontFamily: "Alike",
              ),),
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    _openURLCall();
                  },
                  child: Text('PROCEED')),
              FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('CANCEL'))
            ],
          );
        });
  }

  void police(BuildContext context) {
    TextEditingController _url = new TextEditingController();
    _openURLCall() async {
      var url = _url.text;
      _url.text = "tel:191";
      if (await canLaunch(url)) {
        launch(url);
      } else {
        print('Can not launch');
      }
    }

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Alert'),
            content: Text('Do you want to call this number?'),
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    _openURLCall();
                  },
                  child: Text('PROCEED')),
              FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('CANCEL'))
            ],
          );
        });
  }

  void fireService(BuildContext context) {
    TextEditingController _url = new TextEditingController();
    _openURLCall() async {
      var url = _url.text;
      _url.text = "tel:192";
      if (await canLaunch(url)) {
        launch(url);
      } else {
        print('Can not launch');
      }
    }

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Alert'),
            content: Text('Do you want to call this number?'),
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    _openURLCall();
                  },
                  child: Text('PROCEED')),
              FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('CANCEL'))
            ],
          );
        });
  }

  void policeCampus(BuildContext context) {
    TextEditingController _url = new TextEditingController();
    _openURLCall() async {
      var url = _url.text;
      _url.text = "tel:18555";
      if (await canLaunch(url)) {
        launch(url);
      } else {
        print('Can not launch');
      }
    }

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Alert'),
            content: Text('Do you want to call this number?'),
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    _openURLCall();
                  },
                  child: Text('PROCEED')),
              FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('CANCEL'))
            ],
          );
        });
  }

  void code_one(BuildContext context) {
    TextEditingController _url = new TextEditingController();
    _openURLCall() async {
      var url = _url.text;
      _url.text = "tel:033-2092-050";
      if (await canLaunch(url)) {
        launch(url);
      } else {
        print('Can not launch');
      }
    }

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Alert'),
            content: Text('Do you want to call this number?'),
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    _openURLCall();
                  },
                  child: Text('PROCEED')),
              FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('CANCEL'))
            ],
          );
        });
  }

  void code_two(BuildContext context) {
    TextEditingController _url = new TextEditingController();
    _openURLCall() async {
      var url = _url.text;
      _url.text = "tel:0332092044";
      if (await canLaunch(url)) {
        launch(url);
      } else {
        print('Can not launch');
      }
    }

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Alert'),
            content: Text('Do you want to call this number?'),
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    _openURLCall();
                  },
                  child: Text('PROCEED')),
              FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('CANCEL'))
            ],
          );
        });
  }

  void atlfm1(BuildContext context) {
    TextEditingController _url = new TextEditingController();
    _openURLCall() async {
      var url = _url.text;
      _url.text = "tel:+233249811881";
      if (await canLaunch(url)) {
        launch(url);
      } else {
        print('Can not launch');
      }
    }

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Alert'),
            content: Text('Do you want to call this number?'),
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    _openURLCall();
                  },
                  child: Text('PROCEED')),
              FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('CANCEL'))
            ],
          );
        });
  }

  void atlfm2(BuildContext context) {
    TextEditingController _url = new TextEditingController();
    _openURLCall() async {
      var url = _url.text;
      _url.text = "tel:+233244568552";
      if (await canLaunch(url)) {
        launch(url);
      } else {
        print('Can not launch');
      }
    }

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Alert'),
            content: Text('Do you want to call this number?'),
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    _openURLCall();
                  },
                  child: Text('PROCEED')),
              FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('CANCEL'))
            ],
          );
        });
  }

  void uccHospital(BuildContext context) {
    TextEditingController _url = new TextEditingController();
    _openURLCall() async {
      var url = _url.text;
      _url.text = "tel:191";
      if (await canLaunch(url)) {
        launch(url);
      } else {
        print('Can not launch');
      }
    }

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Alert'),
            content: Text('Do you want to call this number?'),
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    _openURLCall();
                  },
                  child: Text('PROCEED')),
              FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('CANCEL'))
            ],
          );
        });
  }

  void mis_one(BuildContext context) {
    TextEditingController _url = new TextEditingController();
    _openURLCall() async {
      var url = _url.text;
      _url.text = "tel:+233545801203";
      if (await canLaunch(url)) {
        launch(url);
      } else {
        print('Can not launch');
      }
    }

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Alert'),
            content: Text('Do you want to call this number?'),
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    _openURLCall();
                  },
                  child: Text('PROCEED')),
              FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('CANCEL'))
            ],
          );
        });
  }

  void mis_two(BuildContext context) {
    TextEditingController _url = new TextEditingController();
    _openURLCall() async {
      var url = _url.text;
      _url.text = "tel:+233545802062";
      if (await canLaunch(url)) {
        launch(url);
      } else {
        print('Can not launch');
      }
    }

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Alert'),
            content: Text('Do you want to call this number?'),
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    _openURLCall();
                  },
                  child: Text('PROCEED')),
              FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('CANCEL'))
            ],
          );
        });
  }

  void uccCallCentre(BuildContext context) {
    TextEditingController _url = new TextEditingController();
    _openURLCall() async {
      var url = _url.text;
      _url.text = "tel:0332132480-9";
      if (await canLaunch(url)) {
        launch(url);
      } else {
        print('Can not launch');
      }
    }

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Alert'),
            content: Text('Do you want to call this number?'),
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    _openURLCall();
                  },
                  child: Text('PROCEED')),
              FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('CANCEL'))
            ],
          );
        });
  }

  void registrar(BuildContext context) {
    TextEditingController _url = new TextEditingController();
    _openURLCall() async {
      var url = _url.text;
      _url.text = "tel:0332132440";
      if (await canLaunch(url)) {
        launch(url);
      } else {
        print('Can not launch');
      }
    }

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Alert'),
            content: Text('Do you want to call this number?'),
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    _openURLCall();
                  },
                  child: Text('PROCEED')),
              FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('CANCEL'))
            ],
          );
        });
  }

  void accountOffice(BuildContext context) {
    TextEditingController _url = new TextEditingController();
    _openURLCall() async {
      var url = _url.text;
      _url.text = "tel:+233508118646";
      if (await canLaunch(url)) {
        launch(url);
      } else {
        print('Can not launch');
      }
    }

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Alert'),
            content: Text('Do you want to call this number?'),
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    _openURLCall();
                  },
                  child: Text('PROCEED')),
              FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('CANCEL'))
            ],
          );
        });
  }
}
