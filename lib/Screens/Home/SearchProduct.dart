
import 'package:flutter/material.dart';
import '../../Constants/colors.dart';
import '../../Constants/textstyle.dart';
class SearchProduct extends StatefulWidget {
  const SearchProduct({super.key});

  @override
  State<SearchProduct> createState() => _SearchProductState();
}

class _SearchProductState extends State<SearchProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

          backgroundColor: kFDFAE3,
          title: Text('Search product, username & more',style: robo_400_14_7E
      ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
          SizedBox(height: 24),
          Text('Recent searches',style: robo_400_12_90),
          SizedBox(height: 8),
              name(txt: 'AnthonyXyzu84'),
              name(txt: 'Xiaomi tab 5'),
              name(txt: 'Smart Watch'),
              SizedBox(height: 24),
              Text('Recent opened',style: robo_400_12_90),
              SizedBox(height: 12),
              personname(),
              SizedBox(height: 16),
              personname(),
              SizedBox(height: 16),
              personname(),
        ]),
      ),
    );
  }
}
//------------------------------
class name extends StatelessWidget {
  final String txt;

  const name({super.key, required this.txt});

  @override
  Widget build(BuildContext context) {

    return  Container(
      width: double.infinity,
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(txt,style: robo_400_14_0D),
          Image.asset('assets/Icons/crosss.png'),

        ]),
    );
  }
}
//----------------
class personname extends StatelessWidget {
  const personname({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height:44,
      width: 328,
      child: Row(
        children: [
          Image.asset('assets/Icons/aunt.png'),
          SizedBox(width: 8),
          Column(
             mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text('Jan Levinson',style: robo_400_14_1F),
            SizedBox(height: 7),
            Text('JanLev23X0',style: robo_400_12_96),
          ],)
        ],
      ),
    );
  }
}

