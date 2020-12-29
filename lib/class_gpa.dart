import 'package:flutter/material.dart';

class Gpa {
  var credit = TextEditingController();
  String gradeSelected;
  String subjectNo;

  void resetEachGrade() {
    credit.text = "";
    gradeSelected = "Enter Grade";
  }

  Gpa() {
    credit.text = "";
    gradeSelected = "Enter Grade";
  }

  Gpa.subjectNo(this.subjectNo) {
    credit.text = "";
    gradeSelected = "Enter Grade";
  }
}
