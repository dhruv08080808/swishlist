import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swishlist_ui/Constants/textstyle.dart';
import 'package:swishlist_ui/Screens/Product/StatusOfProduct.dart';

import '../../Constants/colors.dart';
import '../../widgets/buttons.dart';
import 'ProductPrivacy.dart';

class productt extends StatefulWidget {
  const productt({super.key});

  @override
  State<productt> createState() => _producttState();
}

class _producttState extends State<productt> {
  bool _switchValue = true;
  TextEditingController edit= TextEditingController();
  TextEditingController message= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Product details',style: robo_500_16_39),
        actions: [
          Image.asset('assets/Icons/Messenger Icon.png'),
          
          GestureDetector(
              onTap: (){

      showModalBottomSheet<void>(
        // context and builder are
        // required properties in this widget
        context: context,
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(0),
          ),
        ),
        clipBehavior: Clip.antiAlias,

        builder: (BuildContext context) {

          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 32),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: (){
                      showModalBottomSheet<void>(
                        context: context,
                        isScrollControlled: true,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(0),
                          ),
                        ),
                        builder: (BuildContext context) {
                          return SingleChildScrollView(
                            child: SizedBox(
                              width: double.infinity,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 32,horizontal: 16),
                                child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                                  children:  [
                                    Text('Edit title',style: ubun_700_24_3D),
                                    SizedBox(height: 28),
                                    Container(
                                      height: 154,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(color: kF7E641),
                                      ),
                                        child:TextFormField(
                                          controller: edit,
                                          decoration: InputDecoration(
                                              border: InputBorder.none,
                                          ),
                                        )
                                    ),
                                    SizedBox(height: 16),
                                    MainButton(height: 48, width: 87, title: 'Save', txtstyle: robo_500_14_00, onTap: () {  }, color: kF7E641,)
                                  ]
                                )
                              )
                            )
                          );
                        }
                      );
                    },
                    child: Row(children: [
                      Image.asset('assets/Icons/edit.png'),
                      SizedBox(width: 12),
                      Text('Edit title',style: robo_500_14_39)
                    ]),
                  ),
                  SizedBox(height: 32),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProductPrivacy()),
                      );
                    },
                    child: Row(children: [
                      Image.asset('assets/Icons/eye icon.png'),
                      SizedBox(width: 12),
                      Text('Edit privacy',style: robo_500_14_39)
                    ]),
                  ),
                  SizedBox(height: 32),
                  GestureDetector(
                    onTap: (){
                      showModalBottomSheet<void>(
                        // context and builder are
                        // required properties in this widget
                        context: context,
                        builder: (BuildContext context) {
                          // we set up a container inside which
                          // we create center column and display text

                          // Returning SizedBox instead of a Container
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 20),
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Container(
                                  height: 106,
                                  decoration: BoxDecoration(
                                      color: kEFEFEF,
                                      borderRadius: BorderRadius.circular(8)
                                  ),
                                  child:TextFormField(
                                    controller:message ,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText:'Write a message',
                                        hintStyle:robo_400_14_70,
                                        contentPadding: EdgeInsets.symmetric(horizontal: 15)
                                    ),
                                  )
                              ),
                                  SizedBox(height: 12),
                                  Row(children: [
                                    Text('Send to',style: ubun_700_28_29),
                                    Spacer(),
                                    Text('Anonymously',style: robo_400_14_70),
                                    Transform.scale(
                                      scale: 0.8,
                                      child: CupertinoSwitch(
                                        value: _switchValue,
                                        activeColor: kF7E641,
                                        onChanged: (value) {
                                          setState(() {
                                            _switchValue = value;
                                          });
                                        },
                                      ),
                                    ),
                                  ]),
                                  SizedBox(height: 24),
                                  Container(
                                    height: 44,
                                    decoration:  BoxDecoration(
                                border: Border.all(color: kEDEDF1),borderRadius: BorderRadius.circular(8),
                                      color: kEDEDF1
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 10),
                                      child: Row(children: [
                                        Image.asset('assets/Icons/searchicon.png',height: 19),
                                        SizedBox(width: 12),
                                        Text('Search',style: robo_400_14_70),
                                        SizedBox(height: 16),

                                      ],),
                                    ),
                                  ),
                                  SizedBox(height: 16),
                                  SizedBox(
                                    height: 800,
                                    width: double.infinity,
                                    child: ListView.separated(
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemBuilder: (context,i){
                                          return Container(
                                            height: 40,
                                            width: double.infinity,
                                            child: Row(children: [
                                              Image.asset('assets/images/friend 2 circle.png'),
                                              SizedBox(width: 8),
                                              Text('Jan Levinson',style: robo_400_14_1F),
                                              Spacer(),
                                              Container(
                                                height: 36,
                                                width: 70,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(8),
                                                  color: KF7E641,
                                                ),
                                                child: Center(child: Text('Send',style: inter_500_12_27,)),
                                              )
                                            ],),
                                          );

                                        }, separatorBuilder: (context,i){
                                      return SizedBox(height: 16,);
                                    }, itemCount: 8),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: Row(children: [
                      Image.asset('assets/Icons/share.png'),
                      SizedBox(width: 12),
                      Text('Share externally',style: robo_500_14_39)
                    ]),
                  ),
                  SizedBox(height: 32),
                  Row(children: [
                    Image.asset('assets/Icons/Archieve.png'),
                    SizedBox(width: 12),
                    Text('Archieve',style: robo_500_14_39)
                  ]),
                  SizedBox(height: 32),
                  GestureDetector(
                    onTap: (){
                      // showDialog(
                      //   context: context,
                      //   builder: (ctx) => AlertDialog(
                      //     title:  Center(child: Text("Delete this product?",style: robo_500_18_29)),
                      //     content: const Text("This product with will be permanently deleted",),
                      //     actions: <Widget>[
                      //       TextButton(
                      //         onPressed: () {
                      //           Navigator.of(ctx).pop();
                      //         },
                      //         child: Container(
                      //       height: 52,
                      //           width: 138,
                      //           decoration: BoxDecoration(
                      //             borderRadius: BorderRadius.circular(8),
                      //             border: Border.all(color: kA3A3A3)
                      //           ),
                      //
                      //           child: const Text("okay"),
                      //         ),
                      //       ),
                      //    ],
                      //   ),
                      // );
                      showDialog(
                          context: context,
                          builder: (_) =>  AlertDialog(
                            insetPadding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.all(
                                    Radius.circular(10.0))),
                            content: Builder(
                              builder: (context) {
                                // Get available height and width of the build area of this widget. Make a choice depending on the size.
                                return SingleChildScrollView(
                                  child: Container(
                                    
                            width: double.infinity,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                       Text('Delete this product?',style: robo_500_18_29),
                                      SizedBox(height: 8),
                                      Text('This product with will be permanently deleted',style: robo_400_12_82,),
                                      SizedBox(height: 44),
                                      Row(children: [
                                        Expanded(
                                          child: Container(
                                            height: 52,
                                            width: 138,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(8),
                                              border: Border.all(color: kA3A3A3),
                                            ),
                                            child: Center(child: Text('Cancel',style:robo_400_12_28)),
                                          ),
                                        ),
                                        SizedBox(width: 12),
                                        Expanded(
                                          child: Container(
                                            height: 52,
                                            width: 138,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(8),
                                              border: Border.all(color: kA3A3A3),
                                            ),
                                            child: Center(child: Text('Cancel',style:robo_400_12_28)),
                                          ),
                                        )
                                      ],)


                                    ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          )
                      );
                    },
                    child: Row(children: [
                      Image.asset('assets/Icons/Delete.png'),
                      SizedBox(width: 12),
                      Text('Delete',style: robo_500_14_39)
                    ]),
                  ),



                ],


              ),
            ),
          );
        },
      );
    },

              child: Image.asset('assets/Icons/3 dot in a line.png'))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text('RESPAWN 110 Racing Style Gaming Chair, Reclining Ergonomic Chair with Footrest, in \n Green',style: robo_500_16_29),
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('\$ 47.99',style: ubun_700_24_29),
              Container(
                height: 52,
                width: 140,
                decoration: BoxDecoration(
                  color: kF7E641,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(28, 9, 12, 9),
                    child:
                    Column(children: [
                      Text('view on',style: robo_500_12_3F),
                      Image.asset('assets/Icons/amazon icon.png')
                    ],),
                  ),
                  Image.asset('assets/Icons/maximise.png')

                ],),
              ),
            ],),
          SizedBox(height: 20),
          Image.asset('assets/images/Chair big.png'),
          Row(
            children: [
              Text('12 June, 2022',style: robo_400_12_70),
              SizedBox(width: 8),
              Image.asset('assets/Icons/dot.png'),
              SizedBox(width: 8),
            Icon(Icons.remove_red_eye,color: k707070,weight: 16),
              SizedBox(width: 4),
              Text('4',style: inter_400_14_70,)
            ],
          ),

        ],),
      ),
    );
  }
}
//----------------
class Bottomnavscreen extends StatelessWidget {
  final String imgg;
  final String txt;
  final TextStyle txtstyle;
  final Function() onTap;
  const Bottomnavscreen({super.key, required this.imgg, required this.txt, required this.txtstyle, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onTap;
      },
      child: Row(children: [
          Image.asset(imgg),
        SizedBox(width: 12),
        Text(txt,style: txtstyle,)
      ]),
    );
  }
}
