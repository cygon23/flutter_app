import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/data/my_strings.dart';
import 'package:path/path.dart' as path;

class ListButtomSheet extends StatelessWidget {
  const ListButtomSheet();

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
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 5),
      child: Wrap(
        children: [
          ListTile(
            leading: Icon(Icons.visibility),
            title: Text('Preview'),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.person_add),
            title: Text('Share'),
            onTap: (){
              Text('lead journey');
            },
          ),
          ListTile(
            leading: Icon(Icons.link),
            title: Text("Make a copy"),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.content_copy),
            title: Text("Make a copy"),
            onTap: (){},
          )
        ],
      ),
    );
  },
  );
}
