import 'package:demo_epcountryflag/widget/core.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TestCard extends StatelessWidget {
   TestCard({ Key? key,required this.code }) : super(key: key);
  String code;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Country : $code'),
          const SizedBox(width: 10),
          const Text('png  '),
          EpatrioteCountryFlag(country: code, height: 50, width: 50, svg: false),
          const SizedBox(width: 10),
          const Text('svg  '),
          EpatrioteCountryFlag(country: code, height: 50, width: 50, svg: true),
        ],
      ),
    );
  }
}