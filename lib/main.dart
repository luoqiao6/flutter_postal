import 'package:flutter/material.dart';
import 'package:flutter_postal/pages/welcome_page.dart';
import 'package:flutter_postal/pages/register_page.dart';
import 'package:flutter_postal/pages/user_page.dart';
import 'package:flutter_postal/pages/new_track_page.dart';
import 'package:flutter_postal/pages/package_list.dart';


void main() => runApp(PostalApp());

class PostalApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        '/welcome': (BuildContext context) => WelcomePage(),
        '/package_list': (BuildContext context) => PackageListPage(),
        '/new': (BuildContext context) => NewTrackPage(),
        '/register': (BuildContext context) => RegisterPage(),
        '/user': (BuildContext context) => UserPage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WelcomePage(),
      //PackageList(),//NewTrackPage(),//UserPage(),//RegisterPage(),//WelcomePage(),
    );
  }
}

