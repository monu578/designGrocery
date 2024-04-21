import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:unimart/helper/customAppBar.dart';
import 'package:unimart/utilis/customStyle.dart';

import '../../../customwidget/projecrColor.dart';
import 'addNewAddress.dart';


class YourSaveAddress extends StatefulWidget {
  const YourSaveAddress({super.key});

  @override
  State<YourSaveAddress> createState() => _YourSaveAddressState();
}

class _YourSaveAddressState extends State<YourSaveAddress> {
  @override
  Widget build(BuildContext context) {
    final notifires=Provider.of<ColorNotifires>(context);
  return SafeArea(
      child: Scaffold(
        backgroundColor: notifires.boxBackgroundcolor,
        appBar: CustomAppBars(

          title: "My Addresses".tr,
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Card(
                color: notifires.getbgcolor.withOpacity(.7),
                elevation: 2,
                child: Container(
                  decoration: BoxDecoration(
                    //
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>AddLocation()));
                    },
                    child: ListTile(
                      title: Text("Add new address".tr,style: CustomTheme.mostviewtitle.copyWith(color: notifires.primeryColor,fontSize: 16)),
                      leading: Icon(Icons.add,color: notifires.primeryColor,),
                      trailing: Icon(Icons.arrow_forward_ios,size: 16,color: notifires.primeryColor,),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15,bottom: 5),
              child: Text("Your save addersses",style: CustomTheme.smallCrousalTextStyle.copyWith(color:notifires.getgreycolor,fontWeight: FontWeight.w700,fontSize: 14),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15,top: 5),
              child: Card(
                color: notifires.getbgcolor.withOpacity(.7),

                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12)

                  ),
                  child: Column(
                    children: [
                      ListTile(
                        titleAlignment: ListTileTitleAlignment.top,
                        leading: Container(
                          child: Container(
                            alignment: Alignment.center,
                            height: 50,width: 50,
                            decoration: BoxDecoration(
                                color: notifires.mostviewcolor.withOpacity(.2),
                                borderRadius: BorderRadius.circular(8)
                            ),
                            child: Image.asset("assets/icons/home_icon.png",width: 24,height: 24,)
                          ),
                        ),
                        title: RichText(text: TextSpan(
                          children: [
                            TextSpan(text: "Home".tr,style: CustomTheme.mostviewtitle.copyWith(color: notifires.getwhiteblackcolor)),
                            TextSpan(text: " 22215.16km "+"away".tr,style: CustomTheme.smallCrousalTextStyle.copyWith(color: notifires.getblueyellow,fontWeight: FontWeight.w600)),
                          ]
                        )),
                        subtitle: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("2nd flor,540 isla appartment gali no 6 a Zakhir Nagar,imaran walding wale,jogabai Extension,Okhla,zakhir nagar,Delhi Division,New Delhi ",maxLines: 3,overflow:TextOverflow.ellipsis,style: CustomTheme.smallCrousalTextStyle.copyWith(color: notifires.getgreycolor,fontWeight: FontWeight.w600),textAlign: TextAlign.start,),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                SizedBox(
                                  width: 26,height: 26,
                                  child: CircleAvatar(
                                    backgroundColor: notifires.mostviewcolor.withOpacity(.1),
                                    child: Image.asset("assets/icons/menuIcons.png",width: 15,height: 15,color: notifires.getgreycolor,),
                                  ),
                                ),
                                SizedBox(width: 20,),
                                SizedBox(
                                  width: 26,height: 26,
                                  child: CircleAvatar(
                                    backgroundColor:notifires.mostviewcolor.withOpacity(.1),
                                    child: Image.asset("assets/icons/shareIcons.png",width: 15,height: 15,color: notifires.getgreycolor,),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 30,)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
