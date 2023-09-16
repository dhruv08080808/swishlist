import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:swishlist_ui/Constants/textstyle.dart';
import 'package:swishlist_ui/Models/login_model.dart';

import '../../API/Favorites/get_Favorities_api.dart';
import '../../API/Favorites/update_fav_api.dart';
import '../../Constants/colors.dart';
import '../../Models/Favorites_model.dart';
import '../../widgets/buttons.dart';
import '../../widgets/dialogs/name_dialog.dart';
class Favorites extends StatefulWidget {
  const Favorites({super.key});
  @override
  State<Favorites> createState() => _FavoritesState();
}
class _FavoritesState extends State<Favorites> {

  @override
  void initState() {
    getFavourites();
    super.initState();
  }
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

FavoritiesModel favmodel = FavoritiesModel(
  data: Data(
    cars: '',
    bikes: '',
    movies: '',
    shows: '',
    foods: '',
    gadgets: '',
    superheroes: '',
    actors: '',
    actresses: '',
    singers: '',
    players: '',
    cities: '',
    countries: '',
    restaurants: '',
    hotels: '',
    privacyStatus: '',
    createdAt: '',
  )
);

bool isLoading = false;

  getFavourites() {

    getfavapi().then((value) {
      if(value['status']==true){
      setState(() {
       favmodel= FavoritiesModel.fromJson(value);

//       for(var v in value ){
//      favmodel.add(FavoritiesModel.fromJson(v));
//   }
//
//   isLoading = false;

      });
      }
      else{
        setState(() {
          //isLoading = false;
        });
      }

    });
  }

  LoginResponse? responsep;



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
      body: isLoading ? CircularProgressIndicator() : SingleChildScrollView(
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
                  usersetting(
                    profileeee: 'Cars',
                    imggg: 'assets/Icons/icon i red.png', onTap: () {
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

                  }, text: carscontroller.text.isEmpty?
                  Text(favmodel.data!.cars.toString() =="" ?
                  "+ Add" : favmodel.data!.cars.toString()
                  )  :
                  Text(carscontroller.text )),
                  usersetting(profileeee: 'Bikes',
                  // bikescontroller.text.isEmpty?
                  // 'Add':bikescontroller.text,
                    imggg: 'assets/Icons/icon i red.png', onTap: () {
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
                  },text: bikescontroller.text.isEmpty?Text(favmodel.data!.bikes.toString()==""?"+ add":favmodel.data!.bikes.toString()): Text(bikescontroller.text)),
                   usersetting(profileeee: 'Movies',
                    imggg: 'assets/Icons/icon1.png', onTap: () {
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
                  }, text: moviescontroller.text.isEmpty?Text(favmodel.data!.movies.toString()==""?"+ add": favmodel.data!.movies.toString()):
                  Text(moviescontroller.text),
                  ),
                  usersetting(profileeee: 'Shows',
                    /*showscontroller.text.isEmpty?
                  'Add':showscontroller.text*/ imggg: 'assets/Icons/icon1.png', onTap: () {
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
                  }, text: showscontroller.text.isEmpty?Text(favmodel.data!.shows.toString()==""?"+add": favmodel.data!.shows.toString()): Text(showscontroller.text)),
                  usersetting(profileeee: ' Food',
                  // foodcontroller.text.isEmpty?
                  // 'Add':foodcontroller.text,
                    imggg: 'assets/Icons/icon1.png', onTap: () {
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
                  }, text: foodcontroller.text.isEmpty?Text(favmodel.data!.foods.toString()==""?"+add":favmodel.data!.foods.toString()):Text(foodcontroller.text)),
                  usersetting(profileeee: 'Gadgets',
                    imggg: 'assets/Icons/icon i red.png', onTap: () {
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
                  }, text: gadgetscontroller.text.isEmpty?Text(favmodel.data!.gadgets.toString()==""?"+add":favmodel.data!.gadgets.toString()):Text(gadgetscontroller.text)),
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
                      )); },
                    /*superheroscontroller.text.isEmpty?'+ add':superheroscontroller.text*/ 
                    
                    text: superheroscontroller.text.isEmpty?Text(favmodel.data!.superheroes.toString()==""?"+add":favmodel.data!.superheroes.toString()):Text(superheroscontroller.text),),
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
                       )); }, 
                     /*actorscontroller.text.isEmpty?'+ add':actorscontroller.text*/ 
                     
                     text: actorscontroller.text.isEmpty?Text(favmodel.data!.actors.toString()==""?"+add":favmodel.data!.actors.toString()):Text(actorscontroller.text),),
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
                      ));  }, 
                 
                    /*actressescontroller.text.isEmpty?'+ add':actressescontroller.text*/
                    text: actressescontroller.text.isEmpty?Text(favmodel.data!.actresses.toString()==""?"+add":favmodel.data!.actresses.toString()):Text(actressescontroller.text),),
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
                      )); }, text: singerscontroller.text.isEmpty?Text(favmodel.data!.singers.toString()==""?"+add":favmodel.data!.singers.toString()):Text(singerscontroller.text), 
                    ),

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
                      )); }, text: playerscontroller.text.isEmpty?Text(favmodel.data!.players.toString()==""?"+add":favmodel.data!.players.toString()):Text(playerscontroller.text), ),
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
                      ));}, text: citiescontroller.text.isEmpty?Text(favmodel.data!.cities.toString()==""?"+add":favmodel.data!.cities.toString()):Text(citiescontroller.text),),
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
                      )); },  text: countriesescontroller.text.isEmpty?Text(favmodel.data!.countries.toString()==""?"+add":favmodel.data!.countries.toString()):Text(countriesescontroller.text),
                 ),
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
                      ));  }, text: resturantscontroller.text.isEmpty?Text(favmodel.data!.restaurants.toString()==""?"+add":favmodel.data!.restaurants.toString()):Text(resturantscontroller.text) ),
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
                      )); }, text: hostelscontroller.text.isEmpty?Text(favmodel.data!.hotels.toString()==""?"+add":favmodel.data!.hotels.toString()):Text(hostelscontroller.text),
                   ),
                ])),
            SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: MainButton(height:52 ,width:double.infinity ,title:'Update' ,txtstyle:robo_500_14_7A , color:
           kF7E641 , onTap:() {
                  updatefav(
                    cars: carscontroller.text, bikes: bikescontroller.text, movies: moviescontroller.text, shows: showscontroller.text, foods: foodcontroller.text, gadgets: gadgetscontroller.text,
                      superheroes: superheroscontroller.text, actors: actorscontroller.text, actresses: actressescontroller.text, singers: singerscontroller.text, players: playerscontroller.text,
                      cities: citiescontroller.text,
                      countries: countriesescontroller.text, restaurants: resturantscontroller.text, hotels: hostelscontroller.text, id: favmodel.data!.userId.toString(), privacy: 'public',).
                  then((value) async{
                        if(value['status']==true){
                          Navigator.pop(context);
                          Fluttertoast.showToast(msg: value['message']);
                        } else{
                          Fluttertoast.showToast(msg: 'please fill all details');
                        }
                });
              } ),
            ),
          ]),
      )
    );
  }
}
//---------------stless
class usersetting extends StatelessWidget {
  final String profileeee;
  final Widget text;
  final String imggg;
  final Function() onTap;
  const usersetting({super.key, required this.profileeee, required this.text, required this.imggg, required this.onTap});
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
              text,

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
  final Widget text;
  const add({super.key, required this.textttt, required this.onTap, required this.text});
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
          text,
                SizedBox(width: 4),
                Image.asset('assets/images/right aroow.png'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
