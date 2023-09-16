import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swishlist_ui/API/datesandevents/update_dates_and_time.dart';
import 'package:swishlist_ui/Constants/textstyle.dart';

import '../../API/datesandevents/datesandevents_api.dart';
import '../../Constants/colors.dart';
import '../../Models/dates_and_events_model.dart';
import '../../widgets/buttons.dart';
class Datesande extends StatefulWidget {

  const Datesande({super.key});
  @override
  State<Datesande> createState() => _DatesandeState();
}
class _DatesandeState extends State<Datesande> {
// List=>DatesAndEventsModel( dateandee=[];
//
//     )
@override
  void initState() {
  getAllEvent();
    super.initState();
  }
bool isLoading = false;
DatesAndEvents?event;
getAllEvent() {
  isLoading = true;
  var resp = datesandeventapi();
  resp.then((value) {
    if(value['status'] == true) {
      setState(() {
        event = DatesAndEvents.fromJson(value);
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
DateTime date1 = DateTime(2016, 10, 28);
  DateTime date = DateTime(2016, 10, 26);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Dates and Events',style: robo_500_16_29),
          Text('60% Completed',style: robo_400_12_70),
        ],
      ),

      ),
      body:
      isLoading ? Center(child: CircularProgressIndicator()):
      Column(
        children: [
          LinearProgressIndicator(
            backgroundColor: kBA54DE,
            valueColor: AlwaysStoppedAnimation(kBA54DE),
            minHeight: 8,
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Text('Upcoming',style: robo_600_14_29),
                // SizedBox(height: 4),
                // usersetting(profileeee: 'Trip to America', status: '${date.month}-${date.day}-${date.year}', imggg: 'assets/Icons/icon1.png', ontap: () {
                //   showDialog<String>(
                //     context: context,
                //     builder: (BuildContext context) =>
                //         AlertDialog(
                //           insetPadding: EdgeInsets.zero,
                //       contentPadding: EdgeInsets.zero,
                //       shape: RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(12),
                //       ),
                //       elevation: 0,
                //
                //       content:  Container(
                //         height:
                //         200,
                //         child: CupertinoDatePicker(
                //         mode: CupertinoDatePickerMode.date,
                //         initialDateTime: DateTime(1969, 1, 1),
                //         onDateTimeChanged: (DateTime newDateTime) {
                //           setState(()=> date=newDateTime
                //           );
                //         },
                //     ),
                //       ),)
                //
                //
                // );
                //
                //   },),
                // Container(
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //       children: [
                //     Text('+ Add more',style: robo_500_14_KBA5),
                //     Image.asset('assets/images/right aroow.png')
                //
                //   ]),
                // ),
                // SizedBox(height: 24),
                Text('All',style: robo_600_14_29),
                SizedBox(height: 4),
                SizedBox(
                  height: 90,
                  child: ListView.separated(
                      shrinkWrap: true,

                      itemBuilder: (context,i){
                    return
                      Container(
                        height: 36,
                        child: GestureDetector(
                          onTap: (){
                            showDialog<String>(
                                    context: context,
                                    builder: (BuildContext context) =>
                                        AlertDialog(
                                          insetPadding: EdgeInsets.zero,
                                          contentPadding: EdgeInsets.zero,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(12),
                                          ),
                                          elevation: 0,
                                          content:  Container(
                                            height: 200,
                                            child: CupertinoDatePicker(
                                              mode: CupertinoDatePickerMode.date,
                                              initialDateTime: DateTime(1969, 1, 1),
                                              onDateTimeChanged: (DateTime newDateTimee) {
                                                setState(()=> date=newDateTimee
                                                );
                                              },
                                            ),
                                          ),)
                                );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(event!.data![i].name.toString(),style: robo_400_14_70),
                              Row(children: [
                                '${date.month}-${date.day}-${date.year}'.isEmpty?Text( event!.data![i].date.toString()==""?"+add":event!.data![i].date.toString()):Text('${date.month}-${date.day}-${date.year}'),
                                SizedBox(width: 4),
                                Image.asset('assets/images/right aroow.png')
                              ],)
                            ],
                          ),
                        ),
                      );
                  }, separatorBuilder: (context,i){
                    return SizedBox(height: 10);
                  }, itemCount: event!.data!.length),
                ),


                // usersetting(profileeee: 'Birthday', status: '${date1.month}-${date1.day}-${date1.year}', imggg: 'assets/Icons/icon1.png', ontap: () {   showDialog<String>(
                //     context: context,
                //     builder: (BuildContext context) =>
                //         AlertDialog(
                //           insetPadding: EdgeInsets.zero,
                //           contentPadding: EdgeInsets.zero,
                //           shape: RoundedRectangleBorder(
                //             borderRadius: BorderRadius.circular(12),
                //           ),
                //           elevation: 0,
                //           content:  Container(
                //             height: 200,
                //             child: CupertinoDatePicker(
                //               mode: CupertinoDatePickerMode.date,
                //               initialDateTime: DateTime(1969, 1, 1),
                //               onDateTimeChanged: (DateTime newDateTimee) {
                //                 setState(()=> date1=newDateTimee
                //                 );
                //               },
                //             ),
                //           ),)
                //
                //
                // );  },),
                // usersetting(profileeee: 'First Job', status: '', imggg: 'assets/Icons/icon i pink.png', ontap: () {  },),
                // usersetting(profileeee: 'Annivrsary', status: '', imggg: 'assets/Icons/icon i pink.png', ontap: () {  },),
                // usersetting(profileeee: 'Birthday', status: '', imggg: 'assets/Icons/icon i pink.png', ontap: () {  },),
                Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('+ Add more',style: robo_500_14_KBA5),
                        Image.asset('assets/images/right aroow.png')
                      ]),
                ),

              ],
            ),
          ),
          SizedBox(height: 24),
    Padding(
 padding: EdgeInsets.symmetric(horizontal: 16),
      child: MainButton(height:52 ,width:double.infinity ,title:'Update' ,txtstyle:robo_500_14_7A , color: kF7E641, onTap: () {
        // updatedatesandeventapi(name: , date: date, type: type, privacy: privacy, id: id)

      }),
    )
        ],
      ),
    );
  }
}
//---------------stless
// class usersetting extends StatelessWidget {
//   final String profileeee;
//   final String status;
//   final String imggg;
//   final Function() ontap;
//   const usersetting({super.key, required this.profileeee, required this.status, required this.imggg, required this.ontap});
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 36,
//       child: GestureDetector(
//         onTap: ontap,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Text(profileeee,style: robo_400_14_70),
//             Row(children: [
//               Text(status,style: robo_400_14_b_29),
//               SizedBox(width: 4),
//               Image.asset(imggg),
//               SizedBox(width: 4),
//               Image.asset('assets/images/right aroow.png')
//             ],)
//           ],
//         ),
//       ),
//     );
//   }
// }
