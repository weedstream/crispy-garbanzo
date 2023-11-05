import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Drag App'),
        ),
        body: Column(
          children: [
            Container(
              height: 100,
            ),
            PanDrag(),
          ],
        ),
      ),
    );
  }
}

class PanDrag extends StatefulWidget {
  const PanDrag({super.key});
  @override
  State<PanDrag> createState() => _PanDragState();
}

class _PanDragState extends State<PanDrag> {
  bool _dragging = false;
  Offset _move = Offset.zero;
  int _DragCount = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Coordinate: (${_move.dx.toStringAsFixed(2)}, ${_move.dy.toStringAsFixed(2)})'),
        GestureDetector(
          onPanStart: (DragStartDetails details) {
            print(details);
            setState(() {
              _move = Offset.zero;
              _dragging = true;
            });
          },
          onPanUpdate: (DragUpdateDetails details) {
            print(details);
            setState(() {
              _move += details.delta;
            });
          },
          onPanEnd: (DragEndDetails details) {
            print("Sudah Di Update");
            print(details);
            setState(() {
              _dragging = false;
              _DragCount++;
            });
          },
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Container(
              color: Colors.blue,
              height: 200,
              width: 200,
              child: Center(
                child: Transform.translate(
                  offset: _move,
                  child: Text('Drag me'),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
