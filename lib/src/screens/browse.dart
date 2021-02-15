import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notily/src/helpers/constants.dart';

class Browse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.appBg,
      appBar: AppBar(
          elevation: 0,
          title: Text('Browse')),
      body: Center(child: Text('Browse Page')),
    );
  }
}
