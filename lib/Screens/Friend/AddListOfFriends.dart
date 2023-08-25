import 'package:flutter/material.dart';
import '../../Constants/colors.dart';
import '../../Constants/textstyle.dart';
import '../../widgets/Appbar.dart';
class AddListOfFriends extends StatefulWidget {
  const AddListOfFriends({super.key});
  @override
  State<AddListOfFriends> createState() => _AddListOfFriendsState();
}
class _AddListOfFriendsState extends State<AddListOfFriends> {
  TextEditingController Searchc = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(bar: 'Add friend'),
        body: Padding(
            padding: const EdgeInsets.all(16),
            child: ListView(children: [
              Container(
                  height: 52,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: kEDEDF1,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextFormField(
                      controller: Searchc,
                      decoration: InputDecoration(
                        prefixIcon: Image.asset('assets/Icons/Searchiconn.png'),
                        border: InputBorder.none,
                        hintText: 'Search name or username',
                        hintStyle: robo_400_14_70,
                      ))),
              SizedBox(height: 20),
              profileofeach(immmg: 'assets/images/friend 1 circle.png', name: 'Andy Bernard', surname: 'AndyAngie3260'),
              SizedBox(height: 16),
              profileofeach(immmg: 'assets/images/friend 2 circle.png', name: 'Jan Levinson', surname: 'brunopadilha'),
              SizedBox(height: 16),
              profileofeach(immmg: 'assets/images/friend 3 circle.png', name: 'Arlene McCoy', surname: 'marcelosalomao'),
              SizedBox(height: 16),
              profileofeach(immmg: 'assets/images/friend 1 circle.png', name: 'Andy Bernard', surname: 'AndyAngie3260'),
              SizedBox(height: 16),
              profileofeach(immmg: 'assets/images/friend 2 circle.png', name: 'Jan Levinson', surname: 'brunopadilha'),
              SizedBox(height: 16),
              profileofeach(immmg: 'assets/images/friend 3 circle.png', name: 'Arlene McCoy', surname: 'marcelosalomao'),
              SizedBox(height: 16),
              profileofeach(immmg: 'assets/images/friend 1 circle.png', name: 'Andy Bernard', surname: 'AndyAngie3260'),
              SizedBox(height: 16),
              profileofeach(immmg: 'assets/images/friend 2 circle.png', name: 'Jan Levinson', surname: 'brunopadilha'),
              SizedBox(height: 16),
              profileofeach(immmg: 'assets/images/friend 3 circle.png', name: 'Arlene McCoy', surname: 'marcelosalomao'),
            ])));
  }
}
//--------
class profileofeach extends StatelessWidget {
  final String immmg;
  final String name;
  final String surname;
  const profileofeach({super.key, required this.immmg, required this.name, required this.surname});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 52,
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          Image.asset(immmg),
          SizedBox(width: 8),
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(name,style: robo_500_14_29),
                Text(surname,style: robo_400_14_70),
              ]),
          Spacer(),
          Container(
            height: 36,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: kF7E641,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.5,horizontal: 20),
              child: Text('Add',style: robo_500_13_2C,),
            ),
          )
        ])
    );;
  }
}
