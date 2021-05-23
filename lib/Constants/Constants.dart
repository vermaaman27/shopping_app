import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Constants {
  static SharedPreferences preferences;
}

TextStyle kBoldTextStyle = TextStyle(
    fontSize: 50,
    fontFamily: 'Satisfy',
    fontWeight: FontWeight.bold,
    color: Colors.blue[700]);

TextStyle kLightTextStyle = TextStyle(
    fontSize: 40,
    fontFamily: 'Satisfy',
    color: Colors.blue,
    textBaseline: TextBaseline.alphabetic);

OutlineInputBorder kFocusedBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(20),
  borderSide: BorderSide(color: Colors.white, width: 0.4),
);
OutlineInputBorder kEnabledBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
    borderSide: BorderSide(color: Colors.white, width: 0.2));
