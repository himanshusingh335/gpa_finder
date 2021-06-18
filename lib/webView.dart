import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WebView extends StatefulWidget {
  @override
  createState() => AppLayout();
}

class AppLayout extends State<WebView> {
  _launchURL1() async {
    const url = 'https://www.srmist.edu.in/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURL2() async {
    const url = 'https://academia.srmist.edu.in/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURL3() async {
    const url = 'https://care.srmist.edu.in/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURL4() async {
    const url = 'https://feekart.srmuniv.ac.in/srmopp/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURL5() async {
    const url = 'http://emanager.srmist.edu.in/elibrary/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURL6() async {
    const url = 'http://empower.srmist.edu.in/login/index.php';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURL7() async {
    const url = 'https://ssp.srmist.edu.in/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURL8() async {
    const url = 'https://evarsity.srmist.edu.in/srmsip/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Card(
          child: ListTile(
            leading: Icon(
              Icons.web,
              color: Colors.green,
              size: 72.0,
            ),
            title: Text('SRM Main Website'),
            subtitle: Text('The Main Website of SRM-IST KTR campus '),
            isThreeLine: true,
            onTap: () {
              _launchURL1();
            },
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(
              Icons.assessment,
              color: Colors.red,
              size: 72.0,
            ),
            title: Text('Academia'),
            subtitle: Text(
                'Check Important information such as your marks, attendance, timetable etc.'),
            isThreeLine: true,
            onTap: () {
              _launchURL2();
            },
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(
              Icons.work,
              color: Colors.brown,
              size: 72.0,
            ),
            title: Text('SRM Care'),
            subtitle: Text(
                'Utitlize e-Tools such as eLab, eCirricula, eCircuit, eSkill, eVerify, eTrain'),
            isThreeLine: true,
            onTap: () {
              _launchURL3();
            },
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(
              Icons.attach_money,
              color: Colors.green,
              size: 72.0,
            ),
            title: Text('FeeKart'),
            subtitle: Text('Pay your colleges fees via the FeeKart Portal'),
            isThreeLine: true,
            onTap: () {
              _launchURL4();
            },
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(
              Icons.local_library,
              color: Colors.orangeAccent,
              size: 72.0,
            ),
            title: Text('SRM e-Library'),
            subtitle: Text(
                'Online portal for downloading eBooks, previous year question papers among other services'),
            isThreeLine: true,
            onTap: () {
              _launchURL5();
            },
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(
              Icons.accessibility,
              color: Colors.lightBlueAccent,
              size: 72.0,
            ),
            title: Text('CDC Empower'),
            subtitle: Text('The Official Career Development Centre Website'),
            isThreeLine: true,
            onTap: () {
              _launchURL6();
            },
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(
              Icons.network_wifi,
              color: Colors.blueGrey,
              size: 72.0,
            ),
            title: Text('SRM WIFI Password Reset'),
            subtitle: Text('ITKM Website to reset SRM WIFI Password'),
            isThreeLine: true,
            onTap: () {
              _launchURL7();
            },
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(
              Icons.info,
              color: Colors.green,
              size: 72.0,
            ),
            title: Text('SRM Student Information Portal'),
            subtitle: Text('Student information portal for SRM students'),
            isThreeLine: true,
            onTap: () {
              _launchURL8();
            },
          ),
        ),
      ],
    );
  }
}
