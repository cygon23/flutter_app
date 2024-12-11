import 'package:flutter/material.dart';
import 'package:flutter_app/pages/1_text_styling.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Home page",
          style: TextStyle(
            color: Colors.white,
        ),
        ),
        backgroundColor: Colors.green,
      ),
      body: SafeArea(
        child: ListView(
          children: [
             ListTile(
               title: Text('text styling'),
               subtitle: Text("how to style text"),
               trailing: Icon(Icons.chevron_right),
               leading: Icon(Icons.text_fields),
               onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TextStyling()),
                );
               },
             ),
          ],
        )
      ),
    );
  }
}
