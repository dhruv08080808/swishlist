import 'package:flutter/material.dart';
import 'package:swishlist_ui/Constants/textstyle.dart';

class mess extends StatefulWidget {
  const mess({super.key});

  @override
  State<mess> createState() => _messState();
}

class _messState extends State<mess> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Messages',style: robo_500_16_29,)),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
         mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Icon(Icons.message,size: 100),
            Text('No Recent Messages',style: robo_500_14_29),
        ],),
      ),
    );
  }
}
