import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:provider/provider.dart';
import 'package:unimart/customwidget/projecrColor.dart';
import 'package:unimart/utilis/customStyle.dart';

import '../../../helper/customAppBar.dart';
import '../../myprofile/walletScreen.dart';
import '../../payments/paymentManage.dart';
import '../../shop/laundry/chat.dart';
import '../grocery/myProfileDetails.dart';

class MyProfileLaundry extends StatefulWidget {
  const MyProfileLaundry({super.key});

  @override
  State<MyProfileLaundry> createState() => _MyProfileLaundryState();
}

class _MyProfileLaundryState extends State<MyProfileLaundry> {
  @override
  Widget build(BuildContext context) {
    final notifires=Provider.of<ColorNotifires>(context);
    return Scaffold(
      backgroundColor: notifires.boxBackgroundcolor,
      appBar: CustomAppBars(
        leadding: IconButton(onPressed: (){},icon: Icon(CupertinoIcons.person_alt,color: notifires.primeryColor,size: 30,),),
        title: "Profile".tr,
        // actions: [
        //   TextButton(onPressed: (){
        //     Get.updateLocale(Locale("hi","IND"));
        //     Get.snackbar("Select language", "Convert to hindi");
        //   }, child: Text("Hindi")),
        //   TextButton(onPressed: (){
        //     Get.updateLocale(Locale("en","US"));
        //     Get.snackbar("Select language", "Convert to english",backgroundColor: CustomTheme.mostviewcolor.withOpacity(0.2));
        //   }, child: Text("Eng")),
        //
        //
        // ],
      ),
      body: Stack(
        children: [
          Container(
            height: 80,
            child: Padding(
              padding: const EdgeInsets.only(left: 15,right: 15,top: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text("My account".tr,style: CustomTheme.homepageMostView.copyWith(color: notifires.getwhiteblackcolor,),),
                  Text("8878536303".tr,style: CustomTheme.smallSecondaryTextStyle.copyWith(color: notifires.getwhiteblackcolor,),)
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 90),
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15,top: 10,bottom: 10),
                  child: Container(
                    height: 80,
                    decoration: BoxDecoration(
                        color: notifires.primeryColor,
                        borderRadius: BorderRadius.circular(14)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>WalletPage()));
                            },
                                child: FaIcon(FontAwesomeIcons.wallet,color: notifires.getblack)),
                            Text("Wallet".tr,style: CustomTheme.mostviewhome.copyWith(color: notifires.getblack),)
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatScreen()));
                                },
                                child: FaIcon(FontAwesomeIcons.message,color: notifires.getblack)),
                            Text("Support".tr,style: CustomTheme.mostviewhome.copyWith(color: notifires.getblack),)
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentPage()));
                                },
                                child: FaIcon(FontAwesomeIcons.creditCard,color: notifires.getblack,)),
                            Text("Payments".tr,style: CustomTheme.mostviewhome.copyWith(color: notifires.getblack),)
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text("YOUR INFORMATION".tr,style: CustomTheme.smallSecondaryTextStyle.copyWith(color: notifires.getwhiteblackcolor,),),
                ),
                customlisttile(Icons.bookmark_border_sharp, "Your orders", () { }),
                customlisttile(Icons.location_history_outlined, "Address Book", () { }),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 10,top: 30,bottom: 10),
                  child: Text("OTHER INFORMATION".tr,style: CustomTheme.smallSecondaryTextStyle.copyWith(color: notifires.getwhiteblackcolor,),),
                ),
                customlisttile(Icons.share, "Share the app", () { }),
                customlisttile(Icons.info_outline, "About us", () { }),
                customlisttile(Icons.receipt_long, "Get Feeding India receipt", () { }),
                customlisttile(Icons.star_border, "Rate us on the Play Store", () { }),
                customlisttile(Icons.lock_outline_sharp, "Account privacy", () { }),
                customlisttile(Icons.notifications_active_outlined, "Notification prefrences", () { }),
                customlisttile(Icons.power_settings_new_rounded, "Log out", () { }),
                SizedBox(height: 30,),
                Align(child: Text("UniMart".tr,style: CustomTheme.homepageRecommended.copyWith(color: notifires.getgreycolor),),),
                SizedBox(height: 40,),

              ],
            ),
          )

        ],
      )
    );
  }
  Widget customlisttile(IconData iconData,String title,Callback onClick){
    return ListTile(
      onTap: onClick,
      leading: IconContainer(Icon(iconData,size: 20,color: notifires.getgreycolor)),
      title: Text(title.toString().tr,style: CustomTheme.mostviewtitle.copyWith(fontWeight: FontWeight.w500,fontSize: 17,color: notifires.getwhiteblackcolor),),
      trailing: Icon(Icons.arrow_forward_ios,size: 17,color: notifires.getgreycolor),
    );
  }
}
