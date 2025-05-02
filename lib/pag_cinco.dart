import 'package:flutter/material.dart';

class PantallaV extends StatefulWidget {
  const PantallaV({Key? key}) : super(key: key);

  @override
  State<PantallaV> createState() => _PantallaVState();
}

class _PantallaVState extends State<PantallaV> {
  double opacityLevel = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animación de Opacidad'),
        centerTitle: true,
        backgroundColor: Color(0xffdb83c7),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            AnimatedOpacity(
              opacity: opacityLevel,
              duration: const Duration(seconds: 2),
              child: const FlutterLogo(
                size: 50,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('Fade Logo'),
              onPressed: () {
                setState(() {
                  opacityLevel = opacityLevel == 0 ? 1.0 : 0.0;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
