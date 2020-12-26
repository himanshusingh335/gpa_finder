import 'package:flutter/material.dart';
import 'class_gpa.dart';

class Sgpa extends StatefulWidget {
  @override
  createState() {
    return _GradeCalculate();
  }
}

class _GradeCalculate extends State<Sgpa> {
  String result = "0.0";
  var sub1 = Gpa();
  var sub2 = Gpa();
  var sub3 = Gpa();
  var sub4 = Gpa();
  var sub5 = Gpa();
  var sub6 = Gpa();
  var sub7 = Gpa();
  var sub8 = Gpa();
  var sub9 = Gpa();
  var sub10 = Gpa();
  var sub11 = Gpa();
  //String selectGrade;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
          child: Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  top: 35,
                  left: 10,
                ),
                child: Text(
                  "SGPA: " + result + "\n",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.orangeAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 20,
                ),
                child: ButtonBar(
                  children: <Widget>[
                    RaisedButton(
                        color: Colors.orange,
                        textColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0),
                        ),
                        elevation: 5,
                        child: Text("RESET"),
                        onPressed: () {
                          setState(() {
                            reset();
                          });
                        }),
                    RaisedButton(
                        color: Colors.orange,
                        textColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0),
                        ),
                        elevation: 5,
                        child: Text("CALCULATE"),
                        onPressed: () {
                          setState(() {
                            result = calculate();
                          });
                        }),
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView(
            children: <Widget>[
              makeApp(sub1),
              makeApp(sub2),
              makeApp(sub3),
              makeApp(sub4),
              makeApp(sub5),
              makeApp(sub6),
              makeApp(sub7),
              makeApp(sub8),
              makeApp(sub9),
              makeApp(sub10),
              makeApp(sub11),
            ],
          ),
        ),
      ],
    );
  }

  Widget makeApp(Gpa gpa) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              top: 5.0,
              bottom: 5.0,
              right: 10,
              left: 5,
            ),
            child: TextField(
              controller: gpa.credit,
              decoration: InputDecoration(
                hintText: "Credit",
                labelText: 'Subject credit',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0)),
              ),
              keyboardType: TextInputType.number,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              top: 5.0,
              bottom: 5.0,
              right: 10,
              left: 5,
            ),
            child: DropdownButton<String>(
              value: gpa.gradeSelected,
              icon: Icon(Icons.arrow_drop_down),
              iconSize: 25,
              elevation: 16,
              onChanged: (String newValue) {
                setState(() {
                  gpa.gradeSelected = newValue;
                });
              },
              items: <String>[
                "Enter Grade",
                "O",
                "A+",
                "A",
                "B+",
                "B",
                "C",
                "P",
                "F",
                "Ab",
                "I",
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }

  void reset() {
    result = "0.00";
  }

  String calculate() {
    var gradeof = new List(11);
    var creditof = new List(11);
    var gpoint = new List(11);
    gradeof[0] = sub1.gradeSelected;
    gradeof[1] = sub2.gradeSelected;
    gradeof[2] = sub3.gradeSelected;
    gradeof[3] = sub4.gradeSelected;
    gradeof[4] = sub5.gradeSelected;
    gradeof[5] = sub6.gradeSelected;
    gradeof[6] = sub7.gradeSelected;
    gradeof[7] = sub8.gradeSelected;
    gradeof[8] = sub9.gradeSelected;
    gradeof[9] = sub10.gradeSelected;
    gradeof[10] = sub11.gradeSelected;

    creditof[0] =
        int.parse((sub1.credit.text.length == 0) ? "0" : sub1.credit.text);
    creditof[1] =
        int.parse((sub2.credit.text.length == 0) ? "0" : sub2.credit.text);
    creditof[2] =
        int.parse((sub3.credit.text.length == 0) ? "0" : sub3.credit.text);
    creditof[3] =
        int.parse((sub4.credit.text.length == 0) ? "0" : sub4.credit.text);
    creditof[4] =
        int.parse((sub5.credit.text.length == 0) ? "0" : sub5.credit.text);
    creditof[5] =
        int.parse((sub6.credit.text.length == 0) ? "0" : sub6.credit.text);
    creditof[6] =
        int.parse((sub7.credit.text.length == 0) ? "0" : sub7.credit.text);
    creditof[7] =
        int.parse((sub8.credit.text.length == 0) ? "0" : sub8.credit.text);
    creditof[8] =
        int.parse((sub9.credit.text.length == 0) ? "0" : sub9.credit.text);
    creditof[9] =
        int.parse((sub10.credit.text.length == 0) ? "0" : sub10.credit.text);
    creditof[10] =
        int.parse((sub11.credit.text.length == 0) ? "0" : sub11.credit.text);

    String output = "";
    double sgpa, gpa = 0, credit = 0;

    for (int i = 0; i < 11; i++) {
      if (gradeof[i] == "O")
        gpoint[i] = 10;
      else if (gradeof[i] == "A+")
        gpoint[i] = 9;
      else if (gradeof[i] == "A")
        gpoint[i] = 8;
      else if (gradeof[i] == "B+")
        gpoint[i] = 7;
      else if (gradeof[i] == "B")
        gpoint[i] = 6;
      else if (gradeof[i] == "C")
        gpoint[i] = 5;
      else if (gradeof[i] == "P")
        gpoint[i] = 4;
      else if (gradeof[i] == "I")
        gpoint[i] = 0;
      else if (gradeof[i] == "Ab")
        gpoint[i] = 0;
      else if (gradeof[i] == "F")
        gpoint[i] = 0;
      else if (gradeof[i] == "Enter Grade")
        gpoint[i] = 0;
      else
        gpoint[i] = 0;
    }

    for (int j = 0; j < 11; j++) {
      gpa = gpa + (creditof[j] * gpoint[j]);
    }
    for (int k = 0; k < 11; k++) {
      credit = credit + creditof[k];
    }
    sgpa = gpa / credit;
    output = sgpa.toStringAsFixed(2);

    if (output == "NaN") output = "0.00";

    return output;
  }
}
