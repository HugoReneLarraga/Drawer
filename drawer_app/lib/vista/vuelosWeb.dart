import 'package:flutter/material.dart';

class VuelosWeb extends StatelessWidget {
  static String routeName = "/vuelosWeb";

  const VuelosWeb({Key key}): super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text("Vuelos Web"),
      ),
      body: Container(
        child: Center(
          child: Text("En construcción"),
        ),
      ),

    );
  }
}