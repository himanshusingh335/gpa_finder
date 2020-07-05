import 'package:flutter/material.dart';

class Sgpa extends StatefulWidget {
  @override
  createState() {
    return _GradeCalculate();
  }
}

class _GradeCalculate extends State<Sgpa> {
  TextEditingController credit1 = TextEditingController();
  TextEditingController credit2 = TextEditingController();
  TextEditingController credit3 = TextEditingController();
  TextEditingController credit4 = TextEditingController();
  TextEditingController credit5 = TextEditingController();
  TextEditingController credit6 = TextEditingController();
  TextEditingController credit7 = TextEditingController();
  TextEditingController credit8 = TextEditingController();
  TextEditingController credit9 = TextEditingController();
  TextEditingController credit10 = TextEditingController();
  TextEditingController credit11 = TextEditingController();

  String result = "";
  String dropdownValue1 = "Enter Grade for subject";
  String dropdownValue2 = "Enter Grade for subject";
  String dropdownValue3 = "Enter Grade for subject";
  String dropdownValue4 = "Enter Grade for subject";
  String dropdownValue5 = "Enter Grade for subject";
  String dropdownValue6 = "Enter Grade for subject";
  String dropdownValue7 = "Enter Grade for subject";
  String dropdownValue8 = "Enter Grade for subject";
  String dropdownValue9 = "Enter Grade for subject";
  String dropdownValue10 = "Enter Grade for subject";
  String dropdownValue11 = "Enter Grade for subject";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Card(
          child: Center(
            child: Text(
              "SGPA: " + result + "\n",
              style: TextStyle(
                fontSize: 30,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        RaisedButton(
            color: Colors.orange,
            textColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(18.0),
            ),
            elevation: 5,
            child: Text("Calculate"),
            onPressed: () {
              setState(() {
                result = calculate();
              });
            }),
        Expanded(
          child: ListView(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 5.0,
                        bottom: 5.0,
                        right: 10,
                      ),
                      child: TextField(
                        controller: credit1,
                        decoration: InputDecoration(
                          hintText: "Credit",
                          labelText: 'Subject-1',
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
                      ),
                      child: DropdownButton<String>(
                        value: dropdownValue1,
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 25,
                        elevation: 16,
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue1 = newValue;
                          });
                        },
                        items: <String>[
                          "Enter Grade for subject",
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
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 5.0,
                        bottom: 5.0,
                        right: 10,
                      ),
                      child: TextField(
                        controller: credit2,
                        decoration: InputDecoration(
                          hintText: "Credit",
                          labelText: 'Subject-2',
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
                      ),
                      child: DropdownButton<String>(
                        value: dropdownValue2,
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 25,
                        elevation: 16,
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue2 = newValue;
                          });
                        },
                        items: <String>[
                          "Enter Grade for subject",
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
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 5.0,
                        bottom: 5.0,
                        right: 10,
                      ),
                      child: TextField(
                        controller: credit3,
                        decoration: InputDecoration(
                          hintText: "Credit",
                          labelText: 'Subject-3',
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
                      ),
                      child: DropdownButton<String>(
                        value: dropdownValue3,
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 25,
                        elevation: 16,
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue3 = newValue;
                          });
                        },
                        items: <String>[
                          "Enter Grade for subject",
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
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 5.0,
                        bottom: 5.0,
                        right: 10,
                      ),
                      child: TextField(
                        controller: credit4,
                        decoration: InputDecoration(
                          hintText: "Credit",
                          labelText: 'Subject-4',
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
                      ),
                      child: DropdownButton<String>(
                        value: dropdownValue4,
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 25,
                        elevation: 16,
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue4 = newValue;
                          });
                        },
                        items: <String>[
                          "Enter Grade for subject",
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
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 5.0,
                        bottom: 5.0,
                        right: 10,
                      ),
                      child: TextField(
                        controller: credit5,
                        decoration: InputDecoration(
                          hintText: "Credit",
                          labelText: 'Subject-5',
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
                      ),
                      child: DropdownButton<String>(
                        value: dropdownValue5,
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 25,
                        elevation: 16,
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue5 = newValue;
                          });
                        },
                        items: <String>[
                          "Enter Grade for subject",
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
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 5.0,
                        bottom: 5.0,
                        right: 10,
                      ),
                      child: TextField(
                        controller: credit6,
                        decoration: InputDecoration(
                          hintText: "Credit",
                          labelText: 'Subject-6',
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
                      ),
                      child: DropdownButton<String>(
                        value: dropdownValue6,
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 25,
                        elevation: 16,
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue6 = newValue;
                          });
                        },
                        items: <String>[
                          "Enter Grade for subject",
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
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 5.0,
                        bottom: 5.0,
                        right: 10,
                      ),
                      child: TextField(
                        controller: credit7,
                        decoration: InputDecoration(
                          hintText: "Credit",
                          labelText: 'Subject-7',
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
                      ),
                      child: DropdownButton<String>(
                        value: dropdownValue7,
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 25,
                        elevation: 16,
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue7 = newValue;
                          });
                        },
                        items: <String>[
                          "Enter Grade for subject",
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
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 5.0,
                        bottom: 5.0,
                        right: 10,
                      ),
                      child: TextField(
                        controller: credit8,
                        decoration: InputDecoration(
                          hintText: "Credit",
                          labelText: 'Subject-8',
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
                      ),
                      child: DropdownButton<String>(
                        value: dropdownValue8,
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 25,
                        elevation: 16,
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue8 = newValue;
                          });
                        },
                        items: <String>[
                          "Enter Grade for subject",
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
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 5.0,
                        bottom: 5.0,
                        right: 10,
                      ),
                      child: TextField(
                        controller: credit9,
                        decoration: InputDecoration(
                          hintText: "Credit",
                          labelText: 'Subject-9',
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
                      ),
                      child: DropdownButton<String>(
                        value: dropdownValue9,
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 25,
                        elevation: 16,
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue9 = newValue;
                          });
                        },
                        items: <String>[
                          "Enter Grade for subject",
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
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 5.0,
                        bottom: 5.0,
                        right: 10,
                      ),
                      child: TextField(
                        controller: credit10,
                        decoration: InputDecoration(
                          hintText: "Credit",
                          labelText: 'Subject-10',
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
                      ),
                      child: DropdownButton<String>(
                        value: dropdownValue10,
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 25,
                        elevation: 16,
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue10 = newValue;
                          });
                        },
                        items: <String>[
                          "Enter Grade for subject",
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
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 5.0,
                        bottom: 5.0,
                        right: 10,
                      ),
                      child: TextField(
                        controller: credit11,
                        decoration: InputDecoration(
                          hintText: "Credit",
                          labelText: 'Subject-11',
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
                      ),
                      child: DropdownButton<String>(
                        value: dropdownValue11,
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 25,
                        elevation: 16,
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue11 = newValue;
                          });
                        },
                        items: <String>[
                          "Enter Grade for subject",
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
              ),
            ],
          ),
        ),
      ],
    );
  }

  String calculate() {
    var gradeof = new List(11);
    var creditof = new List(11);
    var gpoint = new List(11);
    gradeof[0] = dropdownValue1;
    gradeof[1] = dropdownValue2;
    gradeof[2] = dropdownValue3;
    gradeof[3] = dropdownValue4;
    gradeof[4] = dropdownValue5;
    gradeof[5] = dropdownValue6;
    gradeof[6] = dropdownValue7;
    gradeof[7] = dropdownValue8;
    gradeof[8] = dropdownValue9;
    gradeof[9] = dropdownValue10;
    gradeof[10] = dropdownValue11;
    creditof[0] = int.parse((credit1.text.length == 0) ? "0" : credit1.text);
    creditof[1] = int.parse((credit2.text.length == 0) ? "0" : credit2.text);
    creditof[2] = int.parse((credit3.text.length == 0) ? "0" : credit3.text);
    creditof[3] = int.parse((credit4.text.length == 0) ? "0" : credit4.text);
    creditof[4] = int.parse((credit5.text.length == 0) ? "0" : credit5.text);
    creditof[5] = int.parse((credit6.text.length == 0) ? "0" : credit6.text);
    creditof[6] = int.parse((credit7.text.length == 0) ? "0" : credit7.text);
    creditof[7] = int.parse((credit8.text.length == 0) ? "0" : credit8.text);
    creditof[8] = int.parse((credit9.text.length == 0) ? "0" : credit9.text);
    creditof[9] = int.parse((credit10.text.length == 0) ? "0" : credit10.text);
    creditof[10] = int.parse((credit11.text.length == 0) ? "0" : credit11.text);
    String output = "";
    double sgpa,
        gpa = 0,
        credit = 0;

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
      else if (gradeof[i] == "Enter Grade for subject")
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
