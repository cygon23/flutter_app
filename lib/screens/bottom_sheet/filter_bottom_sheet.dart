import 'package:flutter/material.dart';
import 'package:flutter_ui/widget/my_text.dart';
import 'package:flutter_ui/widget/toolbar.dart';

class FilterBottomSheet extends StatefulWidget {
  const FilterBottomSheet({super.key});

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar.getPrimaryAppbar(context, "Filter") as PreferredSizeWidget?,
      body: Center(
        child: Text(
          'Press button \n below',
          textAlign: TextAlign.center,
          style: MyText.display1(context)!.copyWith(color: Colors.grey[300]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: "fab",
        backgroundColor: Colors.pink[500],
        elevation: 3,
        child: Icon(Icons.arrow_upward, color: Colors.white),
        onPressed: () {
          showSheet2(context);
        },
      ),
    );
  }
}

void showSheet2(BuildContext context) {
  showModalBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (BuildContext context) {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 5),
            child: Column(
              children: [
                // Property Value Section
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 10.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Property Value',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    width: double.infinity,
                    height: 40,
                    decoration: myBoxDecoration(),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Sample Text', // Replace with your desired text
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Icon(
                              Icons.expand_more,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Min and Max Price Section
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      // Min Price Column
                      Flexible(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Text(
                                'Min Price',
                                style: TextStyle(color: Colors.grey[700]),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 40,
                              decoration: myBoxDecoration(),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Sample Min Price', // Replace with dynamic text
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10.0),
                                    child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Icon(
                                        Icons.expand_more,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10), // Spacing between Min Price and Max Price
                      // Max Price Column
                      Flexible(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Text(
                                'Max Price',
                                style: TextStyle(color: Colors.grey[700]),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 40,
                              decoration: myBoxDecoration(),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Sample Max Price', // Replace with dynamic text
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10.0),
                                    child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Icon(
                                        Icons.expand_more,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      // Min Price Column
                      Flexible(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Text(
                                'Min Price',
                                style: TextStyle(color: Colors.grey[700]),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 40,
                              decoration: myBoxDecoration(),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Sample Min Price',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10.0),
                                    child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Icon(
                                        Icons.expand_more,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10), // Spacing between Min Price and Max Price
                      // Max Price Column
                      Flexible(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Text(
                                'Max Price',
                                style: TextStyle(color: Colors.grey[700]),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 40,
                              decoration: myBoxDecoration(),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Sample Max Price', // Replace with dynamic text
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10.0),
                                    child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Icon(
                                        Icons.expand_more,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                      child: Text('SEARCH', style: TextStyle(color: Colors.white),),
                      onPressed: (){

                      },
                    ),
                  ),
                ),
                Container(height: 25),
              ],
            ),
          ),
        ),
      );
    },
  );
}

BoxDecoration myBoxDecoration() {
  return BoxDecoration(
    border: Border.all(
      width: 1,
      color: Colors.grey[400]!,
    ),
  );
}
