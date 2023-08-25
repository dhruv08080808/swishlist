import 'package:flutter/material.dart';

import '../../Constants/colors.dart';
import '../../Constants/textstyle.dart';
import '../../widgets/Appbar.dart';
import '../../widgets/buttons.dart';
import '../../widgets/textfield.dart';
class Resetpass extends StatefulWidget {
  const Resetpass({super.key});

  @override
  State<Resetpass> createState() => _ResetpassState();
}

class _ResetpassState extends State<Resetpass> {
  List<Step> stepList() => [
    const Step(title: Text('Account'), content: Center(child: Text('Account'),)),
    const Step(title: Text('Address'), content: Center(child: Text('Address'),)),
    const Step(title: Text('Confirm'), content: Center(child: Text('Confirm'),))
  ];
  TextEditingController phonec=TextEditingController();
  String? result;
  String? result1;
  String? result2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(bar: 'Reset Password'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Row(
         crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          SizedBox(height: 40),
          Column(
            children: [
              Radio(
                  visualDensity: VisualDensity(
                      horizontal: VisualDensity.minimumDensity,
                      vertical: VisualDensity.minimumDensity),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  value: "",
                  groupValue: result,
                  activeColor: Colors.yellow,
                  onChanged: (value){
                    setState(() {
                      result = value.toString();
                    });}),
              SizedBox(
                height: 211,
                child: Container(
                  height: 30.0,
                  width: 1.0,
                  color:kE0E0E0
                  //margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                ),
              ),
              MediaQuery(
                data: MediaQuery.of(context).removePadding(removeTop: true),
                child: Radio(
                    visualDensity: VisualDensity(
                        horizontal: VisualDensity.minimumDensity,
                        vertical: VisualDensity.minimumDensity),
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    value: "",
                    groupValue: result1,
                    activeColor: Colors.yellow,
                    onChanged: (value){
                      setState(() {
                        result1 = value.toString();
                      });}),
              ),
              SizedBox(
                height: 70,
                child: Container(
                  height: 30.0,
                  width: 1.0,
                  color: kE0E0E0
                  //margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                ),
              ),
              Row(
                children: [
                  MediaQuery(
                    data: MediaQuery.of(context).removePadding(removeTop: true),
                    child: Radio(
                      visualDensity: VisualDensity(
                          horizontal: VisualDensity.minimumDensity,
                          vertical: VisualDensity.minimumDensity),
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        value: "",
                        groupValue: result2,
                        activeColor: Colors.yellow,
                        onChanged: (value){
                          setState(() {
                            result2 = value.toString();
                          });}),
                  ),
                ],
              ),
            ],
          ),

Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    SizedBox(height: 3),
    Text('Enter your registered phone number',style:TextStyle(fontSize: 18,fontWeight: FontWeight.w500,fontFamily: 'ubuntu',color: Color(0xff292929))),
              SizedBox(height: 20),
        Container(
          width: 299,
          child: TextFieldd(height: 52, contoller: phonec, title: '',
                         txtstyle: robo_400_14_70, onTap: (){}, color: kEDEDF1,hinttext: 'Phone number'),
        ),
    SizedBox(height: 7),
             MainButton(height:52 ,width:96 ,title:'Next' ,txtstyle:robo_500_14_7A , color:
             phonec.text.isEmpty?
             kFCF5B6:kF7E641 , onTap:() {} ),
SizedBox(height:75 ),
    Text('Verify phone number',style: Ubun_500_18_A3),
    SizedBox(height:65 ),
    Text('Enter New Password',style: Ubun_500_18_A3),
  ],
)
          ]),
      ),
    );
  }
}
