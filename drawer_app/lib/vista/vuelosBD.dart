import 'package:flutter/material.dart';

class VuelosBD extends StatelessWidget {
  static String routeName = "/vuelosBD";

  const VuelosBD({Key key}): super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text("Vuelos Sqlite"),
      ),
      body: Container(
        child: Center(
          child: Text("En construcción"),
        ),
      ),
      
    );
  }
}