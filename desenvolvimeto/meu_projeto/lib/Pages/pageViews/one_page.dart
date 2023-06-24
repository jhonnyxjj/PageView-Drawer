import 'package:flutter/material.dart';

class OnePage extends StatelessWidget {
  const OnePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 300,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.indigo,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(100),
          ),
          child: const Center(
            child: Text(
              'BEM VINDO',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
              ),
            ),
          ),
        ),
        Row(
          children: [
            Container(
              color: Colors.red,
              height: 100,
              width: 200,
              child: const Center(
                child: Text(
                  "ATQ",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            Container(
              color: Colors.black,
              height: 100,
              width: 192,
              child: const Center(
                child: Text(
                  "DEF",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
