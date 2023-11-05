import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Gesture App'),
        ),
        body: Column(
          children: [
            HorizontalDrag(),
            Divider(),
//VerticalDrag(),
          ],
        ),
      ),
    );
  }
}

class HorizontalDrag extends StatefulWidget {
  const HorizontalDrag({super.key});
  @override
  State<HorizontalDrag> createState() => _HorizontalDragState();
}

class _HorizontalDragState extends State<HorizontalDrag> {
  bool _dragging = false;
  Offset _move = Offset.zero;
  int _DragCount = 0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragStart: (DragStartDetails details) {
        setState(() {
          _move = Offset.zero;
          _dragging = true;
        });
      },
      onHorizontalDragUpdate: (DragUpdateDetails details) {
        setState(() {
          _move += details.delta;
        });
      },
      onHorizontalDragEnd: (DragEndDetails details) {
        setState(() {
          _dragging = false;
          _DragCount++;
        });
      },
      child: Container(
        color: Colors.grey,
        child: Center(
          child: Transform.translate(
            offset: _move,
            child: Text(
              _dragging ? "DRAGGING" : "Drags: $_DragCount",
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
        ),
      ),
    );
  }
}

class VerticalDrag extends StatefulWidget {
  const VerticalDrag({super.key});
  @override
  State<VerticalDrag> createState() => _VerticalDragState();
}

class _VerticalDragState extends State<VerticalDrag> {
  bool _dragging = false;
  Offset _move = Offset.zero;
  int _DragCount = 0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragStart: (DragStartDetails details) {
        setState(() {
          _move = Offset.zero;
          _dragging = true;
        });
      },
      onHorizontalDragUpdate: (DragUpdateDetails details) {
        setState(() {
          _move += details.delta;
        });
      },
      onHorizontalDragEnd: (DragEndDetails details) {
        setState(() {
          _dragging = false;
          _DragCount++;
        });
      },
      child: Container(
// width: 100,
// height: 100,
        color: Colors.grey,
        child: Center(
          child: Transform.translate(
            offset: _move,
            child: Text(
              _dragging ? "DRAGGING" : "Drags: $_DragCount",
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
        ),
      ),
    );
  }
}