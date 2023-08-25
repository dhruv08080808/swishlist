import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:swishlist_ui/Constants/textstyle.dart';

import '../../Constants/colors.dart';
import '../../widgets/DropDown/DropDownVal.dart';
import '../../widgets/buttomsheet/BottomSheet.dart';
import '../../widgets/buttons.dart';

class ProductInfo extends StatefulWidget {
  const ProductInfo({super.key});

  @override
  State<ProductInfo> createState() => _ProductInfoState();
}

class _ProductInfoState extends State<ProductInfo> {
  var items = [
    'Have',
    'Dont Have',
    'Want',
  ];
  String dropdownvalue = 'Have';
  TextEditingController datec=TextEditingController();
  TextEditingController DropDown=TextEditingController();
  DateTime date = DateTime(2016, 10, 26);
int indexx=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Product Details', style: robo_500_14_29)),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Product ID : 12345678954'),
              SizedBox(height: 8),
              Text(
                'Jack-O-Lantern Pumpkin with Flickering LED Candle ',
                style: robo_500_16_29,
              ),
              SizedBox(height: 8),
              Text('\$3499', style: ubun_700_24_29),
              Center(
                  child: Image.asset(
                'assets/images/jhumka.jpg',
                height: 220,
              )),
              SizedBox(height: 4),
              Text(
                  'Crafted from premium materials, these Jhumki earrings are built to last, ensuring you can enjoy their beauty and elegance for years to come'),
              Text(
                  'The lightweight design and ergonomic shape ensure a comfortable and hassle-free experience, allowing you to enjoy your day without any discomfort.'),
              Text(
                  'Make a statement, celebrate tradition, and exude confidence with every wear.'),
              Text(
                  'Crafted from premium materials, these Jhumki earrings are built to last, ensuring you can enjoy their beauty and elegance for years to come'),
              Text(
                  'The lightweight design and ergonomic shape ensure a comfortable and hassle-free experience, allowing you to enjoy your day without any discomfort.'),
              Text(
                  'Make a statement, celebrate tradition, and exude confidence with every wear.'),
              SizedBox(height: 10),
              MainButton(
                  height: 40,
                  width: double.infinity,
                  title: 'Add Product',
                  txtstyle: robo_500_14_29,
                  color: kF7E641,
                  onTap: () {
                    showModalBottomSheet<void>(
                      context: context,
                      isScrollControlled: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(0),
                        ),
                      ),
                      clipBehavior: Clip.antiAlias,

                      builder: (BuildContext context) {
                        // we set up a container inside which
                        // we create center column and display text

                        // Returning SizedBox instead of a Container
                        return StatefulBuilder(
                        builder: (BuildContext context, StateSetter setState /*You can rename this!*/) {
                          return  SingleChildScrollView(
                            child: Column(
                              children: [
                                Container(
                                  height: 272,
                                  padding:
                                  const EdgeInsets.fromLTRB(16, 32, 16, 16),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Select Details',
                                          style: ubun_700_24_29),
                                      SizedBox(height: 8),

                                      SizedBox(height: 28),
                                      Container(
                                        height: 52,
                                        decoration: BoxDecoration(
                                            color: kEDEDF1,
                                            borderRadius:
                                            BorderRadius.circular(8)),
                                        child: TextFormField(
                                          readOnly: true,
                                          onTap: (){
                                            showDialog<String>(
                                                context: context,
                                                builder: (BuildContext
                                                context) => DatePickerWidget(
                                                  onPop: (date) {
                                                    setState(() {
                                                      datec.text=DateFormat.yMMMd().format(date);
                                                    });
                                                  },
                                                  maximumDate: 2023,));
                                          },
                                          decoration: InputDecoration(
                                            hintText: datec.text,
                                            helperStyle: TextStyle(color: Colors.red),
                                            suffixIcon: Icon(Icons.calendar_today_rounded),

                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Container(
                                        height: 52,
                                        decoration: BoxDecoration(
                                            color: kEDEDF1,
                                            borderRadius:
                                            BorderRadius.circular(8)),
                                        child: TextFormField(
                                          readOnly: true,
                                          onTap: (){
                                            showModalBottomSheet(context: context, builder: (builder) {

                                              return BottomSheett(Status: 'want', onPop: (df ) {
                                                setState(() {
                                                  DropDown.text=df;
                                                });
                                              },);
                                            });
                                          },
                                          decoration: InputDecoration(
                                            hintText:DropDown.text,
                                            helperStyle: TextStyle(color: Colors.red),
                                            suffixIcon: Icon(Icons.calendar_today_rounded),

                                          )
                                        )
                                      ),
                                      SizedBox(height: 5),
                                      // MainButton(height: 52, width: 96, title: 'Add', txtstyle: robo_500_14_29, onTap: () {  }, color: kF7E641),
                                    ],
                                  ),
                                )
                              ]
                            )
                          );
                        }

                        );
                      }
                    );
                  }),
            ]
          )
        )
      )
    );
  }
}
// GestureDetector(
// onTap: () {
// print(datec.text);
// showDialog<String>(
// context: context,
// builder: (BuildContext
// context) => DatePickerWidget(
// onPop: (date) {
// setState(() {
// datec.text=DateFormat.yMMMd().format(date);
// });
// },
// maximumDate: 2023,));
// },
// child: Icon(
// Icons.calendar_today_rounded)),