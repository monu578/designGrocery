import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:unimart/customwidget/projecrColor.dart';
import 'package:unimart/helper/customAppBar.dart';
import 'package:unimart/utilis/customStyle.dart';

import '../payments/paymentManage.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({super.key});

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  @override
  Widget build(BuildContext context) {
    final notifires=Provider.of<ColorNotifires>(context);

    return Scaffold(
      backgroundColor: notifires.boxBackgroundcolor,
      appBar: CustomAppBars(
        title: "Wallet".tr+" Details".tr
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(30),
              child: Image.asset("assets/images/wallet.png",),
            ),
            Text("No Balance !".tr,style: CustomTheme.homepageRecommended.copyWith(fontSize: 34,color: notifires.getwhiteblackcolor),),
            OutlinedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentPage()));
            }, child: Text("ADD".tr+" +" ,style: CustomTheme.mostviewnight.copyWith(color:notifires.primeryColor,fontWeight: FontWeight.bold),),
              style: OutlinedButton.styleFrom(backgroundColor: notifires.primeryColor.withOpacity(.1),side: BorderSide(width: 1.5,color:notifires.primeryColor.withOpacity(.1)),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(height: 140,),
            Align(child: Text("UniMart".tr,style: CustomTheme.homepageRecommended.copyWith(color:notifires.getgreycolor),),),

          ],
        ),
      ),
    );
  }
}
