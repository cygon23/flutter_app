
import 'package:flutter/material.dart';
import 'package:flutter_ui/data/my_colors.dart';
import 'package:flutter_ui/data/my_strings.dart';
import 'package:flutter_ui/widget/my_text.dart';
import 'package:flutter_ui/widget/star_rating.dart';
import 'package:flutter_ui/widget/toolbar.dart';

class FloatingBottomSheet extends StatefulWidget {
   FloatingBottomSheet();

  @override
  State<FloatingBottomSheet> createState() => _FloatingBottomSheetState();
}

class _FloatingBottomSheetState extends State<FloatingBottomSheet> {
  late BuildContext _scaffoldCxt;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  MyColors.grey_20,
      appBar: CommonAppBar.getPrimaryAppbar(context, 'Floating') as PreferredSizeWidget?,
      body: Builder(builder: (context) {
        _scaffoldCxt = context;
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                FloatingActionButton(
                  heroTag: "fab", backgroundColor: Colors.pink[500],
                  elevation: 3,
                  child: Icon(Icons.star, color: Colors.white),
                  onPressed: (){
                    _showSheet();
                  }
                ),
                Container(height: 20),
                Text("Press Button \n above", textAlign: TextAlign.center, style: MyText.display1(context)!.copyWith(),)
              ],
            ),
          );
        }
      ),
    );
  }

  // initializing contoller for closing  functionality
  late PersistentBottomSheetController sheetController;

  void _showSheet(){
    sheetController = showBottomSheet(
        context: _scaffoldCxt,
        builder: (BuildContext c){
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5)),
            child: Container(
              padding: EdgeInsets.all(15),
              width: double.infinity,
              child: Column(
                children: [
                 Row(
                   children: [
                     Expanded(
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text("City Building", style: MyText.title(context)!.copyWith(color: Colors.grey[600])),
                           Text("21 Dec 2024", style: MyText.caption(context)!.copyWith(color: Colors.grey[600])),
                         ],
                       ),
                     ),
                     IconButton(
                       icon:  Icon(Icons.close, color: Colors.grey[600]),
                       onPressed: (){
                         sheetController.close();
                       },
                     )
                   ],
                 ),
                  Divider(),
                  Container(height: 5),
                  Text(MyStrings.middle_lorem_ipsum,
                   style: MyText.body1(context)!.copyWith(color: Colors.grey[800]),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Spacer(),
                      StarRating(
                        starCount: 5,
                        rating: 5,
                        color: Colors.orange[300],
                        size: 40),
                      Spacer()
                    ],
                  ),
                  Container(height: 10),
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0)
                        ),
                        backgroundColor: MyColors.accent, elevation: 0
                      ),
                      child: Text('SUBMIT RATING', style: TextStyle(color: Colors.white)),
                      onPressed: (){},
                    ),
                  )
                ],
              )));
        });
  }
}




