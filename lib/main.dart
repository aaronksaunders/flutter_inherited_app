// This example shows a [Scaffold] with an [AppBar], a [BottomAppBar] and a
// [FloatingActionButton]. The [body] is a [Text] placed in a [Center] in order
// to center the text within the [Scaffold] and the [FloatingActionButton] is
// centered and docked within the [BottomAppBar] using
// [FloatingActionButtonLocation.centerDocked]. The [FloatingActionButton] is
// connected to a callback that increments a counter.

import 'package:flutter/material.dart';
import 'package:flutter_app2/app.dart';
import 'package:flutter_app2/app_state_container.dart';

void main() {
  // Wrap your App in your new storage container
  runApp(new AppStateContainer(
    child: new AppRootWidget(),
  ));
}
