import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class getapi extends StatefulWidget {
  const getapi({super.key});

  @override

  State<getapi> createState() => _getapiState();
}

class _getapiState extends State<getapi> {
  @override
  final dio=Dio();

  void initState() {
    getapi();
    super.initState();
  }
var dataa;
  getapi()async{
    var response = await dio.get(
      'https://dummyjson.com/products',
    );

    if (response.statusCode == 200) {
      setState(() {
        dataa=response.data["products"]as List;
      });
      print((response.data));
    }
    else {
      print(response.statusMessage);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (BuildContext Context ,int index )
      {
        return Card(
          child: ListTile(
            title: Text(dataa[index]['title']),
            subtitle: Text(dataa[index]['description']),
            
          ),
        );
      }
      ),

    );
  }
}
