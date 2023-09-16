import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:swishlist_ui/API/sizesandweights/get_sizesandweights_api.dart';
import 'package:swishlist_ui/API/sizesandweights/update_sizeandw_api.dart';
import 'package:swishlist_ui/Constants/textstyle.dart';
import 'package:swishlist_ui/Screens/Friend/Profile.dart';
import 'package:swishlist_ui/Screens/Friend/SizesAndWeights.dart';
import 'package:swishlist_ui/Screens/Profile/Intrests.dart';
import 'package:swishlist_ui/widgets/Bed.dart';
import 'package:swishlist_ui/widgets/Shirt.dart';

import '../../API/Favorites/get_Favorities_api.dart';
import '../../Constants/colors.dart';
import '../../Models/login_model.dart';
import '../../Models/sizesandweights_model.dart';
import '../../widgets/Shoes.dart';
import '../../widgets/SizesAndWeights.dart';
import '../../widgets/buttons.dart';
import '../Product/ProductPrivacy.dart';
class sizesandw extends StatefulWidget {

  const sizesandw({super.key});
  @override
  State<sizesandw> createState() => _sizesandwState();
}
class _sizesandwState extends State<sizesandw> {


  SizesandWeightsModel sizeandwmodel= SizesandWeightsModel(
    data: Data(
      waist: '',
      shirt: '',
      shoes: '',
      bed: '',
    )
  );


TextEditingController WaistController=TextEditingController();
  TextEditingController ShirtController=TextEditingController();
  TextEditingController ShoesController =TextEditingController();

  LoginResponse?respp;
  var BedController =TextEditingController();
  List tags = [
    '20',
    '22',
    '24',
    '26',
    '28',
    '30',
    '32',
    '34',
    '36',
    '38',
    '40',
    '44'
  ];
  getsizes(){
    getsizesandweightsapi().then((value){
      if(value['status']==true){
        setState(() {
          sizeandwmodel= SizesandWeightsModel.fromJson(value);
        });
      }
      else{
        setState(() {

        });
      }
    });
  }

  @override
  void initState() {
    getsizes();
    //updatesizes(waist: '', shirt: '', shoes: '', bed: '', id: '');
    super.initState();
  }
  TextEditingController namec=TextEditingController();
  String ?selectedIcon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Sizes and weights',style: robo_500_16_29),
          Text('60% Completed',style: robo_400_12_70),
        ],
      ),

      ),
      body: Column(
        children: [
          LinearProgressIndicator(
            backgroundColor: k576ACC,
            valueColor: AlwaysStoppedAnimation(k576ACC),
            minHeight: 8,
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Fashion',style: robo_600_14_29),
                SizedBox(height: 4),
                usersetting(profileeee: 'Waist', txt:WaistController.text.isEmpty?Text(sizeandwmodel.data!.waist.toString()==""?"+add":sizeandwmodel.data!.waist.toString()):Text(WaistController.text) ,imggg: 'assets/Icons/icon1.png', onTap: () {
                  showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => WaistDialog(onPop: (v ) {  setState(() {
                        WaistController.text=v;
                      });},));
                },),
                usersetting(profileeee: 'Shirt', txt: ShirtController.text.isEmpty?Text(sizeandwmodel.data!.shirt.toString()==""?"+add":sizeandwmodel.data!.shirt.toString()):Text(ShirtController.text), imggg: 'assets/Icons/icon lock.png', onTap: () {  showDialog<String>(
                  context: context,

                  builder: (BuildContext context) => Shirt(onPop:(valueee){
                    setState(() {
                      ShirtController.text=valueee;
                    });
                  } )
                );  },),

                usersetting(profileeee: 'Shoes', txt:ShoesController.text.isEmpty?Text(sizeandwmodel.data!.shoes.toString()==""?"+add":sizeandwmodel.data!.shoes.toString()):Text(ShoesController.text), imggg: 'assets/Icons/icon i 1x.png', onTap: () {  showDialog<String>(
                  context: context,
                  builder: (BuildContext context) =>Shoes(onPop: (vv ) {
                    setState(() {
                      ShoesController.text=vv;
                    });

                  },)
                ); },),
                SizedBox(height: 24),
                Text('Home',style: robo_600_14_29),
                SizedBox(height: 4),
                usersetting(profileeee: 'Bed', txt: BedController.text.isEmpty?Text(sizeandwmodel.data!.bed.toString()==""?"+add":sizeandwmodel.data!.bed.toString()):Text(BedController.text), imggg: 'assets/Icons/icon1.png', onTap: () {  showDialog<String>(
                  context: context,

                  builder: (BuildContext context) => Bed(onPop: (beddd){
                    setState(() {
                      BedController.text=beddd;
                    });
                  })
                ); },),
              ],
            ),
          ),
      SizedBox(height: 24),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: MainButton(height:52 ,width:double.infinity ,title:'Update' ,txtstyle:robo_500_14_7A , color: kF7E641, onTap: () {
          updatesizes(waist: WaistController.text,
            shirt: ShirtController.text,
            shoes: ShoesController.text,
            bed: BedController.text,
            idd:sizeandwmodel.data!.id.toString(), privacy: 'public').then((value) async{
              if(value['status']==true){
                Navigator.pop(context);
                Fluttertoast.showToast(msg: value['message']);
              } else{
                Fluttertoast.showToast(msg: 'please fill the details');
              }
          }); },),
      )

        ],
      ),
    );
  }
}
//---------------stless
class usersetting extends StatelessWidget {
  final String profileeee;
  final Widget txt;
  final String imggg;
  final Function() onTap;
  const usersetting({super.key, required this.profileeee,  required this.imggg, required this.onTap, required this.txt});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(profileeee,style: robo_400_14_70),
            Row(children: [
            txt,
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
//-------------------------stless

