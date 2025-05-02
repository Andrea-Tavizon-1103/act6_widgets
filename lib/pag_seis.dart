import 'package:flutter/material.dart';

class PantallaVI extends StatefulWidget {
  const PantallaVI({Key? key}) : super(key: key);

  @override
  State<PantallaVI> createState() => _PantallaVIState();
}

class _PantallaVIState extends State<PantallaVI> {
  double padValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejemplo AnimatedPadding'),
        centerTitle: true,
        backgroundColor: Color(0xffbcb08b),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orangeAccent,
                ),
                child: const Text('Change padding'),
                onPressed: () {
                  setState(() {
                    padValue = padValue == 0.0 ? 100.0 : 0.0;
                  });
                },
              ),
              const SizedBox(width: 20),
              Text('Padding = $padValue'),
            ],
          ),
          const SizedBox(height: 20),
          AnimatedPadding(
            padding: EdgeInsets.all(padValue),
            duration: const Duration(seconds: 2),
            curve: Curves.easeInOut,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4,
              color: Colors.brown,
            ),
          ),
        ],
      ),
    );
  }
}
