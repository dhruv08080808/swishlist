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

  TextEditingController phonec=TextEditingController();
  TextEditingController enternewpass=TextEditingController();
  TextEditingController reenternewpass=TextEditingController();
bool one=false;
  bool two=false;
  String? result;
  String? result1;
  String? result2;
  bool _value = false;
  bool _value2 = false;
  bool verifyphone=false;
  bool newpass=false;
  bool _obscureText = true;
  bool _obsecureeText=true;
  bool _hidepass=true;
  void _hidipassword(){
    setState(() {
      _hidepass=!_hidepass;
    });
  }
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
  void _togglee() {
    setState(() {
      _obsecureeText = !_obsecureeText;
    });
  }
  int myindexx=0;


  bool next=false;
  bool hide=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(bar: 'Reset Password'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
           children: [
             Row(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Column(
                   children: [
            InkWell(
              onTap: () {
                setState(() {
                  _value = !_value;
                });
              },
              child: Container(height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color:kE0E0E0

                      ),
                      borderRadius: BorderRadius.circular(10),
                      color: kF7E641,
                      image: DecorationImage(image: AssetImage(_value?'assets/Icons/tick right.png':"assets/Icons/share.png"),)
                  )),
            ),
            SizedBox(
              height: 123,
              child: Container(
                  height: 30.0,
                  width: 1.0,
                  color:kE0E0E0
                //margin: const EdgeInsets.only(left: 10.0, right: 10.0),
              ),
            ),
            Container(height: 15,
                width: 15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kF7E641,
                )),
            SizedBox(
              height: 79,
              child: Container(
                  height: 30.0,
                  width: 1.0,
                  color:kE0E0E0
                //margin: const EdgeInsets.only(left: 10.0, right: 10.0),
              ),
            ),
            Container(height: 15,
                width: 15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kF7E641,
                )),

                   ],
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left: 13),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text('Enter your registered phone number',style:TextStyle(fontSize: 18,fontWeight: FontWeight.w500,fontFamily: 'ubuntu',color: Color(0xff292929))),
                       SizedBox(height: 8),
                       //Text(myindexx==0?'Verification link sent':'null',style: robo_500_14_65),
                       Column(
                         children: [
                           Container(
                             height: 52,
                             width: 300,
                             decoration:
                             BoxDecoration(color: kEDEDF1, borderRadius: BorderRadius.circular(8)),
                             child: TextFormField(
                               obscureText: _hidepass,
                               controller: phonec,
                               decoration: InputDecoration(
                                   border: InputBorder.none,
                                   hintText: 'Phone Number',
                                   hintStyle: robo_400_14_70,
                                   suffixIcon:
                                   InkWell(
                                     onTap: _hidipassword,
                                     child:    Image(image: AssetImage(
                                         _hidepass?'assets/Icons/hidepasssm.png':
                                         'assets/Icons/hide pass.png')),
                                   ),
                                   contentPadding: EdgeInsets.symmetric(horizontal: 15,vertical: 12)),
                             ),),
                         ],
                       ),
                       SizedBox(height: 7),
                       MainButton(height:52 ,width:96 ,title:'Next' ,txtstyle:robo_500_14_7A , color:
                   phonec.text.isEmpty?
                 kFCF5B6:kF7E641 , onTap:() {
                   setState(() {
                     next=!next;
                     hide=
                      verifyphone=!verifyphone;
                   });
                 } ),
                       SizedBox(height: 64),
                       Text('Verify phone number',style:
                       ubun_500_18_29),
                     //  Text('Number verified',style: robo_500_14_65),
                       SizedBox(height: 8),


                    AnimatedContainer(

                      height:next? 200:0,
                      duration: Duration(milliseconds: 5),
                   child: Column(
              children: [
                Text('Click on the verification link sent to\n+18474624853. Link will be valid for 30\nMinutes. ',style: robo_400_14_70,maxLines: 3,overflow: TextOverflow.ellipsis),
                SizedBox(height: 20),
                Row(children: [
                  GestureDetector(
                    onTap:(){
                      setState(() {
                        _value2 = !_value2;
                      });
                  },
                    child: Container(
                      height: 52,
                      width: 149,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: kF7E641,
                      ),
                      child: Center(child: Text('Open messages',style: robo_500_14_29)),
                    ),
                  ),
                    SizedBox(width: 12),
                    Container(
                    height: 52,
                    width: 126,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: kA3A3A3),
                      color: kFFFFFF,
                    ),
                    child: Center(child: Text('Resend',style: robo_500_14_29)),

                  )
]
                ),
              ],
            ),
          ),SizedBox(),
                       SizedBox(height: 64),
                       Text('Enter New Password',style: ubun_500_18_29),
                       SizedBox(height: 8),
                       _value2?
                       Column(
                         crossAxisAlignment:CrossAxisAlignment.start ,
                         children: [
                           Text('Type your new password',style: robo_400_14_70),
                           SizedBox(height: 20),
                           Container(
                             height: 52,
                             width: 300,
                             decoration:
                             BoxDecoration(color: kEDEDF1, borderRadius: BorderRadius.circular(8)),
                             child: TextFormField(
                               obscureText: _obsecureeText,
                               controller: enternewpass,
                               decoration: InputDecoration(
                                   border: InputBorder.none,
                                   hintText: 'Enter new password',
                                   hintStyle: robo_400_14_70,
                                   suffixIcon:
                                   InkWell(
                                     onTap: _togglee,
                                     child:    Image(image: AssetImage(
                                         _obsecureeText?'assets/Icons/hidepasssm.png':
                                         'assets/Icons/hide pass.png')),
                                   ),
                                   contentPadding: EdgeInsets.symmetric(horizontal: 15,vertical: 12)),
                             ),),
                           SizedBox(height: 12),
                           Container(
                               height: 52,
                               width: 300,
                               decoration:
                               BoxDecoration(color: kEDEDF1, borderRadius: BorderRadius.circular(8)),
                               child: TextFormField(
                                 controller: reenternewpass,
                                 obscureText: _obscureText,
                                 decoration: InputDecoration(
                                     border: InputBorder.none,
                                     hintText: 'Reenter new password',
                                     hintStyle: robo_400_14_70,
                                     suffixIcon:
                                     InkWell(
                                         onTap: _toggle,
                                         child: Image(image: AssetImage(
                                             _obscureText?
                                             'assets/Icons/hidepasssm.png':
                                             'assets/Icons/hide pass.png'
                                         ))
                                     ),
                                     contentPadding: EdgeInsets.symmetric(horizontal: 15,vertical: 12)),
                               )),
                           SizedBox(height: 16),
                           MainButton(height: 48, width: 87, title: 'Save', txtstyle: robo_500_14_00, onTap: () {  }, color: kF7E641,)

                         ],

                       )
                           : SizedBox(),


                     ],

                   ),


                 )
               ],
             )
             ]
          ),
        ),
      )

        // Column(
        //   children: [
        //    // Container(
        //    //   height: 24,
        //    //   width: 24,
        //    //   decoration: BoxDecoration(
        //    //     borderRadius: BorderRadius.circular(radius)
        //    //   ),
        //    // ),
        //     SizedBox(
        //       height: 211,
        //       child: Container(
        //         height: 30.0,
        //         width: 1.0,
        //         color:kE0E0E0
        //         //margin: const EdgeInsets.only(left: 10.0, right: 10.0),
        //       ),
        //     ),
        //     MediaQuery(
        //       data: MediaQuery.of(context).removePadding(removeTop: true),
        //       child: Radio(
        //           visualDensity: VisualDensity(
        //               horizontal: VisualDensity.minimumDensity,
        //               vertical: VisualDensity.minimumDensity),
        //           materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        //           value: "",
        //           groupValue: result1,
        //           activeColor: Colors.yellow,
        //           onChanged: (value){
        //             setState(() {
        //               result1 = value.toString();
        //             });}),
        //     ),
        //     SizedBox(
        //       height: 70,
        //       child: Container(
        //         height: 30.0,
        //         width: 1.0,
        //         color: kE0E0E0
        //         //margin: const EdgeInsets.only(left: 10.0, right: 10.0),
        //       ),
        //     ),
        //     Row(
        //       children: [
        //         MediaQuery(
        //           data: MediaQuery.of(context).removePadding(removeTop: true),
        //           child: Radio(
        //             visualDensity: VisualDensity(
        //                 horizontal: VisualDensity.minimumDensity,
        //                 vertical: VisualDensity.minimumDensity),
        //               materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        //               value: "",
        //               groupValue: result2,
        //               activeColor: Colors.yellow,
        //               onChanged: (value){
        //                 setState(() {
        //                   result2 = value.toString();
        //                 });}),
        //         ),
        //       ],
        //     ),
        //   ],
        // ),

// Row(
//   crossAxisAlignment: CrossAxisAlignment.start,
//   children: [
//     // Column(
//     //     children: [
//     //       SizedBox(height: 10),
//     //       InkWell(
//     //         onTap: () {
//     //           setState(() {
//     //             _value = !_value;
//     //           });
//     //         },
//     //         child: Container(height: 15,
//     //             width: 15,
//     //             decoration: BoxDecoration(
//     //                 border: Border.all(
//     //                     color:kE0E0E0
//     //
//     //                 ),
//     //                 borderRadius: BorderRadius.circular(10),
//     //                 color: kF7E641,
//     //                 image: DecorationImage(image: AssetImage(_value?'assets/Icons/tick right.png':"assets/Icons/share.png"),
//     //
//     //                 )
//     //             )),
//     //       ),
//     //       SizedBox(
//     //         height: 211,
//     //         child: Container(
//     //             height: 30.0,
//     //             width: 1.0,
//     //             color:kE0E0E0
//     //           //margin: const EdgeInsets.only(left: 10.0, right: 10.0),
//     //         ),
//     //       ),
//     //       Container(height: 15,
//     //           width: 15,
//     //           decoration: BoxDecoration(
//     //             borderRadius: BorderRadius.circular(10),
//     //             color: kF7E641,
//     //           )),
//     //       SizedBox(
//     //         height: 79,
//     //         child: Container(
//     //             height: 30.0,
//     //             width: 1.0,
//     //             color:kE0E0E0
//     //           //margin: const EdgeInsets.only(left: 10.0, right: 10.0),
//     //         ),
//     //       ),
//     //       Container(height: 15,
//     //           width: 15,
//     //           decoration: BoxDecoration(
//     //             borderRadius: BorderRadius.circular(10),
//     //             color: kF7E641,
//     //           )),
//     //     ]),
//     Padding(
//       padding: const EdgeInsets.only(left: 14),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           SizedBox(height: 3),
//
//           Text('Enter your registered phone number',style:TextStyle(fontSize: 18,fontWeight: FontWeight.w500,fontFamily: 'ubuntu',color: Color(0xff292929))),
//                   SizedBox(height: 20),
//             Container(
//
//               width: 299,
//
//               child: TextFieldd(
//                   height: 52, contoller: phonec, title: '',
//
//                              txtstyle: robo_400_14_70, onTap: (){}, color: kEDEDF1,hinttext: 'Phone number'),
//
//             ),
//
//           SizedBox(height: 7),
//
//                  MainButton(height:52 ,width:96 ,title:'Next' ,txtstyle:robo_500_14_7A , color:
//
//                  phonec.text.isEmpty?
//
//                  kFCF5B6:kF7E641 , onTap:() {
//
//                    setState(() {
//
//                      verifyphone=!verifyphone;
//
//                    });
//
//
//
//                  } ),
//
//       SizedBox(height:75 ),
//
//           Text('Verify phone number',style:
//
//           verifyphone==true?ubun_500_18_29
//
//           :Ubun_500_18_A3),
//
//
//
//           verifyphone?
//
//           AnimatedContainer(
//             height: 200,duration: Duration(milliseconds: 5),
//
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//
//           SizedBox(height: 8),
//
//           Text('Click on the verification link sent to\n+18474624853. Link will be valid for 30\nMinutes. ',style: robo_400_14_70,maxLines: 3,overflow: TextOverflow.ellipsis),
//
//           SizedBox(height: 20),
//
//           Row(children: [
//
//             GestureDetector(
//               onTap:(){
//                 setState(() {
//                   _value2 = !_value2;
//
//                 });
//
//             },
//               child: Container(
//
//                 height: 52,
//
//                 width: 149,
//
//                 decoration: BoxDecoration(
//
//                   borderRadius: BorderRadius.circular(8),
//
//                   color: kF7E641,
//
//                 ),
//
//                 child: Center(child: Text('Open messages',style: robo_500_14_29)),
//
//               ),
//             ),
//
//             SizedBox(width: 12),
//
//             Container(
//
//               height: 52,
//
//               width: 126,
//
//               decoration: BoxDecoration(
//
//                 borderRadius: BorderRadius.circular(8),
//
//                 border: Border.all(color: kA3A3A3),
//
//                 color: kFFFFFF,
//
//               ),
//
//               child: Center(child: Text('Resend',style: robo_500_14_29)),
//
//             )
//
//           ],)
//
//           ],),
//
//
//
//           ):
//
//             SizedBox(),
//
//           SizedBox(height:64 ),
//
//           Text('Enter New Password',style: Ubun_500_18_A3),
//
//           SizedBox(height: 8),
//
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//           Text('Type your new password',style: robo_400_14_70),
//
//           SizedBox(height: 20),
//
//             // Container(
//             //
//             //     height: 52,
//             //
//             //     width: double.infinity,
//             //
//             //     decoration:
//             //
//             //     BoxDecoration(color: kEDEDF1, borderRadius: BorderRadius.circular(8)),
//             //
//             //     child: TextFormField(
//             //
//             //       controller: contoller,
//             //
//             //       decoration: InputDecoration(
//             //
//             //           border: InputBorder.none,
//             //
//             //           hintText: 'Enter new password',
//             //
//             //           hintStyle: robo_400_14_70,
//             //
//             //           suffixIcon: ,
//             //
//             //           contentPadding: EdgeInsets.symmetric(horizontal: 15)),
//             //
//             //     ));
//           Container(
//             height: 52,
//             decoration:
//                BoxDecoration(color: kEDEDF1, borderRadius: BorderRadius.circular(8)),
//             child: TextFormField(
//               obscureText: _obsecureeText,
//               controller: enternewpass,
//               decoration: InputDecoration(
//                   border: InputBorder.none,
//                   hintText: 'Enter new password',
//                   hintStyle: robo_400_14_70,
//                   suffixIcon:
//                   InkWell(
//                     onTap: _togglee,
//                     child:    Image(image: AssetImage(
//                         _obsecureeText?'assets/Icons/hidepasssm.png':
//                         'assets/Icons/hide pass.png')),
//                   ),
//                   contentPadding: EdgeInsets.symmetric(horizontal: 15,vertical: 12)),
//             ),),
//               SizedBox(height: 12),
//               Container(
//                   height: 52,
//                   decoration:
//                   BoxDecoration(color: kEDEDF1, borderRadius: BorderRadius.circular(8)),
//                   child: TextFormField(
//                     controller: reenternewpass,
//                     obscureText: _obscureText,
//                     decoration: InputDecoration(
//                         border: InputBorder.none,
//                         hintText: 'Reenter new password',
//                         hintStyle: robo_400_14_70,
//                         suffixIcon:
//                         InkWell(
//                           onTap: _toggle,
//                           child: Image(image: AssetImage(
//                               _obscureText?
//                             'assets/Icons/hidepasssm.png':
//                                   'assets/Icons/hide pass.png'
//                           ))
//                         ),
//                         contentPadding: EdgeInsets.symmetric(horizontal: 15,vertical: 12)),
//                   )),
//               SizedBox(height: 16),
//               MainButton(height: 48, width: 87, title: 'Save', txtstyle: robo_500_14_00, onTap: () {  }, color: kF7E641,)
//             ]
//             )
//         ],
//
//       ),
//     ),
//   ],
// )

    );
  }
}
