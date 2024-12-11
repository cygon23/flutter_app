
import 'package:flutter/material.dart';

class TextStyling extends StatelessWidget {
  const TextStyling({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('text page'),
        elevation: 2,

      ),
       body: SafeArea(child:
       Text(
           'Text.......',
           style: TextStyle(
             color: Colors.blueGrey.shade100,
             fontSize: 50
           ),

       )),
    );
  }
}
