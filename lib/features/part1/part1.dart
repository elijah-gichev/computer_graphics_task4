import 'package:flutter/material.dart';

class Part1Page extends StatefulWidget {
  const Part1Page({Key? key}) : super(key: key);

  @override
  State<Part1Page> createState() => _Part1PageState();
}

class _Part1PageState extends State<Part1Page> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('заливка'),
      ),
      body: Center(
        child: GestureDetector(
          onTapDown: onTapDown,
          child: RepaintBoundary(
            child: Container(
              height: 400,
              width: 400,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black45,
                ),
                color: Colors.grey[200],
              ),
              // child: ImageGenerator(
              //   rd: Random(),
              //   numColors: Colors.primaries.length,
              // ),
              // child: CustomPaint(
              //   foregroundPainter: ImageGenerator(),
              // ),
            ),
          ),
        ),
      ),
    );
  }

  void onTapDown(TapDownDetails tapDownDetails) {
    print(tapDownDetails.localPosition);
  }
}
