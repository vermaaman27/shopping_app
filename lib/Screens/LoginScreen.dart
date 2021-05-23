import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shopping_app/Screens/HomeScreen.dart';
import 'package:shopping_app/Screens/RegistrationScreen.dart';
import 'package:shopping_app/Widgets/IconButton.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);
  static const routeName = '/LoginScreen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.green, Colors.blue]),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 10,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * .03,
                  vertical: MediaQuery.of(context).size.width * .06),
              child: Card(
                color: Colors.transparent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(top: 20.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Login",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            TextFormField(
                              decoration: InputDecoration(
                                icon: Icon(
                                  Icons.email_outlined,
                                  size: 30,
                                ),
                                hintText: 'Enter your email',
                                labelText: 'Email',
                                focusColor: Colors.black,
                                hoverColor: Colors.black,
                                fillColor: Colors.white,
                                errorStyle: TextStyle(color: Colors.yellow),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                              keyboardType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Please enter a valid email ';
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 10),
                            TextFormField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                icon: Icon(Icons.phone),
                                hintText: 'Enter a password',
                                labelText: 'Password',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                focusColor: Colors.black,
                                hoverColor: Colors.black,
                                errorStyle: TextStyle(color: Colors.yellow),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                ),
                              ),
                              validator: (value) {
                                if (value.length != 10 && value.length != 12) {
                                  return 'Enter a valid phone number';
                                }
                                if (value.isEmpty) {
                                  return 'Please enter valid phone number';
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 10),
                            SizedBox(
                              height: 20,
                            ),
                            Center(
                              child: Container(
                                  child: ElevatedButton(
                                child: Text('Submit'),
                                onPressed: () {
                                  // It returns true if the form is valid, otherwise returns false
                                  if (_formKey.currentState.validate()) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => HomeScreen()),
                                    );
                                  }
                                },
                              )),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          RegistrationScreen()),
                                );
                              },
                              child: Text("Want to register"))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                IconButtonWidget(
                  onPress: () {
                    print("facebook");
                  },
                  icon: FontAwesomeIcons.facebook,
                ),
                IconButtonWidget(
                  onPress: () {
                    print("github");
                  },
                  icon: FontAwesomeIcons.github,
                ),
                IconButtonWidget(
                  onPress: () {
                    print("Google");
                  },
                  icon: FontAwesomeIcons.google,
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.04,
          )
        ],
      ),
    );
  }
}
