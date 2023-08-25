import 'package:flutter/material.dart';
import 'package:swishlist_ui/Constants/textstyle.dart';
import '../../Constants/colors.dart';
class ListOfProducts extends StatefulWidget {
  const ListOfProducts({super.key});
  @override
  State<ListOfProducts> createState() => _ListOfProductsState();
}
class _ListOfProductsState extends State<ListOfProducts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kE5F3E2,
appBar: AppBar(
    backgroundColor:kE5F3E2,
    title: Text('Products',style: robo_500_16_29),
actions: [
  Image.asset('assets/images/3 line.png'),
  Image.asset('assets/Icons/3 dot in a line.png')
  ],
),
      body: ListView(
        children: [
Padding(
  padding: const EdgeInsets.all(16),
  child:   Text('Andy wants',style: ubun_700_24_29),
),
          SizedBox(height: 20),
          Container(
          height: 1000,
            decoration: BoxDecoration(
color: kFFFFFF,
              borderRadius: BorderRadius.circular(24),

            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 36),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text('9 products',style: robo_500_12_70),
                  SizedBox(height: 12),
                  Product(immmg: 'assets/images/chair p.png', Tittle:'RESPAWN 110 Racing Style Gaming Chair,\nReclining Ergonomic Chair with Footrest...', pp: '\$47.99', timeee: 'Today'),
                  SizedBox(height: 16),
                  Product(immmg: 'assets/images/tv.png', Tittle:'Samsung Galaxy Tab A8 Android Tablet,\n10.5” LCD Scre...', pp: '\$1247.99', timeee: 'Yesterday'),
                  SizedBox(height: 16),
                  Product(immmg: 'assets/images/chair p.png', Tittle:'RESPAWN 110 Racing Style Gaming Chair,\nReclining Ergonomic Chair with Footrest...', pp: '\$47.99', timeee: 'Today'),
                  SizedBox(height: 16),
                  Product(immmg: 'assets/images/tv.png', Tittle:'Samsung Galaxy Tab A8 Android Tablet,\n10.5” LCD Scre...', pp: '\$1247.99', timeee: 'Yesterday'),
                  SizedBox(height: 16),
                  Product(immmg: 'assets/images/chair p.png', Tittle:'RESPAWN 110 Racing Style Gaming Chair,\nReclining Ergonomic Chair with Footrest...', pp: '\$47.99', timeee: 'Today'),
                ])))])
    );
  }
}
//----------------------------
class Product extends StatelessWidget {
  final String immmg;
  final String Tittle;
  final String pp;
  final String timeee;
  const Product({super.key, required this.immmg, required this.Tittle, required this.pp, required this.timeee});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 86,
      child: Row(children: [
        Container(
            height: 86,
            width: 86,
            decoration: BoxDecoration(
              border: Border.all(color: kE0E0E0),borderRadius: BorderRadius.circular(8),
            ),
            child: Image.asset(immmg)),
        SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Expanded(child: Text(Tittle,style: robo_400_12_29)),
        Text(pp,style: robo_500_14_29),
          Text(timeee,style: robo_400_12_70),
        ])])
    );
  }
}
