import 'package:flutter/material.dart';
import 'package:swishlist_ui/API/pets/petsapi.dart';
import 'package:swishlist_ui/Constants/url.dart';

import '../../Constants/colors.dart';
import '../../Constants/textstyle.dart';
import '../../Models/pets_model.dart';

class Pets extends StatefulWidget {
  const Pets({super.key});

  @override
  State<Pets> createState() => _PetsState();
}

class _PetsState extends State<Pets> {
  @override
  void initState() {
    getallpets();
    super.initState();
  }
  // bool isLoading=false;

  // PetsModel petsss=PetsModel(
  //   data: Data(
  //     photo:
  //   )
  // );

  // PetsModel?petsmain;
  // getallpets(){
  //   isLoading = true;
  //   var resp = getpetsapi();
  //   resp.then((value) {
  //     if(value['status'] == true) {
  //       setState(() {
  //         petsmain = PetsModel.fromJson(value);
  //         // for (var v in event!.data! ) {
  //         //   if (v.type == "all") {
  //         //     event2.add(v);
  //         //   }
  //         // }
  //         isLoading = false;
  //       });
  //     } else{
  //       isLoading = false;
  //     }
  //   });

    // isLoading=true;
    // List<dynamic> petslist=[];
    // var resp= getpetsapi();
    // print(resp);
    // resp.then((value) {
    //   if(value['status'] == true) {
    //     setState(() {
    //       petsmain = PetsModel.fromJson(value);
    //       print(petsmain);
    //       // for (var v in event!.data! ) {
    //       //   if (v.type == "all") {
    //       //     event2.add(v);
    //       //   }
    //       // }
    //        isLoading = false;
    //     });
    //   } else{
    //     isLoading = false;
    //   }
    // });
    //
    // {
    //   if(value['status']==true){
    //     setState(() {
    //
    //     });
    //   }
    // });
  bool isLoading = false;
  PetsModel?event;
  getallpets() {
    isLoading = true;
    var resp = getpetsapi();
    resp.then((value) {
      if(value['status'] == true) {
        setState(() {
          event = PetsModel.fromJson(value);
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
      appBar: AppBar(title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Pets',style: robo_500_16_29),
          Text('60% Completed',style: robo_400_12_70),
        ],
      ),

      ),


      body:
      isLoading==true? Center(child: CircularProgressIndicator()):

      SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
          LinearProgressIndicator(
          backgroundColor: kC09B3D,
          valueColor: AlwaysStoppedAnimation(kC09B3D),
          minHeight: 8,
        ),
            SizedBox(
              height: 300,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 20),
                child: GridView.count(
                    primary: false,
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    childAspectRatio: 0.99,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                    physics:  NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.all(8),
                    children: List.generate(event!.data!.length, (index){
                      return
                        Container(
  width: 156,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    border: Border.all(color: kE0E0E0),
  ),
  child: Column(
        children: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 38,vertical: 24),
              //imageUrl: '$baseurl${SharedPrefs().getphoto()}',
              child: Image.network(baseurl+event!.data![index].photo.toString())
          ),
          Padding(
              padding: const EdgeInsets.fromLTRB(12, 12, 0, 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            Text(event!.data![index].name.toString(),style: robo_400_14_b_29),
            Row(children: [
              Text(event!.data![index].type.toString(),style: inter_400_14_70),
              SizedBox(width: 8),
              Image.asset('assets/Icons/dot.png'),
              SizedBox(width: 8),
              Text(event!.data![index].origin.toString(),style: inter_400_14_70),
            ],)
              ],
            ),
Image.asset('assets/Icons/right arrow.png'),
          ],),
          )
  ]),
);

                    }

                    )
                ),
              ),
            ),

        ],
        ),
      ),
//         child: Column(
//           mainAxisSize: MainAxisSize.max,
//           children: [
//           LinearProgressIndicator(
//           backgroundColor: kC09B3D,
//           valueColor: AlwaysStoppedAnimation(kC09B3D),
//           minHeight: 8,
//         ),
//             Expanded(
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 20),
//                 child: GridView.count(
//                     primary: false,
//                     shrinkWrap: true,
//                     crossAxisCount: 2,
//                     childAspectRatio: 0.6,
//                     crossAxisSpacing: 5,
//                     mainAxisSpacing: 5,
//                     physics:  NeverScrollableScrollPhysics(),
//                     padding: EdgeInsets.all(8),
//                     children: List.generate(4, (index){
//                       return
//                         Expanded(
//                           child: Container(
//   width: 156,
//   decoration: BoxDecoration(
//     borderRadius: BorderRadius.circular(10),
//     border: Border.all(color: kE0E0E0),
//   ),
//   child: Column(
//         children: [
//           Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 38,vertical: 24),
//               child: Image.asset('assets/Icons/catt.png'),
//           ),
//           Padding(
//               padding: const EdgeInsets.fromLTRB(12, 12, 0, 12),
// //           child: Row(
// //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //             children: [
// //             Column(
// //               crossAxisAlignment: CrossAxisAlignment.start,
// //               children: [
// //             Text('Stevie',style: robo_400_14_b_29),
// //             Row(children: [
// //               Text('Cat',style: inter_400_14_70),
// //               SizedBox(width: 8),
// //               Image.asset('assets/Icons/dot.png'),
// //               SizedBox(width: 8),
// //               Text('Persian',style: inter_400_14_70),
// //             ],)
// //               ],
// //             ),
// // Image.asset('assets/Icons/right arrow.png'),
// //           ],),
//           )
//   ]),
// ),
//                         );
//
//                     }
//
//                     )
//                 ),
//               ),
//             ),
//
//         ],
//         ),
    );
  }
}
