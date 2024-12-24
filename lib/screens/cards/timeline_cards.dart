import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/data/img.dart';
import 'package:flutter_ui/data/my_strings.dart';
import 'package:flutter_ui/widget/circle_image.dart';
import 'package:flutter_ui/widget/toolbar.dart';

class TimelineCards extends StatefulWidget {
  const  TimelineCards();

  @override
  State<TimelineCards> createState() => _TimelineCardsState();
}

class _TimelineCardsState extends State<TimelineCards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: CommonAppBar.getPrimaryAppbar(context, 'Basic') as PreferredSizeWidget?,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            card3('image_3.jpg'),
          ],
        ),
      ),
    );
  }

  card3(String img) {
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
         Container(
           height: 55,
           child: Row(
             children: [
               Container(width: 5),
                 IconButton(
                   icon: Icon(Icons.favorite, color: Colors.grey[500]),
                   onPressed: (){},
                 ),
                 IconButton(
                   icon: Icon(Icons.share, color: Colors.grey[500]),
                   onPressed: (){},
                 ),
                 Spacer(),
               IconButton(
                 icon: Icon(Icons.mode_comment, color: Colors.grey[500]),
                 onPressed: (){},
               ),

                 Text("12", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18, color: Colors.grey[700]),),

                 Container(width: 15),
             ],
           ),
         ),
          CommentUI('photo_female_8.jpg'),
          Divider(color: Colors.grey[400], height: 0),
          CommentUI('photo_female_7.jpg'),
          Divider(color: Colors.grey[400], height: 0),
          CommentUI('photo_female_6.jpg'),
          Divider(color: Colors.grey[400], height: 0),
          CommentUI('photo_female_1.jpg'),
        ],
      ),
    );
  }

  CommentUI(String image) {
   return  Container(
      color: Colors.grey[100],
      padding: EdgeInsets.all(15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleImage(
            imageProvider:AssetImage(Img.get(image)),
            size:40,
          ),
          Container(width: 15),
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Kyomah Doe",
                  style: TextStyle(fontSize: 16, color: Colors.grey[800]),

                ),
                Container(height: 4),
                Text(MyStrings.middle_lorem_ipsum, style: TextStyle(
                    fontSize: 15, color: Colors.grey[600]
                ),)
              ],
            ),
          ),
          Container(width: 10),
          Container(
            child: Text('1d'),
          )
        ],
      ),
    );
  }
}
