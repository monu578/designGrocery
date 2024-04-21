import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:unimart/customwidget/projecrColor.dart';
import 'package:unimart/helper/customAppBar.dart';

import '../../../customWidget/shopByCategoryContainer.dart';
import '../../../utilis/customStyle.dart';

class ShopByCategoryScreen extends StatefulWidget {
  const ShopByCategoryScreen({super.key});

  @override
  State<ShopByCategoryScreen> createState() => _ShopByCategoryScreenState();
}

class _ShopByCategoryScreenState extends State<ShopByCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    final notifires=Provider.of<ColorNotifires>(context);

    return Scaffold(
      backgroundColor: notifires.boxBackgroundcolor,
      appBar: CustomAppBars(
        leadding: IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart_outlined,color: notifires.primeryColor)),
        title:"Shop By Category".tr,
      ),
    body: Padding(
      padding: const EdgeInsets.all(15),
           child: ShopByCategory(ScrollPhysics()),
),
    );
  }
}
