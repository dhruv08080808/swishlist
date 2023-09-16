import 'package:flutter/material.dart';
import 'package:swishlist_ui/Constants/textstyle.dart';

import '../../API/intrests/Instrests.dart';
import '../../Constants/colors.dart';
import '../../Models/intrests_model.dart';
import 'Dates And Events.dart';
import 'Favorites.dart';
import 'Intrests.dart';
import 'Pets.dart';
import 'ProfileInfo.dart';
import 'Sized And Weights.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  void initState() {
    getAllEvent();
    super.initState();
  }
List <String> ?intrestlist=[''];


  List imgg = [
    'Cycling',
    'Reading',
    'Fishing',
    'Fishing',
    'Swimming',
    'Singing',
    'Trekking',
    'Coding',
    'Watches',
    'Movies and Shows'
  ];
  bool isLoading = false;
  GetIntrestModel?intrest;
  getAllEvent() {
    isLoading = true;
    var resp = intrestapi();
    resp.then((value) {
      if(value['status'] == true) {
        setState(() {
          intrest = GetIntrestModel.fromJson(value);
          intrestlist=intrest?.data!.interest!.split(",");
          print(intrestlist);
          // for (var v in event!.data! ) {
          //   if (v.type == "all") {
          //     event2.add(v);
          //   }
          // }
          isLoading = false;
        });
      } else{
        isLoading = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('MichieMaster34', style: robo_500_16_29),
        actions: [
          Image.asset('assets/Icons/3 dot in a line.png'),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/images/userprofile.png'),
              SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Michael Scott', style: Ubun_700_20),
                  Container(
                    width: 110,
                    height: 26,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: kF8F1AA,
                    ),
                    child: Center(
                        child: Text('25% completed', style: robo_500_12_8D)),
                  ),
                ],
              )
            ],
          ),
          SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('My Interests', style: robo_600_14_29),
              GestureDetector(
onTap: (){

  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  Intrests()),
  );
},
                  child: Image.asset('assets/Icons/Editt.png')),
            ],
          ),
          SizedBox(height: 12),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            direction: Axis.horizontal,
            children: intrestlist!.map((e) =>
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: kCBE0FA,
                    ),
                    child: Padding(
                      padding:  EdgeInsets.symmetric(
                          horizontal: 10, vertical: 7.5),
                      child: Text(e),
                    )))
                .toList(),
          ),
          SizedBox(height: 32),
          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileInfo()),
              );
            },
            child: smallContainer(
                Txt: 'Profile',
                imgg: 'assets/images/person.png',
                percentage: '12%'),
          ),
          SizedBox(height: 8),
          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const sizesandw()),
              );

            },
            child: smallContainer(
                Txt: 'Sizes and weights',
                imgg: 'assets/images/Sizes and weights.png',
                percentage: '60%'),
          ),
          SizedBox(height: 8),
          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  Favorites()),
              );
            },
            child: smallContainer(
                Txt: 'Favourites',
                imgg: 'assets/images/Favourites.png',
                percentage: '8%'),
          ),
          SizedBox(height: 8),
          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Pets()),
              );
            },
            child: smallContainer(
                Txt: 'Pets', imgg: 'assets/images/pets.png', percentage: '0%'),
          ),
          SizedBox(height: 8),
          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Datesande()),
              );
            },
            child: smallContainer(
                Txt: 'Dates and Events',
                imgg: 'assets/images/dates and events.png',
                percentage: '0%'),
          ),
        ]),
      ),
    );
  }
}

//---------------------------
class smallContainer extends StatelessWidget {
  final String Txt;
  final String imgg;
  final String percentage;

  const smallContainer(
      {super.key,
      required this.Txt,
      required this.imgg,
      required this.percentage});

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(imgg, height: 42),
        SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(Txt, style: robo_400_14_b_29),
            SizedBox(height: 4),
            Text(percentage, style: robo_400_12_70),
          ],
        ),
Spacer(),
        Center(
            child: Image.asset(
          'assets/images/direction-right 01.png',
          height: 24,
          alignment: Alignment.center,
        ))
      ],
    );
  }
}
