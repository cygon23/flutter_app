import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/data/my_strings.dart';
import 'package:path/path.dart' as path;

class BasicButtomSheet extends StatelessWidget {
  const BasicButtomSheet();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Pass the current BuildContext to the showSheet function
          showSheet(context);
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text('Bottom Sheet'),
      ),
    );
  }
}

void showSheet(BuildContext context) {
  showModalBottomSheet(context: context, builder: (BuildContext bc) {
      return Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Wrap(
          spacing: 60,
          children: [
            Container(height: 10),
            Text(
              'Kyomah',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            Container(height: 10),
            Container(
              child: Text(
                MyStrings.middle_lorem_ipsum,
                style: TextStyle(color: Colors.grey[600], fontSize: 16),
              ),
            ),
            Container(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                new TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.transparent,
                  ),
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  child: new Text("CLOSE",
                  style: TextStyle(color: Colors.pink[500])),
                ),
                new ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[700],
                  ),
                  onPressed: (){},
                  child: new Text("DETAILS",
                  style: TextStyle(color: Colors.white),),
                )
              ],
            )

          ],
        ),
      );
    },
  );
}
