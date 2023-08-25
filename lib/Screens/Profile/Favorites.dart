import 'package:flutter/material.dart';
import 'package:swishlist_ui/Constants/textstyle.dart';

import '../../Constants/colors.dart';
import '../../widgets/dialogs/name_dialog.dart';
class Favorites extends StatefulWidget {
  const Favorites({super.key});
  @override
  State<Favorites> createState() => _FavoritesState();
}
class _FavoritesState extends State<Favorites> {
  TextEditingController carscontroller=TextEditingController();
  TextEditingController bikescontroller=TextEditingController();
  TextEditingController moviescontroller=TextEditingController();
  TextEditingController showscontroller=TextEditingController();
  TextEditingController foodcontroller=TextEditingController();
  TextEditingController gadgetscontroller=TextEditingController();
  TextEditingController superheroscontroller=TextEditingController();
  TextEditingController actorscontroller=TextEditingController();
  TextEditingController actressescontroller=TextEditingController();
  TextEditingController singerscontroller=TextEditingController();
  TextEditingController playerscontroller=TextEditingController();
  TextEditingController citiescontroller=TextEditingController();
  TextEditingController countriesescontroller=TextEditingController();
  TextEditingController resturantscontroller=TextEditingController();
  TextEditingController hostelscontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Favorites',style: robo_500_16_29),
          Text('60% Completed',style: robo_400_12_70),]
      ),

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            LinearProgressIndicator(
              backgroundColor: kD55745,
              valueColor: AlwaysStoppedAnimation(kD55745),
              minHeight: 8,
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Things',style: robo_600_14_29),
                  usersetting(profileeee: 'Cars', status:
                  carscontroller.text.isEmpty?
                  'Add':carscontroller.text, imggg: 'assets/Icons/icon i red.png', onTap: () {
                    showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => NameDialog(
                          name: 'Car Name',
                          child: TextFormField(
                            onChanged: (v) {
                              setState(() {});
                            },
                            controller: carscontroller,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Enter Your car Name",
                                hintStyle: robo_400_14_b_29,
                                contentPadding:
                                EdgeInsets.symmetric(horizontal: 15)),
                          ),
                        ));

                  },),
                  usersetting(profileeee: 'Bikes', status:  bikescontroller.text.isEmpty?
                  'Add':bikescontroller.text, imggg: 'assets/Icons/icon i red.png', onTap: () {
                    showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => NameDialog(
                          name: 'Bike Name',
                          child: TextFormField(
                            onChanged: (v) {
                              setState(() {});
                            },
                            controller: bikescontroller,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Enter Your Bike Name",
                                hintStyle: robo_400_14_b_29,
                                contentPadding:
                                EdgeInsets.symmetric(horizontal: 15)),
                          ),
                        ));
                  },),
                  usersetting(profileeee: 'Movies', status:  moviescontroller.text.isEmpty?
                  'Add':moviescontroller.text, imggg: 'assets/Icons/icon1.png', onTap: () {
                    showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => NameDialog(
                          name: 'Movies Name',
                          child: TextFormField(
                            onChanged: (v) {
                              setState(() {});
                            },
                            controller: moviescontroller,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Enter Your Movie Name",
                                hintStyle: robo_400_14_b_29,
                                contentPadding:
                                EdgeInsets.symmetric(horizontal: 15)),
                          ),
                        ));
                  },),
                  usersetting(profileeee: 'Shows', status:  showscontroller.text.isEmpty?
                  'Add':showscontroller.text, imggg: 'assets/Icons/icon1.png', onTap: () {
                    showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => NameDialog(
                          name: 'Show Name',
                          child: TextFormField(
                            onChanged: (v) {
                              setState(() {});
                            },
                            controller: showscontroller,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Enter Your Show Name",
                                hintStyle: robo_400_14_b_29,
                                contentPadding:
                                EdgeInsets.symmetric(horizontal: 15)),
                          ),
                        ));
                  },),
                  usersetting(profileeee: ' Food', status:  foodcontroller.text.isEmpty?
                  'Add':foodcontroller.text, imggg: 'assets/Icons/icon1.png', onTap: () {
                    showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => NameDialog(
                          name: 'Food Name',
                          child: TextFormField(
                            onChanged: (v) {
                              setState(() {});
                            },
                            controller: foodcontroller,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Enter Your Food Name",
                                hintStyle: robo_400_14_b_29,
                                contentPadding:
                                EdgeInsets.symmetric(horizontal: 15)),
                          ),
                        ));
                  },),
                  usersetting(profileeee: 'Gadgets', status:  gadgetscontroller.text.isEmpty?
                  'Add':gadgetscontroller.text, imggg: 'assets/Icons/icon i red.png', onTap: () {
                    showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => NameDialog(
                          name: 'Gadgets Name',
                          child: TextFormField(
                            onChanged: (v) {
                              setState(() {});
                            },
                            controller: gadgetscontroller,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Enter Your Gadget  Name",
                                hintStyle: robo_400_14_b_29,
                                contentPadding:
                                EdgeInsets.symmetric(horizontal: 15)),
                          ),
                        ));
                  },),
                  SizedBox(height: 24),
                  Text('People',style: robo_600_14_29),
                  SizedBox(height: 4),
                  add(textttt: 'Superheroes', onTap: () { showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => NameDialog(
                        name: 'Superheroes Name',
                        child: TextFormField(
                          onChanged: (v) {
                            setState(() {});
                          },
                          controller: superheroscontroller,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Enter Your Superhero Name",
                              hintStyle: robo_400_14_b_29,
                              contentPadding:
                              EdgeInsets.symmetric(horizontal: 15)),
                        ),
                      )); }, status:superheroscontroller.text.isEmpty?'+ add':superheroscontroller.text ,),
                   add(textttt: 'Actors', onTap: () { showDialog<String>(
                       context: context,
                       builder: (BuildContext context) => NameDialog(
                         name: 'Actor Name',
                         child: TextFormField(
                           onChanged: (v) {
                             setState(() {});
                           },
                           controller: actorscontroller,
                           decoration: InputDecoration(
                               border: InputBorder.none,
                               hintText: "Enter Your Actor  Name",
                               hintStyle: robo_400_14_b_29,
                               contentPadding:
                               EdgeInsets.symmetric(horizontal: 15)),
                         ),
                       )); }, status: actorscontroller.text.isEmpty?'+ add':actorscontroller.text,),
                  add(textttt: 'Actresses', onTap: () {showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => NameDialog(
                        name: 'Actress Name',
                        child: TextFormField(
                          onChanged: (v) {
                            setState(() {});
                          },
                          controller: actressescontroller,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Enter Your Actress  Name",
                              hintStyle: robo_400_14_b_29,
                              contentPadding:
                              EdgeInsets.symmetric(horizontal: 15)),
                        ),
                      ));  }, status: actressescontroller.text.isEmpty?'+ add':actressescontroller.text,),
                  add(textttt: 'SIngers', onTap: () { showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => NameDialog(
                        name: 'Singer Name',
                        child: TextFormField(
                          onChanged: (v) {
                            setState(() {});
                          },
                          controller: singerscontroller,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Enter Your Singer  Name",
                              hintStyle: robo_400_14_b_29,
                              contentPadding:
                              EdgeInsets.symmetric(horizontal: 15)),
                        ),
                      )); }, status: singerscontroller.text.isEmpty?'+ add':singerscontroller


                      .text,),

                  add(textttt: 'Players', onTap: () { showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => NameDialog(
                        name: 'Player Name',
                        child: TextFormField(
                          onChanged: (v) {
                            setState(() {});
                          },
                          controller: playerscontroller,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Enter Your Player  Name",
                              hintStyle: robo_400_14_b_29,
                              contentPadding:
                              EdgeInsets.symmetric(horizontal: 15)),
                        ),
                      )); }, status: playerscontroller.text.isEmpty?'+ add':playerscontroller.text,),
                  SizedBox(height: 24),
                  Text('Places',style: robo_600_14_29),
                  add(textttt: 'Cities', onTap: () {  showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => NameDialog(
                        name: 'City Name',
                        child: TextFormField(
                          onChanged: (v) {
                            setState(() {});
                          },
                          controller: citiescontroller,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Enter Your City  Name",
                              hintStyle: robo_400_14_b_29,
                              contentPadding:
                              EdgeInsets.symmetric(horizontal: 15)),
                        ),
                      ));}, status:  citiescontroller.text.isEmpty?'+ add':citiescontroller.text,),
                  add(textttt: 'Countries', onTap: () { showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => NameDialog(
                        name: 'Country Name',
                        child: TextFormField(
                          onChanged: (v) {
                            setState(() {});
                          },
                          controller: countriesescontroller,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Enter Your Country  Name",
                              hintStyle: robo_400_14_b_29,
                              contentPadding:
                              EdgeInsets.symmetric(horizontal: 15)),
                        ),
                      )); }, status: countriesescontroller.text.isEmpty?'+ add':countriesescontroller.text,),
                  add(textttt: 'Restaurants', onTap: () {showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => NameDialog(
                        name: 'Resturant Name',
                        child: TextFormField(
                          onChanged: (v) {
                            setState(() {});
                          },
                          controller: resturantscontroller,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Enter Your Resturant  Name",
                              hintStyle: robo_400_14_b_29,
                              contentPadding:
                              EdgeInsets.symmetric(horizontal: 15)),
                        ),
                      ));  }, status: resturantscontroller.text.isEmpty?'+ add':resturantscontroller.text,),
                  add(textttt: 'Hotels', onTap: () { showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => NameDialog(
                        name: 'Hostel Name',
                        child: TextFormField(
                          onChanged: (v) {
                            setState(() {});
                          },
                          controller: hostelscontroller,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Enter Your Hostel  Name",
                              hintStyle: robo_400_14_b_29,
                              contentPadding:
                              EdgeInsets.symmetric(horizontal: 15)),
                        ),
                      )); }, status: hostelscontroller.text.isEmpty?'+ add':hostelscontroller.text,),
                ]))]),
      )
    );
  }
}
//---------------stless
class usersetting extends StatelessWidget {
  final String profileeee;
  final String status;
  final String imggg;
  final Function() onTap;
  const usersetting({super.key, required this.profileeee, required this.status, required this.imggg, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 36,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(profileeee,style: out_400_14_29),
            Row(children: [
              Text(status,style: robo_400_14_b_29),
              SizedBox(width: 4),
              Image.asset(imggg),
              SizedBox(width: 4),
              Image.asset('assets/images/right aroow.png')
            ],)
          ],
        ),
      ),
    );
  }
}
//------------------- STATELESSSSSSSS------------------
class add extends StatelessWidget {
  final String textttt;
  final Function() onTap;
  final String status;
  const add({super.key, required this.textttt, required this.onTap, required this.status});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
       onTap: onTap,
      child: Container(
        height: 36,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(textttt,style: robo_400_14_70),
            Row(
              children: [
                Text(status,style: robo_500_14_D55),
                SizedBox(width: 4),
                Image.asset('assets/images/right aroow.png')
              ],
            ),
          ],
        ),
      ),
    );
  }
}
