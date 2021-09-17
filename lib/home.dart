import 'package:demo_epcountryflag/data/countries.dart';
import 'package:demo_epcountryflag/widget/test_card.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ePatriote Country Flag",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15),
        ),
      ) ,
      body: Column(
        children: [
          const Expanded(child: Center(child: Text("Demo App")),flex: 1,),
          Expanded(flex: 15,child: ListView.builder(
            itemCount: codes.length,
            itemBuilder: (BuildContext context, int index) {
              return TestCard(code: codes[index]);
            },
          ),),
        ],
      ) ,
    );
  }
}
