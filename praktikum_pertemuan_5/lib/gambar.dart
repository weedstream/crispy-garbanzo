import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unguided P2',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Hewan Dan Tumbuhan")),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 10,
            ),
            Image.network(
              'https://d22gwcrfo2de51.cloudfront.net/wp-content/uploads/2020/02/Soekarno_sq-1-e1585486258865.jpg',
              width: 600,
              height: 250,
            ),
            SizedBox(height: 5),
            Text(
              'Beruang Putih',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Ursus Maritimus',
              style: TextStyle(
                fontSize: 12,
                fontStyle: FontStyle.italic,
              ),
            ),
            Container(
              height: 20,
            ),
            Image.network(
              '',
              width: 600,
              height: 200,
            ),
            SizedBox(height: 5),
            Text(
              'Bunga Telang',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Clitoria ternatea',
              style: TextStyle(
                fontSize: 12,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
