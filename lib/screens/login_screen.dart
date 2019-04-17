import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: new Container(
        width: width,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new BasicButton("Login...", () => print('Log in!')),
            new BasicButton("Create Account", () => print('Create Account!')),
          ],
        ),
      ),
    );
  }
}

class BasicButton extends StatelessWidget {
  final String buttonTitle;
  final void Function() onPressed;

  BasicButton( this.buttonTitle,  this.onPressed);

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.all(8.0),
      child: new RaisedButton(
        onPressed: onPressed,
        color: Colors.white,
        child: Container(
          width: 230.0,
          height: 50.0,
          alignment: Alignment.center,
          child: new Text(buttonTitle,
              textAlign: TextAlign.center,
              style: new TextStyle(
                fontSize: 16.0,
              )),
        ),
      ),
    );
  }
}
