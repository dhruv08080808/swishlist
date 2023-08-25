import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swishlist_ui/Constants/textstyle.dart';

import '../../Constants/colors.dart';
import '../../widgets/CheckBox/CheckBox.dart';
import '../../widgets/dialogs/name_dialog.dart';

class ProfileInfo extends StatefulWidget {
  const ProfileInfo({super.key});

  @override
  State<ProfileInfo> createState() => _ProfileInfoState();
}

class _ProfileInfoState extends State<ProfileInfo> {
  String? selectedIcon;
  TextEditingController NameC = TextEditingController();
  TextEditingController HouseNo = TextEditingController();
  TextEditingController OccupationC = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController alternatephonecontroller = TextEditingController();
  TextEditingController Adresscontroller = TextEditingController();
  final genderController = TextEditingController();
  DateTime ?_selectedDate;
  bool isChecked = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
String ?Gender;
  DateTime date = DateTime(2016, 10, 26);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Column(
          children: [
            Text('Profile', style: robo_500_16_29),
            Text('60% Completed', style: robo_400_12_70),
          ],
        ),
      ),
      body: Column(
        children: [
          LinearProgressIndicator(
            backgroundColor: k66D340,
            valueColor: AlwaysStoppedAnimation(Colors.green),
            minHeight: 8,
          ),
          SizedBox(height: 20),
          Stack(
            children: [
              Image.asset('assets/images/mr bean.png', height: 120),
              Positioned(
                child: Image.asset('assets/images/pencil.png'),
                right: 10,
                bottom: 20,
                height: 35,
              ),
            ],
          ),
          SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                usersetting(
                  profileeee: 'Name',
                  status: NameC.text.isEmpty ? "Add" : NameC.text,
                  imggg: 'assets/Icons/icon1.png',
                  onTap: () {
                    showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => NameDialog(
                              name: 'Name',
                              child: TextFormField(
                                onChanged: (v) {
                                  setState(() {});
                                },
                                controller: NameC,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Enter Your Name",
                                    hintStyle: robo_400_14_b_29,
                                    contentPadding:
                                        EdgeInsets.symmetric(horizontal: 15)),
                              ),
                            ));
                  },
                ),
                usersetting(
                  profileeee:
                      genderController.text.isEmpty?

                  'add':genderController.text,
                  status: 'Male',
                  imggg: 'assets/Icons/icon lock.png',
                  onTap: () {
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => CheckBoxWidget(
                        gender: genderController.text, onPop: (val ) {
                          setState(() {
                            genderController.text=val;
                          });

                      },)
                    );
                  },
                ),
                usersetting(
                  profileeee: 'Date of birth',
                  status: '${date.month}-${date.day}-${date.year}',
                  imggg: 'assets/Icons/icon lock.png',
                  onTap: () {
                    showDialog<String>(
                        context: context,
                        builder: (BuildContext context) =>AlertDialog(content:  CupertinoDatePicker(
                          mode: CupertinoDatePickerMode.date,
                          initialDateTime: DateTime(1969, 1, 1),
                          onDateTimeChanged: (DateTime newDateTime) {
                         setState(()=> date=newDateTime
                         );
                          },
                        ),)


                    );
                  },
                ),
                usersetting(
                  profileeee: 'Occupation',
                  status: OccupationC.text.isEmpty ? 'Add' : OccupationC.text,
                  imggg: 'assets/Icons/icon1.png',
                  onTap: () {
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => NameDialog(
                        name: 'Occupation',
                        child: TextFormField(
                          controller: OccupationC,
                          onChanged: (v) {
                            setState(() {});
                          },
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Enter Your Name",
                              hintStyle: robo_400_14_b_29,
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 15)),
                        ),
                      ),
                    );
                  },
                ),
                usersetting(
                  profileeee: 'Relationship Status',
                  status: '',
                  imggg: 'assets/Icons/icon i 1x.png',
                  onTap: () {
                    showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => NameDialog(
                            name: 'Email',
                            child: TextFormField(
                              onChanged: (v) {
                                setState(() {});
                              },
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Enter Your Name",
                                  hintStyle: robo_400_14_b_29,
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 15)),
                            )));
                  },
                ),
                SizedBox(height: 24),
                Text('Contact', style: robo_600_14_29),
                SizedBox(height: 4),
                usersetting(
                  profileeee: 'Email',
                  status: emailcontroller.text.isEmpty
                      ? 'add'
                      : emailcontroller.text,
                  imggg: 'assets/Icons/icon1.png',
                  onTap: () {
                    showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => NameDialog(
                            name: 'Email',
                            child: TextFormField(
                              controller: emailcontroller,
                              onChanged: (v) {
                                setState(() {});
                              },
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Enter Your Email",
                                  hintStyle: robo_400_14_b_29,
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 15)),
                            )));
                  },
                ),
                usersetting(
                  profileeee: 'Phone',
                  status: phonecontroller.text.isEmpty
                      ? 'add'
                      : phonecontroller.text,
                  imggg: 'assets/Icons/icon lock.png',
                  onTap: () {
                    showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => NameDialog(
                            name: 'Phone',
                            child: TextFormField(
                              controller: phonecontroller,
                              onChanged: (v) {
                                setState(() {});
                              },
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Enter Your Phone",
                                  hintStyle: robo_400_14_b_29,
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 15)),
                            )));
                  },
                ),
                usersetting(
                  profileeee: 'Alternate Phone',
                  status: alternatephonecontroller.text.isEmpty
                      ? 'add'
                      : alternatephonecontroller.text,
                  imggg: 'assets/Icons/icon i 1x.png',
                  onTap: () {
                    showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => NameDialog(
                            name: 'Phone',
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              controller: alternatephonecontroller,
                              onChanged: (v) {
                                setState(() {});
                              },
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Enter Your Phone",
                                  hintStyle: robo_400_14_b_29,
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 15)),
                            )));
                  },
                ),
                SizedBox(height: 24),
                Text('Addresses', style: robo_600_14_29),
                SizedBox(height: 4),
                Text('Home', style: robo_400_14_70),
                SizedBox(height: 2),
                GestureDetector(
                  onTap: () {
                    showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => NameDialog(
                            name: 'Address',
                            child: TextFormField(
                              controller: Adresscontroller,
                              onChanged: (v) {
                                setState(() {});
                              },
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Enter Your Address",
                                  hintStyle: robo_400_14_b_29,
                                  contentPadding:
                                  EdgeInsets.symmetric(horizontal: 15)),
                            )));
                  },
                  child: Container(
                    height: 36,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                            '2850 Rogerdale Rd, Houston, Texas,\nUnited States, 77042',
                            style: robo_400_14_b_29),
                        Row(
                          children: [
                            Text(Adresscontroller.text.isEmpty?"add":Adresscontroller.text),
                            SizedBox(width: 4),
                            Image.asset('assets/Icons/icon world.png'),
                            SizedBox(width: 4),
                            Image.asset('assets/images/right aroow.png')
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 8),
                usersetting(
                  profileeee: 'Work',
                  status: '',
                  imggg: 'assets/Icons/icon i 1x.png',
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//---------------stless
class usersetting extends StatelessWidget {
  final String profileeee;
  final String status;
  final String imggg;
  final Function() onTap;

  const usersetting(
      {super.key,
      required this.profileeee,
      required this.status,
      required this.imggg,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,

        onTap: onTap,
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(profileeee, style: robo_400_14_70),
              Row(
                children: [
                  Container(
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(status, style: robo_400_14_b_29),
                      )),
                  SizedBox(width: 4),
                  Image.asset(imggg),
                  SizedBox(width: 4),
                  Image.asset('assets/images/right aroow.png')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

//----------------------------stless
class txttt extends StatelessWidget {
  final double height;
  final double widthhh;
  final TextEditingController contoller;
  final String title;
  final TextStyle txtstyle;
  final Function() onTap;
  final Color color;
  final String hinttext;

  const txttt(
      {super.key,
      required this.height,
      required this.contoller,
      required this.title,
      required this.txtstyle,
      required this.onTap,
      required this.color,
      required this.hinttext,
      required this.widthhh});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: widthhh,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: kF0F1F3)),
        child: TextFormField(
          controller: contoller,
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hinttext,
              hintStyle: robo_400_14_b_29,
              contentPadding: EdgeInsets.symmetric(horizontal: 15)),
        ));
  }
}
// Row(
// crossAxisAlignment: CrossAxisAlignment.end,
// mainAxisAlignment: MainAxisAlignment.end,
// children: [
// Text('Visible to', style: robo_400_14_70),
// SizedBox(width: 4),
// Image.asset('assets/Icons/world icon.png'),
// SizedBox(width: 4),
// Text('Everyone'),
// SizedBox(width: 4),
// ],
// )