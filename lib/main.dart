import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:gpacalculator/sgpa.dart';
import 'package:gpacalculator/webView.dart';

void main() {
  runApp(GpaCalc());
}

class GpaCalc extends StatefulWidget {
  @override
  createState() {
    return _GpaCalc();
  }
}

class _GpaCalc extends State<GpaCalc> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    Sgpa(),
    WebView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      title: "SRM GPA Finder",
      home: Scaffold(
        appBar: AppBar(
          title: Text("SRM GPA Finder"),
          backgroundColor: Colors.orange,
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.orange,
                ),
                child: Text(
                  "SRM GPA Finder",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.help),
                title: Text("Help"),
                onTap: () {
                  _launchURL();
                },
              ),
              ListTile(
                leading: Icon(Icons.info),
                title: Text('Developer information'),
                onTap: () {
                  _launchURL2();
                },
              ),
            ],
          ),
        ),
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.receipt),
              label: ' SGPA Calculator',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.link),
              label: 'SRM Links',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      ),
    );
  }

  _launchURL() async {
    const url =
        'https://webstor.srmist.edu.in/web_assets/downloads/2020/btech-curricula-reg-2018.pdf';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURL2() async {
    const url = 'https://himanshusingh335.wixsite.com/my-profile';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
