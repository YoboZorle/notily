import 'package:flutter/material.dart';
import 'package:notily/src/helpers/constants.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.appBg,
      appBar: AppBar(
        elevation: 0,
        title: Text('Home'),
      ),
      body: Center(child: Text('Home here')),
    );
  }
}
