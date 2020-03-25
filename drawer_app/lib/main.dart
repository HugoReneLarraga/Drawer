
import 'package:drawer_app/vista/vuelosBD.dart';
import 'package:drawer_app/vista/vuelosWeb.dart';
import 'package:drawer_app/vista/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Drawer Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:Home() ,
      routes: <String, WidgetBuilder>{
        VuelosBD.routeName: (BuildContext context) => VuelosBD(),
        VuelosWeb.routeName: (BuildContext context) => VuelosWeb(),
        //'/': (BuildContext context) => Home(),
      }

    );
  }
}
