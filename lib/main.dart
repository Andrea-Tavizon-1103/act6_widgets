import 'package:act6_widgets/pag_tres.dart';
import 'package:flutter/material.dart';
import 'package:act6_widgets/pag_inicial.dart';
import 'package:act6_widgets/pag_dos.dart';
import 'package:act6_widgets/pag_cuatro.dart';
import 'package:act6_widgets/pag_cinco.dart';
import 'package:act6_widgets/pag_seis.dart';
import 'package:act6_widgets/pag_siete.dart'; // Asegúrate de tener este import si 'PantallaVI' está en otro archivo
import 'package:act6_widgets/pag_ocho.dart';
import 'package:act6_widgets/pag_nueve.dart';
import 'package:act6_widgets/pag_diez.dart';
import 'package:act6_widgets/pag_once.dart';

void main() => runApp(const MiRutas());

class MiRutas extends StatelessWidget {
  const MiRutas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas entre paginas',
      initialRoute: '/',
      routes: {
        '/': (context) => const PantallaI(titulo: 'Pantalla Principal'),
        '/pantalla2': (context) => const PantallaII(),
        '/pantalla3': (context) => const PantallaIII(),
        '/pantalla4': (context) => const PantallaIV(),
        '/pantalla5': (context) => const PantallaV(),
        '/pantalla6': (context) => const PantallaVI(),
        '/pantalla7': (context) => const PantallaVII(),
        '/pantalla8': (context) => const PaginaVIII(),
        '/pantalla9': (context) => const PantallaIX(),
        '/pantalla10': (context) => const PantallaX(),
        '/pantalla11': (context) => const PantallaXI(),
      },
    );
  }
}
