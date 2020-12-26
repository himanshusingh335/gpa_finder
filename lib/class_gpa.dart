import 'package:flutter/material.dart';

class Gpa {
  var credit = TextEditingController();
  String gradeSelected;

  void resetEachGrade() {
    credit.text = "";
    gradeSelected = "Enter Grade";
  }

  Gpa() {
    credit.text = "";
    gradeSelected = "Enter Grade";
  }
}
