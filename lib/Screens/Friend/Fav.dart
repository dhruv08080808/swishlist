import 'package:flutter/material.dart';
import 'package:swishlist_ui/Constants/textstyle.dart';

import '../../Constants/colors.dart';
class Fav extends StatefulWidget {
  const Fav({super.key});
  @override
  State<Fav> createState() => _FavState();
}
class _FavState extends State<Fav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Favorites',style: robo_500_16_29),
          leading: Icon(Icons.arrow_back_sharp),
        ),
        body: ListView(
            children: [

              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Things',style: robo_600_14_00),
                        usersetting(profileeee: 'Colors', status: 'Red', ),
                        usersetting(profileeee: 'Sports', status: 'Volleyball', ),
                        usersetting(profileeee: 'Cars', status: '-', ),
                        usersetting(profileeee: 'BIkes', status: '-', ),
                        usersetting(profileeee: 'Movies', status: 'Sci-fi', ),
                        usersetting(profileeee: 'Shows', status: 'The office', ),
                        usersetting(profileeee: 'Food', status: 'Italian', ),
                        usersetting(profileeee: 'Gadgets', status: '-', ),
                        SizedBox(height: 24),
                        Text('People',style: robo_600_14_00),
                        SizedBox(height: 4),
                        usersetting(profileeee: 'Superheroes', status: 'Deadpool', ),
                        usersetting(profileeee: 'Actors', status: '-', ),
                        usersetting(profileeee: 'Actresses', status: '-', ),
                        Container(
                            height: 36,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Superheroes',style:out_400_14_29 ),
                                  Text('Selena gomez, Shawn Mendes  +3',style: out_500_14_29,),
                                ])),
                        usersetting(profileeee: 'Players', status: '-', ),
                        SizedBox(height: 24),
                        Text('Places',style: robo_600_14_00),
                        usersetting(profileeee: 'Countries', status: '-', ),
                        usersetting(profileeee: 'Cities', status: '-', ),
                        add(textttt: 'Restaurants'),

                      ]))])
    );
  }
}
//---------------stless
class usersetting extends StatelessWidget {
  final String profileeee;
  final String status;

  const usersetting({super.key, required this.profileeee, required this.status});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(profileeee,style: robo_400_14_84),
          Text(status,style: out_400_14)
        ],
      ),
    );
  }
}
//------------------- STATELESSSSSSSS------------------
class add extends StatelessWidget {
  final String textttt;
  const add({super.key, required this.textttt});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(textttt,style: robo_400_14_70),
          Text('+ Add',style: robo_500_14_D55),
        ],
      ),
    );;
  }
}
