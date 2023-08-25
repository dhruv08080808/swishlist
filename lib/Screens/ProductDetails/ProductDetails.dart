import 'package:flutter/material.dart';
import 'package:swishlist_ui/Constants/textstyle.dart';

import '../../Constants/colors.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product details',style: robo_500_16_39),
        actions: [
          Image.asset('assets/Icons/Messenger Icon.png'),
          Image.asset('assets/Icons/Add Icon.png'),
          Image.asset('assets/Icons/3 dot in a line.png')
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
        child: Column(children: [
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
          Image.asset('assets/images/Chair big.png')
        ],),
      ),
    );
  }
}
