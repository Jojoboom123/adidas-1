import 'package:flutter/material.dart';

class GridviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: GridView.count(
            crossAxisCount: 2,
            children: List.generate(2, (index) {
              return Card(
                color: Colors.amber,
                child: Center(
                  child: Text('Item $index'),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
