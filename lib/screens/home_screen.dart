import 'package:flutter/material.dart';
import 'package:flutter_app2/app_state_container.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  AppState appState;

  Widget get _pageToDisplay {
    if (appState.isLoading) {
      return new Center(
        child: new CircularProgressIndicator(),
      );
    } else {
      return new Center(child: new Text(appState.user.displayName));
    }
  }

  @override
  Widget build(BuildContext context) {

    // get the state...
    appState = AppStateContainer.of(context).state;


    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Home Screen'),
      ),
      body: _pageToDisplay,
    );
  }
}
