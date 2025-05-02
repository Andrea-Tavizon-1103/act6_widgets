import 'package:flutter/material.dart';

class PantallaXI extends StatefulWidget {
  const PantallaXI({super.key});

  @override
  State<PantallaXI> createState() => _PantallaXIState();
}

class _PantallaXIState extends State<PantallaXI> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador Animado'),
        backgroundColor: Color(0xff94d8f8),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return ScaleTransition(scale: animation, child: child);
              },
              child: Text(
                '$_count',
                key: ValueKey<int>(_count),
                style: const TextStyle(
                  fontSize: 40,
                  color: Color(0xff000000),
                  decoration: TextDecoration.underline,
                  decorationColor: Color(0xffcf4e4e),
                  decorationThickness: 2,
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _count += 1;
                });
              },
              child: const Text('Add'),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
