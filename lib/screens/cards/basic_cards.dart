import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/data/img.dart';
import 'package:flutter_ui/data/my_colors.dart';
import 'package:flutter_ui/data/my_strings.dart';
import 'package:flutter_ui/widget/toolbar.dart';

class BasicCards extends StatefulWidget {
  const BasicCards();

  @override
  State<BasicCards> createState() => _BasicCardsState();
}

class _BasicCardsState extends State<BasicCards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.grey[200],
      appBar: CommonAppBar.getPrimaryAppbar(context, 'Basic') as PreferredSizeWidget?,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            card1(),
            card2('image_3.jpg'),
            Row(
              children: [
                Expanded(child: card2('image_5.jpg')),
                Expanded(child: card2('image_4.jpg')),
              ],
            )
          ],
        ),
      ),
    );
  }

  card1() {
     return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Column(
        children: [
          Image.asset(Img.get('image_7.jpg'),
            height: 140, width: double.infinity, fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Phases a Trups id Nisi',
                  style: TextStyle(fontSize: 24, color: Colors.grey[700]),),
                Container(height: 10),
                Container(
                  child: Text(MyStrings.middle_lorem_ipsum, style: TextStyle(
                      fontSize: 15,  color: Colors.grey[700]
                  ),),
                )
              ],
            ),
          ),
          Row(
            children: [
              TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.transparent),
                child: Text("SHARE", style: TextStyle(color: MyColors.accent),),
                onPressed: (){
                },
              ),
              TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.transparent),
                child: Text("EXPLORE", style: TextStyle(color: MyColors.accent),),
                onPressed: (){
                },
              )
            ],
          ),
          Container(height: 5)
        ],
      ),
    );
  }

  card2(String img) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         Stack(
           children: [
             Image.asset(Img.get(img),
               height: 160, width: double.infinity, fit: BoxFit.cover,
             ),
             Positioned.fill(
               child: Container(
                 padding:EdgeInsets.all(15),
                 child: Align(
                   alignment: Alignment.bottomLeft,
                   child: Text("Alinmuz Et Ante", style: TextStyle(color: Colors.white, fontSize: 23),),
                 ),
               ),
             )
           ],
         ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                icon: Icon(Icons.favorite, color: Colors.grey[500]),
                onPressed: (){},
              ),
              IconButton(
                icon: Icon(Icons.bookmark, color: Colors.grey[500]),
                onPressed: (){},
              ),

              IconButton(
                icon: Icon(Icons.share, color: Colors.grey[500]),
                onPressed: (){},
              ),

            ],
          )
        ],
      ),
    );
  }
}
