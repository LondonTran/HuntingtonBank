import 'package:flutter/material.dart';
import 'package:huntington/constants.dart';
import 'package:huntington/ui/components/rounded_button.dart';

class LoginContainer extends StatefulWidget {
  @override
  _LoginContainerState createState() => _LoginContainerState();
}

class _LoginContainerState extends State<LoginContainer> {
  String email;
  String password;
  String errorMessage = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      width: 350.0,
      height: 250.0,
      child: Card(
        color: Colors.grey.shade100,
        child: Column(children: <Widget>[
          SizedBox(
            height: 10.0,
          ),
          TextFormField(
            cursorColor: Colors.green,
            keyboardType: TextInputType.emailAddress,
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.grey,
            ),
            onChanged: (value) {
              email = value;
            },
            decoration: kTextFieldDecoration.copyWith(
              hintText: 'Enter your Username',
              hintStyle: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          TextFormField(
            cursorColor: Colors.green,
            obscureText: true,
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.grey,
            ),
            onChanged: (value) {
              password = value;
            },
            decoration: kTextFieldDecoration.copyWith(
              hintText: 'Enter your Password',
              hintStyle: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
          RoundedButton(
            title: 'Log In',
            colour: Colors.green,
            onPressed: () {},
          ),
          Text(
            'Forgot Username or Password?',
            style: TextStyle(
              color: Colors.green,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          )
        ]),
      ),
    );
  }
}
