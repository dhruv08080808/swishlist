import 'package:flutter/material.dart';
import 'package:swishlist_ui/Constants/textstyle.dart';

import '../Activities/homeactivities.dart';
import '../Friend/AddFriend.dart';
import '../Home/Home.dart';
import '../Product/HomeOfProduct.dart';
import '../Product/StatusOfProduct.dart';

class ButtomNavScreen extends StatefulWidget {
  const ButtomNavScreen({super.key});

  @override
  State<ButtomNavScreen> createState() => _ButtomNavScreenState();
}

class _ButtomNavScreenState extends State<ButtomNavScreen> {
   PageController _pageController = PageController(initialPage: 0);
  //
  // final List<Widget> _pages = [
  //   const HomeOfProduct(),
  //   const StatusOfProduct(),
  //   const HomeOfProduct(),
  //   const HomeOfProduct(),
  // ];
  int myindex=0;


  @override
  Widget build(BuildContext context) {
    // @override
    // void dispose() {
    //   _pageController.dispose();
    //   super.dispose();
    // }
    return Scaffold(
      bottomNavigationBar: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(32, 12, 32, 16),
            child: Column(
              children: [
                Row(children: [
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        myindex=0;
                        myindex==_pageController;
                        _pageController.jumpToPage(myindex);
                      });
                    },
                    child: Column(children: [
                      Image.asset('assets/Icons/home icon.png',color: myindex==0?
                      Colors.black:null,height: 28,width: 28),
                      SizedBox(height: 8),
                      Text('Home',style:  myindex==0?
                      robo_500_12_29:robo_400_12_70 ),

                    ]),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        myindex=1;
                        myindex==_pageController;
                        _pageController.jumpToPage(myindex);
                      });
                    },
                    child: Column(children: [
                      Image.asset('assets/Icons/store icon.png',color: myindex==1?
                      Colors.black:null,height: 24,width: 24),
                      SizedBox(height: 8),
                      Text('Stores',style:   myindex==1?
                          robo_500_12_29:robo_400_12_70),
                    ]),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        myindex=2;
                        myindex==_pageController;
                        _pageController.jumpToPage(myindex);
                      });
                    },
                    child: Column(children: [
                      Image.asset('assets/Icons/favv icon.png',color: myindex==2?
                      Colors.black:null,height: 24,width: 24),
                      SizedBox(height: 8),
                      Text('Activities',style:  myindex==2?
                      robo_500_12_29:robo_400_12_70),
                    ]),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        myindex=3;
                        myindex==_pageController;
                        _pageController.jumpToPage(myindex);
                      });
                    },
                    child: Column(children: [
                      Image.asset('assets/Icons/friends icon.png', color:  myindex==3?
                      Colors.black:null,height: 24,width: 24),
                      SizedBox(height: 8),
                      Text('Friends',style:   myindex==3?
                          robo_500_12_29:robo_400_12_70),
                    ]),
                  ),
                ],)
              ])))
      ),
      //appBar: AppBar(),
      body:  PageView(
        controller: _pageController,
        children:  [StatusOfProduct(), Home(), homeactivites(),AddFriend()],
        onPageChanged: (v) {
          setState(() {
            myindex = v;
          });
        },
      ),

    );
  }
}
