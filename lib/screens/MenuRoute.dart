import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuRoute extends StatelessWidget {
  const MenuRoute();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FLUTTER UI'),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
        ListTile(
          leading: Icon(Icons.water_drop),
          title: Text('Slapsh screen'),
        )
        ],
      ),
    );
  }
}
