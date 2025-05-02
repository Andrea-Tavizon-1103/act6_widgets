import 'package:flutter/material.dart';

class PantallaX extends StatefulWidget {
  const PantallaX({super.key});

  @override
  State<PantallaX> createState() => _PantallaXState();
}

class _PantallaXState extends State<PantallaX> {
  double _size = 300;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animación de Tamaño"),
        centerTitle: true,
        backgroundColor: const Color(0xffca9494),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _size = _size == 300 ? 100 : 300;
            });
          },
          child: AnimatedContainer(
            width: _size,
            height: _size,
            duration: const Duration(seconds: 1),
            curve: Curves.easeInOut,
            color: const Color(0xb6c3c3c3),
            child: const FlutterLogo(),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _size = _size == 300 ? 100 : 300;
          });
        },
        backgroundColor: const Color(0xff85a89c),
        child: const Icon(Icons.change_circle),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Configuración',
          ),
        ],
      ),
    );
  }
}
