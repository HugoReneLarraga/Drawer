import 'package:flutter/material.dart';
import 'package:drawer_app/modelo/bitacora.dart';
import 'package:drawer_app/modelo/elementoLista.dart';


class VuelosListas extends StatelessWidget {

  static String routeName = "/vuelosListas";

  const VuelosListas({Key key}): super(key: key);

  List<bitacora> contruirLista() {

    var vuelo1 = bitacora(fecha: '11/02/2019',dron: 'Phantom 4 pro',detalles: 'Vuelo sin contratiempos');
    var vuelo2 = bitacora(fecha: '12/02/2019',dron: 'Mavic pro',detalles: 'Vuelo sin contratiempos');
    var vuelo3 = bitacora(fecha: '13/02/2019',dron: 'Spark',detalles: 'Vuelo sin contratiempos');
    var vuelo4 = bitacora(fecha: '14/02/2019',dron: 'Matrice 600 pro',detalles: 'Vuelo sin contratiempos');
    var vuelo5 = bitacora(fecha: '15/02/2019',dron: 'Mavic 2',detalles: 'Vuelo sin contratiempos');
    var vuelo6 = bitacora(fecha: '16/02/2019',dron: 'Mini Mavic',detalles: 'Vuelo sin contratiempos');
    var vuelo7 = bitacora(fecha: '17/02/2019',dron: 'Inspire',detalles: 'Vuelo sin contratiempos');

    Map<int,bitacora> mapaVuelos={
      0: vuelo1,
      1: vuelo1,
      2: vuelo2,
      3: vuelo3,
      4: vuelo4,
      5: vuelo5,
      6: vuelo6,
      7: vuelo7,
      8: vuelo4,
      9: vuelo5,
      10: vuelo6,
      11: vuelo7
    };
    //print(mapaVuelos[1].detalles);
   return List.generate(mapaVuelos.length, (i) {
     //print('$i');
     return bitacora(

       fecha: mapaVuelos[i].fecha,
       dron: mapaVuelos[i].dron,
         detalles: mapaVuelos[i].detalles
     );
   });
  }


  List<ListItem> bitacoraVuelos(){

    return contruirLista()
        .map((bitacora)=> ListItem(registro: bitacora))
        .toList();

  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return ListView(
          children: bitacoraVuelos(),
    );


  }
}