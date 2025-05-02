import 'package:flutter/material.dart';

class PantallaIX extends StatefulWidget {
  const PantallaIX({Key? key}) : super(key: key);

  @override
  State<PantallaIX> createState() => _PantallaIXState();
}

class _PantallaIXState extends State<PantallaIX> {
  double turns = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rotación Animada'),
        backgroundColor: Color(0xffffe699),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(50),
              child: AnimatedRotation(
                turns: turns,
                duration: const Duration(seconds: 1),
                child: const FlutterLogo(
                  size: 100,
                ),
              ),
            ),
            ElevatedButton(
              child: const Text('Rotar Logo'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors
                    .orangeAccent, // Cambiado de primary a backgroundColor
              ),
              onPressed: () {
                setState(() => turns += 1 / 4);
              },
            ),
          ],
        ),
      ),
    );
  }
}
