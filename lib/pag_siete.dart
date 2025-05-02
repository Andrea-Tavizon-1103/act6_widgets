import 'package:flutter/material.dart';

class PantallaVII extends StatefulWidget {
  const PantallaVII({Key? key}) : super(key: key);

  @override
  _PantallaVIIState createState() => _PantallaVIIState();
}

class _PantallaVIIState extends State<PantallaVII> {
  bool _isFlat = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animación Física'),
        backgroundColor: Color(0xffb7c7e3),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            AnimatedPhysicalModel(
              duration: const Duration(milliseconds: 500),
              curve: Curves.fastOutSlowIn,
              elevation: _isFlat ? 0 : 6.0,
              shape: BoxShape.rectangle,
              shadowColor: Color(0xff000000),
              color: Color(0xffc8c8c8),
              child: const SizedBox(
                height: 120.0,
                width: 120.0,
                child: Icon(
                  Icons.android_outlined,
                  size: 60,
                  color: Colors.green,
                ),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffcedcf4),
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
              onPressed: () {
                setState(() {
                  _isFlat = !_isFlat;
                });
              },
              child: const Text(
                'Cambiar Elevación',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
