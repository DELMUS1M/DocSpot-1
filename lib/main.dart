import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sreevaidyanatham/Models/user.dart';
import 'package:sreevaidyanatham/Screens/wrapper.dart';
import 'package:sreevaidyanatham/Services/auth.dart';
import 'package:sreevaidyanatham/Shared/loading_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.lightGreen,
          accentColor: Colors.lightGreenAccent,
        ),
        debugShowCheckedModeBanner: false,
        home: Wrapper(),
      ),
    );
  }
}
