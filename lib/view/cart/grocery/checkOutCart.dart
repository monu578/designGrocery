import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:unimart/customwidget/projecrColor.dart';
import 'package:unimart/helper/customAppBar.dart';
import 'package:unimart/utilis/customStyle.dart';
import 'package:unimart/view/auth/otpVerification.dart';
import 'package:unimart/view/home/grocery/home.dart';
import 'package:unimart/view/payments/afterPlaceOrder.dart';

import '../../../customWidget/commonWidgets.dart';

class CheckOutPage extends StatefulWidget {
  const CheckOutPage({super.key});

  @override
  State<CheckOutPage> createState() => _CheckOutPageState();
}

class _CheckOutPageState extends State<CheckOutPage> {
  BoxDecoration decoration=BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: white,
      boxShadow: [
        BoxShadow(
            blurRadius: 6,color: greyShade300
        )
      ]
  );
  @override
  Widget build(BuildContext context) {
    final notifires=Provider.of<ColorNotifires>(context);

    return Scaffold(
      backgroundColor: notifires.boxBackgroundcolor,
      appBar: CustomAppBars(
        leadding: IconButton(onPressed: (){
          Navigator.pushReplacement((context), MaterialPageRoute(builder: (context)=>HomePage()));
        },icon: Icon(Icons.home,color: notifires.primeryColor,size: 30,),),
        title: "Checkout".tr,
        actions: [
          Icon(Icons.shopping_cart_outlined,color: notifires.primeryColor,),
          Padding(padding: EdgeInsets.only(right: 15),
          child: Text("Share".tr,style: CustomTheme.mostviewhome.copyWith(color: notifires.primeryColor),))
        ],
      ),
      body:Stack(
        children: [
          ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: notifires.getblueyellow.withOpacity(.1),
                  ),
                  child: ListTile(
                    title: Text("Your total savings".tr,style: CustomTheme.mostviewnight.copyWith(color: notifires.getblueyellow),),
                    subtitle: Text("Include ₹15 savings through free delivery".tr,style: CustomTheme.mostviewhome.copyWith(color: notifires.getblueyellow),),
                    trailing: Text("₹51".tr,style: CustomTheme.mostviewtitle.copyWith(color: notifires.getblueyellow),),
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5,right: 5,top: 5,),
                child: Card(
                  color: notifires.getbgcolor.withOpacity(.8),
                  child: Container(
                    // decoration: decoration.copyWith(color: notifires.boxBackgroundcolor,boxShadow: [BoxShadow(color: notifires.getgreycolor,blurRadius: 4)]),
                    child: ListTile(
                      title: Text("Ordering for someone else?".tr,style: CustomTheme.mostviewnight.copyWith(color: notifires.getwhiteblackcolor),),
                      trailing: Text("Add details".tr,style: CustomTheme.mostviewnight.copyWith(color: notifires.primeryColor),),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  decoration: decoration.copyWith(color: notifires.boxBackgroundcolor,boxShadow: [BoxShadow(color: notifires.getgreycolor,blurRadius: 4)]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        leading: Container(
                          alignment: Alignment.center,
                          height: 40,width: 40,
                          decoration: BoxDecoration(
                              color: mostviewcolor.withOpacity(.2),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: ImageIcon(AssetImage("assets/icons/time1.webp"),size: 40,color: redShade900,),
                        ),
                        title: Text("Delivery in 12 minutes".tr,style: CustomTheme.mostviewtitle.copyWith(fontSize: 18,color: notifires.getwhiteblackcolor),),
                        subtitle: Text("Shipment of 1 item".tr,style: CustomTheme.mostviewhome.copyWith(color: notifires.getgreycolor),),
                      ),
                      VerticalProductCard("assets/images/munchies.png","Aashirvaad M.P Chakki Atta","5 kg","₹244","₹349"),
                      SizedBox(height: 10,)


                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,),
                child: Container(
                  decoration: decoration.copyWith(color: notifires.getbgcolor,boxShadow: [BoxShadow(color: notifires.getgreycolor)]),
                  child: ListTile(
                    // onTap: (){
                    //   Get.updateLocale(Locale("ur","PK"));
                    // },
                    leading: Image.asset("assets/icons/offer.png",width: 30,height: 30,),
                    title: Text("Use Coupons".tr,style: CustomTheme.mostviewtitle.copyWith(fontSize: 18)),
                    trailing: Icon(Icons.arrow_forward_ios,size: 20,),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                    decoration: decoration.copyWith(color: notifires.boxBackgroundcolor,boxShadow: [BoxShadow(color: notifires.getgreycolor,blurRadius: 4)]),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Bill Details".tr,style: CustomTheme.mostviewhome.copyWith(fontSize: 16,color: notifires.getwhiteblackcolor),),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Icon(Icons.library_books_rounded,size: 17,color: notifires.getwhiteblackcolor),
                                SizedBox(width: 5,),
                                Text("Sub total".tr,style: CustomTheme.mostviewhome.copyWith(color: notifires.getgreycolor),),
                                SizedBox(width: 5,),
                                SizedBox(
                                  width: 20,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.grey.shade300,
                                    child: Icon(Icons.keyboard_arrow_down_outlined,size: 16,),
                                  ),
                                ),
                                SizedBox(width: 8,),
                                Container(
                                  decoration: BoxDecoration(
                                    color: notifires.getblueyellow.withOpacity(.1),
                                    borderRadius: BorderRadius.circular(2),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8,right: 8,top: 2,bottom: 3),
                                    child: Text("Saved ₹36".tr,style: CustomTheme.mostviewhome.copyWith(color: notifires.getblueyellow,fontSize: 12),),
                                  ),
                                ),
                                Spacer(),
                                Text("₹349".tr,style: CustomTheme.mostviewhome.copyWith(decoration: TextDecoration.lineThrough,color: notifires.getgreycolor),),
                                SizedBox(width: 5,),
                                Text("₹244".tr,style: CustomTheme.mostviewhome.copyWith(color: notifires.getgreycolor,fontWeight: FontWeight.bold,fontSize: 14),),
                                SizedBox(width: 5,),
                              ],
                            ),

                            Row(
                              children: [
                                Icon(Icons.delivery_dining_outlined,size: 18,color: notifires.getwhiteblackcolor),
                                SizedBox(width: 5,),
                                Text("Delivery charge".tr,style: CustomTheme.mostviewhome.copyWith(color: notifires.getgreycolor),),
                                SizedBox(width: 5,),
                                Icon(Icons.info_outline,size: 18,color: notifires.getgreycolor,),
                                Spacer(),
                                Text("₹15".tr,style: CustomTheme.mostviewhome.copyWith(decoration: TextDecoration.lineThrough,color: notifires.getgreycolor),),
                                SizedBox(width: 5,),
                                Text("FREE".tr,style: CustomTheme.mostviewhome.copyWith(color: notifires.getblueyellow),),
                                SizedBox(width: 5,),

                              ],
                            ),
                            SizedBox(height: 8,),
                            Row(
                              children: [
                                Icon(Icons.person,size: 18,color: notifires.getwhiteblackcolor),
                                SizedBox(width: 5,),
                                Text("Tip for your delivery partner".tr,style: CustomTheme.mostviewhome.copyWith(color: notifires.getgreycolor),),
                                Spacer(),
                                Text("₹50".tr,style: CustomTheme.mostviewhome.copyWith(color: notifires.getgreycolor,fontWeight: FontWeight.bold),),
                                SizedBox(width: 5,),

                              ],
                            ),
                            SizedBox(height: 8,),
                            Row(
                              children: [
                                Text("Grand total".tr,style: CustomTheme.mostviewhome.copyWith(fontSize: 15,color: notifires.getwhiteblackcolor),),
                                Spacer(),
                                Text("₹295".tr,style: CustomTheme.mostviewhome.copyWith(fontSize: 16,color: notifires.getwhiteblackcolor),),
                                SizedBox(width: 5,),
                              ],
                            ),

                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: notifires.getblueyellow.withOpacity(.1),
                        ),
                        child: ListTile(
                          title: Text("Your total savings".tr,style: CustomTheme.mostviewnight.copyWith(color: notifires.getblueyellow),),
                          subtitle: Text("Include ₹15 savings through free delivery".tr,style: CustomTheme.mostviewhome.copyWith(color:notifires.getblueyellow),),
                          trailing: Text("₹51".tr,style: CustomTheme.mostviewtitle.copyWith(color: notifires.getblueyellow),)
                        ),

                      ),
                    ],
                  )),
              ),
              SizedBox(height: 170,),


            ],
          ),
          Positioned(
            left: 0,right: 0,
            bottom: 0,
            child: Container(
              decoration: decoration.copyWith(color: notifires.boxBackgroundcolor,boxShadow: [BoxShadow(color: notifires.getgreycolor,blurRadius: 4)]),
              child: Column(
                children: [
                  ListTile(
                    titleAlignment: ListTileTitleAlignment.top,
                    leading: Icon(Icons.location_city_sharp,color: Colors.yellow.shade700,size: 35,),
                    title: RichText(text: TextSpan(
                      children: [
                        TextSpan(text: "Delivering to  ".tr,style: CustomTheme.mostviewnight.copyWith(fontSize: 15,color: notifires.getgreycolor)),
                        TextSpan(text: "Office".tr,style: CustomTheme.mostviewnight.copyWith(fontSize: 15,fontWeight: FontWeight.bold,color: notifires.getwhiteblackcolor))

                      ]
                    ),),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("d-52 noida sector-2".tr,style: CustomTheme.mostviewhome.copyWith(color: notifires.getgreycolor),),
                        Text("selected address is 22207.64 km awey from you".tr,style: CustomTheme.mostviewhome.copyWith(color: notifires.getblueyellow,fontSize: 12,),maxLines: 1,),

                      ],
                    ),
                    trailing: Text("change".tr,style: CustomTheme.mostviewnight.copyWith(color: notifires.primeryColor,fontWeight: FontWeight.bold),),


                  ),
                  Divider(thickness: 1.5,color: greyShade300,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image.asset("assets/icons/bankOf.png",width: 30,height: 20,),
                                  SizedBox(width: 5,),
                                  Text("PAY USING".tr,style: CustomTheme.mostviewhome.copyWith(color: notifires.getgreycolor),),
                                  SizedBox(width: 10,),
                                  Icon(Icons.keyboard_arrow_up_outlined,size: 17,),
                                ],
                              ),
                              Text("  Bank Of Baroda".tr,style: CustomTheme.mostviewhome.copyWith(color: notifires.getgreycolor))
                            ],
                          ),

                        ),
                        Spacer(),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>AfterPlaceOrder("₹295",(){})));
                          },
                          child: Container(
                            // width: 240,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: notifires.primeryColor
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 12,right: 12,top: 5,bottom: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text("₹295".tr,style: CustomTheme.mostviewnight.copyWith(color:Colors.white),),
                                      Text("Total".tr,style: CustomTheme.mostviewhome.copyWith(color: white),)
                                    ],
                                  ),
                                  SizedBox(width: 40,),
                                  Text("Place Order".tr,style: CustomTheme.mostviewnight.copyWith(color: white),),
                                  Icon(Icons.arrow_right,color: white,size: 24,)
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )

                ],
              ),
            ),
          )
        ],
      ) ,

    );
  }
}
