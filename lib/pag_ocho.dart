import 'package:flutter/material.dart';

class PaginaVIII extends StatefulWidget {
  const PaginaVIII({Key? key}) : super(key: key);

  @override
  State<PaginaVIII> createState() => _PaginaVIIIState();
}

class _PaginaVIIIState extends State<PaginaVIII> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animación de Posición'),
        backgroundColor: Color(0xfff9a085),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 30),
            SizedBox(
              width: 200,
              height: 350,
              child: Stack(
                children: <Widget>[
                  AnimatedPositioned(
                    width: selected ? 200.0 : 50.0,
                    height: selected ? 50.0 : 200.0,
                    top: selected ? 50.0 : 150.0,
                    duration: const Duration(seconds: 2),
                    curve: Curves.fastOutSlowIn,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selected = !selected;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xff926355),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Center(
                          child: Icon(
                            selected ? Icons.expand_more : Icons.expand_less,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
