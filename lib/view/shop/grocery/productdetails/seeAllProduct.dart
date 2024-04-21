import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unimart/customwidget/projecrColor.dart';
import 'package:unimart/helper/customAppBar.dart';
import 'package:unimart/utilis/customStyle.dart';

import '../../../../customWidget/customSeeAllContainer.dart';

class SeeAllProduct extends StatefulWidget {
 SeeAllProduct(this.productList,this.title);
 List productList=[];
 String title;

  @override
  State<SeeAllProduct> createState() => _SeeAllProductState();
}

class _SeeAllProductState extends State<SeeAllProduct> {
  @override
  Widget build(BuildContext context) {
    final notifire=Provider.of<ColorNotifires>(context);

    return Scaffold(
      backgroundColor: notifire.boxBackgroundcolor,
      appBar: CustomAppBars(
        title: widget.title.toString(),
      ),
      body: CustomSeeAllContainer(widget.productList),
    );
  }
}
