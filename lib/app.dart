import 'package:flutter/material.dart';
import 'package:flutter_app2/screens/home_screen.dart';
import 'package:flutter_app2/screens/login_screen.dart';

class AppRootWidget extends StatefulWidget {
  @override
  _AppRootWidgetState createState() => _AppRootWidgetState();
}

class _AppRootWidgetState extends State<AppRootWidget> {
  ThemeData get _themeData => new ThemeData(
        primaryColor: Colors.cyan,
        accentColor: Colors.indigo,
        scaffoldBackgroundColor: Colors.grey[300],
      );

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Main App',
      theme: _themeData,
      routes: {
        '/': (BuildContext context) => new HomeScreen(),
        '/login': (BuildContext context) => new LoginScreen(),
      },
    );
  }
}
