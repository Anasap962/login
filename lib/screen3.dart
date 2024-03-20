import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:anas_apa_/screen2.dart';

class screen3 extends StatefulWidget {
  const screen3({super.key});

  @override
  State<screen3> createState() => _screen3State();
}

class _screen3State extends State<screen3> {
  List<Color> color = [Colors.yellow, Colors.pink, Colors.blue];
  String name = 'FLUTTER';
  int colorChnane = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  changeName();
                  colorChnane = (colorChnane + 1) % color.length;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(99),
                    child: Text(
                      name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 60,
                          color: Colors.white),
                    ),
                    width: 500,
                    height: 500,
                    color: color[colorChnane],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void changeName() {
    name = 'welcome';
  }
}
