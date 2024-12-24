import 'package:flutter/material.dart';
import 'package:flutter_ui/data/dummy.dart';
import 'package:flutter_ui/data/img.dart';
import 'package:flutter_ui/data/my_colors.dart';
import 'package:flutter_ui/model/wizard.dart';
import 'package:flutter_ui/widget/my_text.dart';

class wizardCards extends StatefulWidget {
  const wizardCards();

  @override
  State<wizardCards> createState() => _wizardCardsState();
}

class _wizardCardsState extends State<wizardCards> {
  int page = 0;
  bool isLast = false;
  List<Wizard> items = Dummy.getWizard();
  PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: Container(color: Colors.grey[100]),
      ),
      body: SizedBox(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Expanded(
                child: PageView(
                  onPageChanged: onPageViewChange,
                  controller: pageController,
                  children: buildPageViewItem(),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  child: Container(
                    height: 60,
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: buildDots(context),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onPageViewChange(int value) {
    setState(() {
      page = value;
      isLast = page == (items.length - 1);
    });
  }

  List<Widget> buildPageViewItem() {
    List<Widget> widgets = [];
    for (var wz in items) {
      Widget wg = Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: double.infinity,
        child: Wrap(
          children: [
            Container(
              width: 280,
              height: 370,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                elevation: 2,
                child: Stack(
                  children: [
                    Image.asset(
                      Img.get(wz.background),
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      color: Colors.lightGreen[500]!.withOpacity(0.7),
                    ),
                    Column(
                      children: [
                        Container(height: 35),
                        Text(
                          wz.title,
                          style: MyText.title(context)!.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 25),
                          child: Text(
                            wz.brief,
                            textAlign: TextAlign.center,
                            style: MyText.body1(context)!
                                .copyWith(color: Colors.white),
                          ),
                        ),
                        Expanded(
                          child: Image.asset(
                            Img.get(wz.image),
                            width: 150,
                            height: 150,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          child: Container(
                            width: double.infinity,
                            height: 50,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.lightGreen[600],
                                  elevation: 0),


                              child: Text(
                                isLast ? "Get Started" : "Next",
                                style: MyText.body1(context)!
                                    .copyWith(color: Colors.white),
                              ),
                              onPressed: () {
                                if (isLast) {
                                  Navigator.pop(context);
                                  return;
                                }
                                pageController.nextPage(
                                    duration: Duration(milliseconds: 300),
                                    curve: Curves.easeOut);
                              },
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
      widgets.add(wg);
    }
    return widgets;
  }

  Widget buildDots(BuildContext context) {
    List<Widget> dots = [];
    for (int i = 0; i < items.length; i++) {
      Widget w = Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        height: 8,
        width: 8,
        child: CircleAvatar(
          backgroundColor: page == i ? Colors.grey[600] : MyColors.grey_20,
        ),
      );
      dots.add(w);
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: dots,
    );
  }
}
