import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unimart/utilis/customStyle.dart';

class MostUsesAppBar extends StatelessWidget {
  String title;
  MostUsesAppBar(@required this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      scrolledUnderElevation: 0,
      elevation: 0,
      title:Text(title)
    );
  }
}
