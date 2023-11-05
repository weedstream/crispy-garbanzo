import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Container(
            child: IconButton(
              onPressed: () {}, 
              icon: Icon(Icons.menu)),
          ),
          title: Container(
            child: Text('Aplikasi App Bar'),
          ),
          actions: [
            Container(
              child: IconButton(
                onPressed: () {}, 
                icon: Icon(Icons.search)),
            ),
            Container(
              child: IconButton(
                onPressed: () {}, 
                icon: Icon(Icons.more_vert)),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(120),
            child: Container(
              margin: EdgeInsets.all(6),
              height: 50,
              color: Colors.white,
              child: Center(
                child: Text('Bottom gaes')),
            ),
          ),
          flexibleSpace: Container(
            height: 100,
            width: 100,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: SafeArea(
            child: SingleChildScrollView(
              child: ColumnAndRowNestingWidget(),
            ),
          ),
        ),
      ),
    );
  }
}

class ColumnAndRowNestingWidget extends StatelessWidget {
  const ColumnAndRowNestingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Text('Column and row nesting 1'),
        Text('Column and row nesting 2'),
        Text('Column and row nesting 3'),
        Padding(padding: EdgeInsets.all(16)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Row nesting 1'),
            Text('Row nesting 2'),
            Text('Row nesting 3'),
          ],
        )
      ],
    );
  }
}

class RowWidget extends StatelessWidget {
  const RowWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text('Row 1'),
        Padding(padding: EdgeInsets.all(16)),
        Text('Row 2'),
        Padding(padding: EdgeInsets.all(16)),
        Text('Row 3'),
        Padding(padding: EdgeInsets.all(16)),
      ],
    );
  }
}

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text('Column 1'),
        Divider(),
        Text('Column 1'),
        Divider(),
        Text('Column 1'),
        Divider(),
      ],
    );
  }
}

class ContainerWithBoxDecoration extends StatelessWidget {
  const ContainerWithBoxDecoration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(100.0),
          bottomRight: Radius.circular(100.0),
        ),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.white,
            Colors.lightBlue.shade500,
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 10.0,
            offset: Offset(0.0, 10.0),
          ),
        ],
      ),
      child: Center(
        child: Text('Container'),
      ),
    );
  }
}
