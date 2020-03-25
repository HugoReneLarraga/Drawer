
import 'package:flutter/material.dart';
import 'package:drawer_app/modelo/bitacora.dart';

class VueloDetalles extends StatelessWidget {
  final bitacora vuelo;

  VueloDetalles({this.vuelo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detalles del vuelo"),
      ),
      body: Center(
        child: Column(

          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(20.0),
              //color: Colors.amber[600],
              child: Text('Modelo de dron: ' + vuelo.dron)
            ),
            Container(
                margin: const EdgeInsets.all(20.0),
                //color: Colors.amber[600],
                child: Text('Fecha del vuelo: ' + vuelo.fecha)
            ),
            Container(
                margin: const EdgeInsets.all(20.0),
                color: Colors.amber[600],
                child: Text('Detalles del vuelo: ' + vuelo.detalles)
            ),
            RaisedButton(
              onPressed: () {
                // Navigate back to first route when tapped.
                Navigator.pop(context);
              },
              child: Text('Regreso'),
            ),
          ],

        )


      ),
    );
  }
}