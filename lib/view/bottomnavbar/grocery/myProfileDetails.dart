import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:unimart/controller/homeController.dart';
import 'package:unimart/customwidget/projecrColor.dart';
import 'package:unimart/helper/customAppBar.dart';
import 'package:unimart/utilis/customStyle.dart';
import 'package:unimart/view/myprofile/aboutUs.dart';

import '../../myprofile/addressbooks/myAddress.dart';
import '../../myprofile/customerSupport.dart';
import '../../myprofile/walletScreen.dart';
import '../../order/grocery/myProfile/allOrders.dart';
import '../../payments/paymentManage.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  HomeController controller=Get.put(HomeController());


  @override
  Widget build(BuildContext context) {
    final notifires=Provider.of<ColorNotifires>(context);
    var modeClick=controller.modeClick.value;
    return Scaffold(
      backgroundColor:notifires.boxBackgroundcolor,
      appBar: CustomAppBars(
        leadding: IconButton(onPressed: (){},icon: Icon(CupertinoIcons.person_alt,color: notifires.primeryColor,size: 30,),),
        title: "Profile".tr,
        actions: [
          Text(modeClick?"Light Mode":"Dark Mode",style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),),
          SizedBox(width: 10,),
          Obx(() => IconButton(onPressed: (){
            final colorNotifires=Provider.of<ColorNotifires>(context,listen: false);
            controller.changeBoolValue();
            notifires.switchs(controller.modeClick.value);

          }, icon: Icon(controller.modeClick.value?Icons.light_mode_rounded:Icons.dark_mode,color: notifires.getgreycolor,)),)
        ],
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
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>CustomerSupportChatScreen()));
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
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>YourOuderPage()));
                  },
                  child: ListTile(
                    leading: IconContainer(Icon(Icons.bookmark_border_sharp,size: 20,color: notifires.getgreycolor)),
                    title: Text("Your orders".tr,style: CustomTheme.mostviewtitle.copyWith(fontWeight: FontWeight.w500,fontSize: 17,color: notifires.getwhiteblackcolor),),
                    trailing: Icon(Icons.arrow_forward_ios,size: 17,color: notifires.getgreycolor,),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>YourSaveAddress()));

                  },
                  child: ListTile(
                    leading: IconContainer(Icon(Icons.location_history_outlined,size: 20,color: notifires.getgreycolor)),
                    title: Text("Address Book".tr,style: CustomTheme.mostviewtitle.copyWith(fontWeight: FontWeight.w500,fontSize: 17,color: notifires.getwhiteblackcolor),),
                    trailing: Icon(Icons.arrow_forward_ios,size: 17,color: notifires.getgreycolor,),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 10,top: 30,bottom: 10),
                  child: Text("OTHER INFORMATION".tr,style: CustomTheme.smallSecondaryTextStyle.copyWith(color: notifires.getwhiteblackcolor,),),
                ),
                ListTile(
                  leading: IconContainer(Icon(Icons.share,size: 20,color: notifires.getgreycolor)),
                  title: Text("Share the app".tr,style: CustomTheme.mostviewtitle.copyWith(fontWeight: FontWeight.w500,fontSize: 17,color: notifires.getwhiteblackcolor),),
                  trailing: Icon(Icons.arrow_forward_ios,size: 17,color: notifires.getgreycolor),
                ),
                ListTile(
                  onTap: (){
                    Get.to(AboutPage());
                  },
                  leading: IconContainer(Icon(Icons.info_outline,size: 20,color: notifires.getgreycolor)),
                  title: Text("About us".tr,style: CustomTheme.mostviewtitle.copyWith(fontWeight: FontWeight.w500,fontSize: 17,color: notifires.getwhiteblackcolor),),
                  trailing: Icon(Icons.arrow_forward_ios,size: 17,color: notifires.getgreycolor),
                ),
                ListTile(
                  leading: IconContainer(Icon(Icons.receipt_long,size: 20,color: notifires.getgreycolor)),
                  title: Text("Get Feeding India receipt".tr,style: CustomTheme.mostviewtitle.copyWith(fontWeight: FontWeight.w500,fontSize: 17,color: notifires.getwhiteblackcolor),),
                  trailing: Icon(Icons.arrow_forward_ios,size: 17,color: notifires.getgreycolor),
                ),
                ListTile(
                  leading: IconContainer(Icon(Icons.star_border,size: 20,color: notifires.getgreycolor)),
                  title: Text("Rate us on the Play Store".tr,style: CustomTheme.mostviewtitle.copyWith(fontWeight: FontWeight.w500,fontSize: 17,color: notifires.getwhiteblackcolor),),
                  trailing: Icon(Icons.arrow_forward_ios,size: 17,color: notifires.getgreycolor),
                ),
                ListTile(
                  leading: IconContainer(Icon(Icons.lock_outline_sharp,size: 20,color: notifires.getgreycolor)),
                  title: Text("Account privacy".tr,style: CustomTheme.mostviewtitle.copyWith(fontWeight: FontWeight.w500,fontSize: 17,color: notifires.getwhiteblackcolor),),
                  trailing: Icon(Icons.arrow_forward_ios,size: 17,color: notifires.getgreycolor),
                ),
                ListTile(
                  leading: IconContainer(Icon(Icons.notifications_active_outlined,size: 20,color: notifires.getgreycolor)),
                  title: Text("Notification prefrences".tr,style: CustomTheme.mostviewtitle.copyWith(fontWeight: FontWeight.w500,fontSize: 17,color: notifires.getwhiteblackcolor),),
                  trailing: Icon(Icons.arrow_forward_ios,size: 17,color: notifires.getgreycolor),
                ),
                ListTile(
                  leading: IconContainer(Icon(Icons.power_settings_new_rounded,size: 20,color: notifires.getgreycolor)),
                  title: Text("Log out".tr,style: CustomTheme.mostviewtitle.copyWith(fontWeight: FontWeight.w500,fontSize: 17,color: notifires.getwhiteblackcolor),),
                  trailing: Icon(Icons.arrow_forward_ios,size: 17,color: notifires.getgreycolor),
                ),
                SizedBox(height: 30,),
                Align(child: Text("UniMart".tr,style: CustomTheme.homepageRecommended.copyWith(color: notifires.getgreycolor),),),
                SizedBox(height: 40,),

              ],
            ),
          )
        ],
      ),
    );
  }
}
class IconContainer extends StatelessWidget {
  IconContainer(this.icon);
  Icon icon;

  @override
  Widget build(BuildContext context) {
    final notifires=Provider.of<ColorNotifires>(context);
    return Container(
      height: 40,width: 40,
      decoration: BoxDecoration(
        color: notifires.mostviewcolor.withOpacity(.2),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Center(
        child: icon,
      ),
    );
  }
}



