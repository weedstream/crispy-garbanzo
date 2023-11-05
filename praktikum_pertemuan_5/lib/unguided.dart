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
          title: Container(
            child: Text('Tokoh Pahlawan'),
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
        Container(
          color: Colors.orange, // Background color for the image section
          child: Center(
            child: Image.network('https://upload.wikimedia.org/wikipedia/commons/2/23/COLLECTIE_TROPENMUSEUM_Portret_van_Raden_Ajeng_Kartini_TMnr_10018776.jpg'), // Replace with your image URL
          ),
        ),
        Container(
          color: Colors.deepOrange, // Background color for the text section
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text('Name  : Raden Ajeng Kartini'),
                  Text('Born: April 21, 1879, Jepara'),
                  Text('Died: September 17, 1904, Rembang Regency'),
                  Text('Education: Europeesche Lagere School'),
                  Text('Children: Soesalit Djojoadhiningrat'),
                ],
              ),
            ],
          ),
        ),
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
