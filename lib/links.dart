import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:connectivity/connectivity.dart';
import './nointernet.dart';

class UsefulLinks extends StatefulWidget {
  @override
  _UsefulLinksState createState() => new _UsefulLinksState();
}

class _UsefulLinksState extends State<UsefulLinks> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Useful Links',
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.white,
            fontFamily: "Quando",
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(0.0),
        children: <Widget>[
          new ListTile(
            trailing: Icon(
              Icons.arrow_forward,
              color: Colors.redAccent,
            ),
            leading: Icon(Icons.ac_unit, color: Colors.indigo),
            title: new Text('UCC Awards',
              style: TextStyle(
                fontFamily: "Alike",
              ),
            ),
            onTap: () {
              _checkInternetConnectivityawards();
            },
          ),
          Divider(),
          new ListTile(
            trailing: Icon(
              Icons.arrow_forward,
              color: Colors.redAccent,
            ),
            leading: Icon(Icons.ac_unit, color: Colors.indigo),
            title: new Text('Online Academic Calender',
              style: TextStyle(
                fontFamily: "Alike",
              ),
            ),
            onTap: () {
              _checkInternetConnectivityacademicCalender();
            },
          ),
          Divider(),
          new ListTile(
            trailing: Icon(
              Icons.arrow_forward,
              color: Colors.redAccent,
            ),
            leading: Icon(Icons.ac_unit, color: Colors.indigo),
            title: new Text('UCC History',
              style: TextStyle(
                fontFamily: "Alike",
              ),
            ),
            onTap: () {
              _checkInternetConnectivityhistory();
            },
          ),
          Divider(),
          new ListTile(
            leading: Icon(Icons.ac_unit, color: Colors.indigo),
            trailing: Icon(
              Icons.arrow_forward,
              color: Colors.redAccent,
            ),
            title: new Text('Events',
              style: TextStyle(
                fontFamily: "Alike",
              ),
            ),
            onTap: () {
              _checkInternetConnectivityevents();
            },
          ),
          Divider(),
          new ListTile(
            leading: Icon(Icons.ac_unit, color: Colors.indigo),
            trailing: Icon(
              Icons.arrow_forward,
              color: Colors.redAccent,
            ),
            title: new Text('E-Learning',
              style: TextStyle(
                fontFamily: "Alike",
              ),),
            onTap: () {
              _checkInternetConnectivityeLearning();
            },
          ),
          Divider(),
          new ListTile(
            leading: Icon(Icons.ac_unit, color: Colors.indigo),
            trailing: Icon(
              Icons.arrow_forward,
              color: Colors.redAccent,
            ),
            title: new Text('Faculties, Schools & Departments',
              style: TextStyle(
                fontFamily: "Alike",
              ),
            ),
            onTap: () {
              _checkInternetConnectivitydepartmentsFaculties();
            },
          ),
          Divider(),
          new ListTile(
            leading: Icon(Icons.ac_unit, color: Colors.indigo),
            trailing: Icon(
              Icons.arrow_forward,
              color: Colors.redAccent,
            ),
            title: new Text('Distance Education',
              style: TextStyle(
                fontFamily: "Alike",
              ),
            ),
            onTap: () {
              _checkInternetConnectivitydistanceEducation();
            },
          ),

          Divider(),
          new ListTile(
            leading: Icon(Icons.ac_unit, color: Colors.indigo),
            trailing: Icon(
              Icons.arrow_forward,
              color: Colors.redAccent,
            ),
            title: new Text('Non-Degree Academic Programmes',
              style: TextStyle(
                fontFamily: "Alike",
              ),
            ),
            onTap: () {
              _checkInternetConnectivitynonDegree();
            },
          ),
          Divider(),
          new ListTile(
            leading: Icon(Icons.ac_unit, color: Colors.indigo),
            trailing: Icon(
              Icons.arrow_forward,
              color: Colors.redAccent,
            ),
            title: new Text('Undergraduate Academic Programmes',
              style: TextStyle(
                fontFamily: "Alike",
              ),
            ),
            onTap: () {
              _checkInternetConnectivitydegree();
            },
          ),
          Divider(),
          new ListTile(
            leading: Icon(Icons.ac_unit, color: Colors.indigo),
            trailing: Icon(
              Icons.arrow_forward,
              color: Colors.redAccent,
            ),
            title: new Text('Doctorate Programmes',
              style: TextStyle(
                fontFamily: "Alike",
              ),
            ),
            onTap: () {
              _checkInternetConnectivitydoctorateDegree();
            },
          ),
          Divider(),
          new ListTile(
            leading: Icon(Icons.ac_unit, color: Colors.indigo),
            trailing: Icon(
              Icons.arrow_forward,
              color: Colors.redAccent,
            ),
            title: new Text('Masters Academic Programmes',
              style: TextStyle(
                fontFamily: "Alike",
              ),
            ),
            onTap: () {
              _checkInternetConnectivitymastersDegree();
            },
          ),
          Divider(),
          new ListTile(
            leading: Icon(Icons.ac_unit, color: Colors.indigo),
            trailing: Icon(
              Icons.arrow_forward,
              color: Colors.redAccent,
            ),
            title: new Text('Applications & Students',
              style: TextStyle(
                fontFamily: "Alike",
              ),
            ),
            onTap: () {
              _checkInternetConnectivityapplicationsStudents();
            },
          ),
          Divider(),
          new ListTile(
            leading: Icon(Icons.ac_unit, color: Colors.indigo),
            trailing: Icon(
              Icons.arrow_forward,
              color: Colors.redAccent,
            ),
            title: new Text('Activities',
              style: TextStyle(
                fontFamily: "Alike",
              ),
            ),
            onTap: () {
              _checkInternetConnectivityactivities();
            },
          ),
          Divider(),
          new ListTile(
            leading: Icon(Icons.ac_unit, color: Colors.indigo),
            trailing: Icon(
              Icons.arrow_forward,
              color: Colors.redAccent,
            ),
            title: new Text('Useful Facilities',
              style: TextStyle(
                fontFamily: "Alike",
              ),
            ),
            onTap: () {
              _checkInternetConnectivityusefulFacilities();
            },
          ),
          Divider(),
          new ListTile(
            leading: Icon(Icons.ac_unit, color: Colors.indigo),
            trailing: Icon(
              Icons.arrow_forward,
              color: Colors.redAccent,
            ),
            title: new Text('Our Campus',
              style: TextStyle(
                fontFamily: "Alike",
              ),
            ),
            onTap: () {
              _checkInternetConnectivityourCampus();
            },
          ),
          Divider(),
          new ListTile(
            leading: Icon(Icons.ac_unit, color: Colors.indigo),
            trailing: Icon(
              Icons.arrow_forward,
              color: Colors.redAccent,
            ),
            title: new Text('Plans & Policies',
              style: TextStyle(
                fontFamily: "Alike",
              ),
            ),
            onTap: () {
              _checkInternetConnectivityplansPolicies();
            },
          ),
          Divider(),
          new ListTile(
            leading: Icon(Icons.ac_unit, color: Colors.indigo),
            trailing: Icon(
              Icons.arrow_forward,
              color: Colors.redAccent,
            ),
            title: new Text('Governance',
              style: TextStyle(
                fontFamily: "Alike",
              ),
            ),
            onTap: () {
              _checkInternetConnectivitygovernance();
            },
          ),
          Divider(),
          new ListTile(
            leading: Icon(Icons.ac_unit, color: Colors.indigo),
            trailing: Icon(
              Icons.arrow_forward,
              color: Colors.redAccent,
            ),
            title: new Text('Alumni',
              style: TextStyle(
                fontFamily: "Alike",
              ),
            ),
            onTap: () {
              _checkInternetConnectivityalumni();
            },
          ),
          Divider(),
          new ListTile(
            leading: Icon(Icons.ac_unit, color: Colors.indigo),
            trailing: Icon(
              Icons.arrow_forward,
              color: Colors.redAccent,
            ),
            title: new Text('Overview of Tertairy Education',
              style: TextStyle(
                fontFamily: "Alike",
              ),
            ),
            onTap: () {
              _checkInternetConnectivityvasOverview();
            },
          ),
          Divider(),
        ],
      ),
    );
  }

  void awards() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return WebviewScaffold(
        appBar: AppBar(
          title: Text('Awards',
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
              fontFamily: "Quando",
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        url: 'https://ucc.edu.gh/main/explore-ucc/awards/honorary-degrees',
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

  void history() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return WebviewScaffold(
        appBar: AppBar(
          title: Text('History',
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
              fontFamily: "Quando",
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        url: 'https://ucc.edu.gh/main/about/history',
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

  void events() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return WebviewScaffold(
        appBar: AppBar(
          title: Text('Events',
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
              fontFamily: "Quando",
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        url: 'https://ucc.edu.gh/events',
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

  void applicationsStudents() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return WebviewScaffold(
        appBar: AppBar(
          title: Text('Applcations & Students',
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
              fontFamily: "Quando",
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        url: 'https://ucc.edu.gh/main/applicants-and-students/definition-terms',
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

  void distanceEducation() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return WebviewScaffold(
        appBar: AppBar(
          title: Text('Distance Education',
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
              fontFamily: "Quando",
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        url: 'https://ucc.edu.gh/content/distance-education',
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

  void nonDegree() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return WebviewScaffold(
        appBar: AppBar(
          title: Text('Non-Degree Academic Programmes',
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
              fontFamily: "Quando",
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        url: 'https://ucc.edu.gh/main/academic-programmes/non-degree',
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

  void degree() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return WebviewScaffold(
        appBar: AppBar(
          title: Text('Undergraduate Academic Programmes',
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
              fontFamily: "Quando",
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        url: 'https://ucc.edu.gh/main/academic-programmes/undergraduate',
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

  void mastersDegree() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return WebviewScaffold(
        appBar: AppBar(
          title: Text('Masters Academic Programmes',
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
              fontFamily: "Quando",
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        url: 'https://ucc.edu.gh/main/academic-programmes/masters',
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

  void doctorateDegree() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return WebviewScaffold(
        appBar: AppBar(
          title: Text('Doctorate Programmes',
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
              fontFamily: "Quando",
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        url: 'https://ucc.edu.gh/main/academic-programmes/doctorate',
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

  void eLearning() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return WebviewScaffold(
        appBar: AppBar(
          title: Text('E-Learning',
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
              fontFamily: "Quando",
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        url: 'https://elearning.ucc.edu.gh/login/index.php',
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

  void departmentsFaculties() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return WebviewScaffold(
        appBar: AppBar(
          title: Text('Faculties, Schools & Departments',
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
              fontFamily: "Quando",
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        url: 'https://ucc.edu.gh/all-faculties-schools-departments-ucc',
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

  void academicCalender() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return WebviewScaffold(
        appBar: AppBar(
          title: Text('Academic Calender',
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
              fontFamily: "Quando",
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        url: 'https://ucc.edu.gh/academic-calendar',
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

  void plansPolicies() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return WebviewScaffold(
        appBar: AppBar(
          title: Text('Plans & Policies',
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
              fontFamily: "Quando",
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        url: 'https://ucc.edu.gh/main/explore-ucc/plans-and-policies',
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

  void usefulFacilities() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return WebviewScaffold(
        appBar: AppBar(
          title: Text('Useful Facilities',
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
              fontFamily: "Quando",
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        url: 'https://ucc.edu.gh/main/explore-ucc/useful-facilities',
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

  void activities() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return WebviewScaffold(
        appBar: AppBar(
          title: Text('Recreational and Social Activities',
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
              fontFamily: "Quando",
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        url:
            'https://ucc.edu.gh/main/explore-ucc/recreational-and-social-activities',
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

  void governance() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return WebviewScaffold(
        appBar: AppBar(
          title: Text('Governance and Admistration',
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
              fontFamily: "Quando",
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        url: 'https://ucc.edu.gh/main/about/university-governance',
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

  void ourCampus() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return WebviewScaffold(
        appBar: AppBar(
          title: Text('Our Campus',
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
              fontFamily: "Quando",
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        url: 'https://ucc.edu.gh/main/explore-ucc/our-campus',
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

  void alumni() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return WebviewScaffold(
        appBar: AppBar(
          title: Text('Alumni',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
              fontFamily: "Quando",
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        url: 'https://alumni.ucc.edu.gh/',
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

  void vasOverview() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return WebviewScaffold(
        appBar: AppBar(
          title: Text('Overview of Tertiary Education Sector',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
              fontFamily: "Quando",
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        url:
            'https://ucc.edu.gh/main/explore-ucc/corporate-strategic-plan/overview-tertiary-education-sector',
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

  _checkInternetConnectivity() async {
    var result = await Connectivity().checkConnectivity();
    if (result == ConnectivityResult.none) {
      Navigator.push(
          context,
          new MaterialPageRoute(
              builder: (BuildContext context) => new offline()));
    } else if (result == ConnectivityResult.mobile) {
      awards();
    } else if (result == ConnectivityResult.wifi) {
      awards();
    }
  }

  _checkInternetConnectivityawards() async {
    var result = await Connectivity().checkConnectivity();
    if (result == ConnectivityResult.none) {
      Navigator.push(
          context,
          new MaterialPageRoute(
              builder: (BuildContext context) => new offline()));
    } else if (result == ConnectivityResult.mobile) {
      awards();
    } else if (result == ConnectivityResult.wifi) {
      awards();
    }
  }

  _checkInternetConnectivityacademicCalender() async {
    var result = await Connectivity().checkConnectivity();
    if (result == ConnectivityResult.none) {
      Navigator.push(
          context,
          new MaterialPageRoute(
              builder: (BuildContext context) => new offline()));
    } else if (result == ConnectivityResult.mobile) {
      academicCalender();
    } else if (result == ConnectivityResult.wifi) {
      academicCalender();
    }
  }

  _checkInternetConnectivityhistory() async {
    var result = await Connectivity().checkConnectivity();
    if (result == ConnectivityResult.none) {
      Navigator.push(
          context,
          new MaterialPageRoute(
              builder: (BuildContext context) => new offline()));
    } else if (result == ConnectivityResult.mobile) {
      history();
    } else if (result == ConnectivityResult.wifi) {
      history();
    }
  }

  _checkInternetConnectivityevents() async {
    var result = await Connectivity().checkConnectivity();
    if (result == ConnectivityResult.none) {
      Navigator.push(
          context,
          new MaterialPageRoute(
              builder: (BuildContext context) => new offline()));
    } else if (result == ConnectivityResult.mobile) {
      events();
    } else if (result == ConnectivityResult.wifi) {
      events();
    }
  }

  _checkInternetConnectivityeLearning() async {
    var result = await Connectivity().checkConnectivity();
    if (result == ConnectivityResult.none) {
      Navigator.push(
          context,
          new MaterialPageRoute(
              builder: (BuildContext context) => new offline()));
    } else if (result == ConnectivityResult.mobile) {
      eLearning();
    } else if (result == ConnectivityResult.wifi) {
      eLearning();
    }
  }

  _checkInternetConnectivitydepartmentsFaculties() async {
    var result = await Connectivity().checkConnectivity();
    if (result == ConnectivityResult.none) {
      Navigator.push(
          context,
          new MaterialPageRoute(
              builder: (BuildContext context) => new offline()));
    } else if (result == ConnectivityResult.mobile) {
      departmentsFaculties();
    } else if (result == ConnectivityResult.wifi) {
      departmentsFaculties();
    }
  }

  _checkInternetConnectivitynonDegree() async {
    var result = await Connectivity().checkConnectivity();
    if (result == ConnectivityResult.none) {
      Navigator.push(
          context,
          new MaterialPageRoute(
              builder: (BuildContext context) => new offline()));
    } else if (result == ConnectivityResult.mobile) {
      nonDegree();
    } else if (result == ConnectivityResult.wifi) {
      nonDegree();
    }
  }

  _checkInternetConnectivitydistanceEducation() async {
    var result = await Connectivity().checkConnectivity();
    if (result == ConnectivityResult.none) {
      Navigator.push(
          context,
          new MaterialPageRoute(
              builder: (BuildContext context) => new offline()));
    } else if (result == ConnectivityResult.mobile) {
      distanceEducation();
    } else if (result == ConnectivityResult.wifi) {
      distanceEducation();
    }
  }

  _checkInternetConnectivitydegree() async {
    var result = await Connectivity().checkConnectivity();
    if (result == ConnectivityResult.none) {
      Navigator.push(
          context,
          new MaterialPageRoute(
              builder: (BuildContext context) => new offline()));
    } else if (result == ConnectivityResult.mobile) {
      degree();
    } else if (result == ConnectivityResult.wifi) {
      degree();
    }
  }

  _checkInternetConnectivitydoctorateDegree() async {
    var result = await Connectivity().checkConnectivity();
    if (result == ConnectivityResult.none) {
      Navigator.push(
          context,
          new MaterialPageRoute(
              builder: (BuildContext context) => new offline()));
    } else if (result == ConnectivityResult.mobile) {
      doctorateDegree();
    } else if (result == ConnectivityResult.wifi) {
      doctorateDegree();
    }
  }

  _checkInternetConnectivitymastersDegree() async {
    var result = await Connectivity().checkConnectivity();
    if (result == ConnectivityResult.none) {
      Navigator.push(
          context,
          new MaterialPageRoute(
              builder: (BuildContext context) => new offline()));
    } else if (result == ConnectivityResult.mobile) {
      mastersDegree();
    } else if (result == ConnectivityResult.wifi) {
      mastersDegree();
    }
  }

  _checkInternetConnectivityapplicationsStudents() async {
    var result = await Connectivity().checkConnectivity();
    if (result == ConnectivityResult.none) {
      Navigator.push(
          context,
          new MaterialPageRoute(
              builder: (BuildContext context) => new offline()));
    } else if (result == ConnectivityResult.mobile) {
      history();
    } else if (result == ConnectivityResult.wifi) {
      history();
    }
  }

  _checkInternetConnectivityactivities() async {
    var result = await Connectivity().checkConnectivity();
    if (result == ConnectivityResult.none) {
      Navigator.push(
          context,
          new MaterialPageRoute(
              builder: (BuildContext context) => new offline()));
    } else if (result == ConnectivityResult.mobile) {
      activities();
    } else if (result == ConnectivityResult.wifi) {
      activities();
    }
  }

  _checkInternetConnectivityusefulFacilities() async {
    var result = await Connectivity().checkConnectivity();
    if (result == ConnectivityResult.none) {
      Navigator.push(
          context,
          new MaterialPageRoute(
              builder: (BuildContext context) => new offline()));
    } else if (result == ConnectivityResult.mobile) {
      usefulFacilities();
    } else if (result == ConnectivityResult.wifi) {
      usefulFacilities();
    }
  }

  _checkInternetConnectivityourCampus() async {
    var result = await Connectivity().checkConnectivity();
    if (result == ConnectivityResult.none) {
      Navigator.push(
          context,
          new MaterialPageRoute(
              builder: (BuildContext context) => new offline()));
    } else if (result == ConnectivityResult.mobile) {
      ourCampus();
    } else if (result == ConnectivityResult.wifi) {
      ourCampus();
    }
  }

  _checkInternetConnectivityplansPolicies() async {
    var result = await Connectivity().checkConnectivity();
    if (result == ConnectivityResult.none) {
      Navigator.push(
          context,
          new MaterialPageRoute(
              builder: (BuildContext context) => new offline()));
    } else if (result == ConnectivityResult.mobile) {
      plansPolicies();
    } else if (result == ConnectivityResult.wifi) {
      plansPolicies();
    }
  }

  _checkInternetConnectivitygovernance() async {
    var result = await Connectivity().checkConnectivity();
    if (result == ConnectivityResult.none) {
      Navigator.push(
          context,
          new MaterialPageRoute(
              builder: (BuildContext context) => new offline()));
    } else if (result == ConnectivityResult.mobile) {
      governance();
    } else if (result == ConnectivityResult.wifi) {
      governance();
    }
  }

  _checkInternetConnectivityalumni() async {
    var result = await Connectivity().checkConnectivity();
    if (result == ConnectivityResult.none) {
      Navigator.push(
          context,
          new MaterialPageRoute(
              builder: (BuildContext context) => new offline()));
    } else if (result == ConnectivityResult.mobile) {
      alumni();
    } else if (result == ConnectivityResult.wifi) {
      alumni();
    }
  }

  _checkInternetConnectivityvasOverview() async {
    var result = await Connectivity().checkConnectivity();
    if (result == ConnectivityResult.none) {
      Navigator.push(
          context,
          new MaterialPageRoute(
              builder: (BuildContext context) => new offline()));
    } else if (result == ConnectivityResult.mobile) {
      vasOverview();
    } else if (result == ConnectivityResult.wifi) {
      vasOverview();
    }
  }
}
