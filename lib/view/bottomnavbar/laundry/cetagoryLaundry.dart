import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../customwidget/projecrColor.dart';
import '../../../utilis/customStyle.dart';

class CategoryLaundry extends StatefulWidget {
  const CategoryLaundry({super.key});

  @override
  State<CategoryLaundry> createState() => _CategoryLaundryState();
}

class _CategoryLaundryState extends State<CategoryLaundry> {
  @override
  Widget build(BuildContext context) {
    final notifires=Provider.of<ColorNotifires>(context);
    return Scaffold(
      backgroundColor: notifires.boxBackgroundcolor,
      body: Container(
        child: Text("Category",style: CustomTheme.mostviewtitle.copyWith(color: notifires.getwhiteblackcolor),),
      ),
    );
  }
}
