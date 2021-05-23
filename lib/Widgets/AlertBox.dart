import 'package:flutter/material.dart';

showAlertDialog(BuildContext context, String titleText, String messageBody) {
  // set up the button
  Widget okButton = ElevatedButton.icon(
    icon: Icon(Icons.close),
    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.teal)),
    label: Text(
      "Back to registration",
      style: TextStyle(color: Colors.white),
      maxLines: 7,
    ),
    onPressed: () {
      Navigator.pushReplacementNamed(context, '/');
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Row(
      children: [
        Icon(
          Icons.check,
          size: 30,
          color: Colors.green,
        ),
        Text(
          "$titleText",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    ),
    backgroundColor: Colors.white,
    content: Row(
      children: [
        Text(
          "$messageBody",
          style: TextStyle(color: Colors.black),
        ),
      ],
    ),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
