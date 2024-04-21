import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:unimart/controller/homeController.dart';
import 'package:unimart/customwidget/commonWidgets.dart';
import 'package:unimart/customwidget/projecrColor.dart';
import 'package:unimart/helper/customAppBar.dart';
import 'package:unimart/view/home/laundry/homeLaundry.dart';
import 'package:unimart/view/myprofile/addressbooks/goToConfirmLocation.dart';
import 'package:unimart/view/shop/laundry/pickUpSlot.dart';

import '../../../utilis/customStyle.dart';
import '../../payments/afterPlaceOrder.dart';

class CheckOutLaundry extends StatefulWidget {
  CheckOutLaundry(this.iconButton);
  IconButton iconButton;

  @override
  State<CheckOutLaundry> createState() => _CheckOutLaundryState();
}

class _CheckOutLaundryState extends State<CheckOutLaundry> {
  bool isChecked=false;
  int selectedValue=0;
  @override
  Widget build(BuildContext context) {
    final notifires=Provider.of<ColorNotifires>(context);
   HomeController controller=Get.put(HomeController());
   int count=controller.conunt.value;
    int count2=controller.conunt2.value;
    return Scaffold(
      backgroundColor: notifires.boxBackgroundcolor,
      appBar: CustomAppBars(
        title: "CheckOut",
        leadding: widget.iconButton,
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 15,top: 5,bottom: 80),
            child: ListView(
              children: [
                Container(
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
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text("Total Cloths",style: CustomTheme.mostviewnight.copyWith(color: notifires.getwhiteblackcolor),),
                  Spacer(),
                  Text("8",style: CustomTheme.mostviewnight.copyWith(color: notifires.getredYellow),),
                  SizedBox(width: 10,),
                  Text("Selected",style: CustomTheme.mostviewhome.copyWith(color: notifires.getredYellow),)
                ],),
                SizedBox(height: 10,),
                Card(
                  color: notifires.getbgcolor.withOpacity(.8),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Try Clean",style: CustomTheme.mostviewnight.copyWith(color: notifires.getwhiteblackcolor),),
                          SizedBox(height: 10,),
                          CardOfCheckOutLaundry("T Shirt", "\$ 5", "http://pluspng.com/img-png/blue-tshirt-png-t-shirt-png-image-2000.png", "3"),
                          SizedBox(height: 5,),
                          Divider(color: notifires.getgreycolor,height: 2,thickness: 1,),
                          SizedBox(height: 10,),
                          CardOfCheckOutLaundry("Trousers", "\$ 8", "https://www.pngmart.com/files/6/Trousers-PNG-Free-Download.png", "5"),
                          SizedBox(height: 5,),
                          Divider(color: notifires.getgreycolor,height: 2,thickness: 1,),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Text("Sub Total",style: CustomTheme.mostviewtitle.copyWith(color: notifires.getwhiteblackcolor),),
                              Spacer(),
                              Text("\$ 13.00",style: CustomTheme.mostviewtitle.copyWith(color: notifires.getredYellow),)
                            ],
                          )

                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Card(
                  color: notifires.getbgcolor.withOpacity(.8),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Laundry",style: CustomTheme.mostviewnight.copyWith(color: notifires.getwhiteblackcolor),),
                          SizedBox(height: 10,),
                          CardOfCheckOutLaundry("UniForm", "\$ 4", "https://i.pinimg.com/originals/c8/dc/40/c8dc40c0a7c1b6fcb0860cb4da4c92e0.png", "2"),
                          SizedBox(height: 5,),
                          Divider(color: notifires.getgreycolor,height: 2,thickness: 1,),
                          SizedBox(height: 10,),
                          CardOfCheckOutLaundry("Kurta", "\$ 6", "https://editzstock.com/wp-content/uploads/2022/05/Headcut-groom-pmg-3.png", "1"),
                          SizedBox(height: 5,),
                          Divider(color: notifires.getgreycolor,height: 2,thickness: 1,),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Text("Sub Total",style: CustomTheme.mostviewtitle.copyWith(color: notifires.getwhiteblackcolor),),
                              Spacer(),
                              Text("\$ 13.00",style: CustomTheme.mostviewtitle.copyWith(color: notifires.getredYellow),)
                            ],
                          ),


                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Card(
                  color: notifires.getbgcolor.withOpacity(.8),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text("Service fee :",style: CustomTheme.mostviewnight.copyWith(color: notifires.getwhiteblackcolor,fontWeight: FontWeight.bold),),
                            Spacer(),
                            Text("\$ 1.00",style: CustomTheme.mostviewtitle.copyWith(color: notifires.getredYellow),),

                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Text("Total Price :",style: CustomTheme.mostviewtitle.copyWith(color: notifires.getwhiteblackcolor,fontWeight: FontWeight.bold),),
                            Spacer(),
                            Text("\$ 24.00",style: CustomTheme.mostviewtitle.copyWith(color: notifires.getredYellow),),

                          ],
                        )
                      ],
                    ),
                  ),

                )
              ],
            ),
          ),
          Positioned(
            left: 10,right: 10,
            bottom: 10,
            child: Container(
              // decoration: decoration.copyWith(color: notifires.boxBackgroundcolor,boxShadow: [BoxShadow(color: notifires.getgreycolor,blurRadius: 4)]),
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(10),
              //     color: notifires.boxBackgroundcolor,boxShadow: [BoxShadow(color: notifires.getgreycolor,blurRadius: 4)]
              // ),
              child: Column(
                children: [
                  // ListTile(
                  //   titleAlignment: ListTileTitleAlignment.top,
                  //   leading: Icon(Icons.location_city_sharp,color: Colors.yellow.shade700,size: 35,),
                  //   title: RichText(text: TextSpan(
                  //       children: [
                  //         TextSpan(text: "Delivering to  ".tr,style: CustomTheme.mostviewnight.copyWith(fontSize: 15,color: notifires.getgreycolor)),
                  //         TextSpan(text: "Office".tr,style: CustomTheme.mostviewnight.copyWith(fontSize: 15,fontWeight: FontWeight.bold,color: notifires.getwhiteblackcolor))
                  //
                  //       ]
                  //   ),),
                  //   subtitle: Column(
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     children: [
                  //       Text("d-52 noida sector-2".tr,style: CustomTheme.mostviewhome.copyWith(color: notifires.getgreycolor),),
                  //       Text("selected address is 22207.64 km awey from you".tr,style: CustomTheme.mostviewhome.copyWith(color: notifires.getblueyellow,fontSize: 12,),maxLines: 1,),
                  //
                  //     ],
                  //   ),
                  //   trailing: Text("change".tr,style: CustomTheme.mostviewnight.copyWith(color: notifires.primeryColor,fontWeight: FontWeight.bold),),
                  //
                  //
                  // ),
                  // Divider(thickness: 1.5,color: greyShade300,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: ()async{
                            if(controller.conunt.value>0&&controller.conunt2.value>0){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>AfterPlaceOrder("\$ 23",(){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>PickUpSlot()));

                              })));
                            }else{

                              Get.snackbar(
                                'Please select Delivery and PickUp Address',"",
                                snackPosition: SnackPosition.BOTTOM,
                                backgroundColor: notifires.boxBackgroundcolor,
                                colorText: notifires.getwhiteblackcolor,
                                duration: Duration(seconds: 1),
                              );

                            }
                            // Navigator.push(context, MaterialPageRoute(builder: (context)=>AfterPlaceOrder("₹295")));
                          },
                          child: Obx(() => Container(
                            // width: 240,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: controller.conunt.value>0&&controller.conunt2.value>0?notifires.primeryColor:greyShade500
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 12,right: 12,top: 5,bottom: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text("\$ 24".tr,style: CustomTheme.mostviewnight.copyWith(color:Colors.white),),
                                      Text("Total".tr,style: CustomTheme.mostviewhome.copyWith(color: white),)
                                    ],
                                  ),
                                  SizedBox(width: 40,),
                                  Text("Place Order".tr,style: CustomTheme.mostviewnight.copyWith(color: white),),
                                  Icon(Icons.arrow_right,color: white,size: 24,)
                                ],
                              ),
                            ),
                          )),
                        ),
                        Spacer(),
                        SpeedDial(
                          backgroundColor: notifires.primeryColor,
                          overlayColor: notifires.boxBackgroundcolor,
                          child: Icon(Icons.add_location_alt_sharp,size: 30,color: notifires.getwhiteblackcolor,),
                          children: [
                            SpeedDialChild(

                                backgroundColor: notifires.secondrycolor,
                                labelBackgroundColor: notifires.secondrycolor,
                                labelStyle: CustomTheme.mostviewnight.copyWith(color: notifires.getwhiteblackcolor),
                                child: Icon(Icons.add_location_outlined,color: notifires.getwhiteblackcolor,),
                                label: 'PickUp Address',
                                onTap: ()=>Get.bottomSheet(Container(
                                  padding: EdgeInsets.only(left: 15,right: 15,top: 10,),
                                  decoration: BoxDecoration(
                                      color: notifires.boxBackgroundcolor,
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(15),topLeft: Radius.circular(15))
                                  ),
                                  height: 270,

                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Select Your PickUp Address",style: CustomTheme.mostviewtitle.copyWith(color: notifires.getwhiteblackcolor),),
                                      SizedBox(height: 5,),
                                      Row(
                                        children: [
                                          Obx(() =>  Radio(
                                            activeColor: notifires.primeryColor,
                                            value: 1,
                                            groupValue: controller.conunt.value,
                                            onChanged: (value) {
                                              controller.changeCount(value as int);
                                              Get.back();
                                            },
                                          )),
                                          Expanded(
                                            child: ListTile(
                                              titleAlignment: ListTileTitleAlignment.top,
                                              leading: Icon(Icons.location_city_sharp,color: Colors.yellow.shade700,size: 35,),
                                              title: RichText(text: TextSpan(
                                                  children: [
                                                    TextSpan(text: "PickUp to  ".tr,style: CustomTheme.mostviewnight.copyWith(fontSize: 15,color: notifires.getgreycolor)),
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
                                              trailing: GestureDetector(
                                                  onTap: (){
                                                    Get.to(GoToConfirmLocation());
                                                  },
                                                  child: Text("change".tr,style: CustomTheme.mostviewnight.copyWith(color: notifires.primeryColor,fontWeight: FontWeight.bold),)),


                                            ),
                                          ),
                                        ],
                                      ),
                                      Divider(thickness: 1.5,color: greyShade300,),
                                      Row(
                                        children: [
                                          Obx(() => Radio(
                                            activeColor: notifires.primeryColor,
                                            value: 2,
                                            groupValue: controller.conunt.value,
                                            onChanged: (value) {
                                              controller.changeCount(value as int);
                                              Get.back();
                                            },
                                          ),),
                                          Expanded(
                                            child: ListTile(
                                              titleAlignment: ListTileTitleAlignment.top,
                                              leading: Icon(Icons.location_city_sharp,color: Colors.yellow.shade700,size: 35,),
                                              title: RichText(text: TextSpan(
                                                  children: [
                                                    TextSpan(text: "PickUp to  ".tr,style: CustomTheme.mostviewnight.copyWith(fontSize: 15,color: notifires.getgreycolor)),
                                                    TextSpan(text: "Home".tr,style: CustomTheme.mostviewnight.copyWith(fontSize: 15,fontWeight: FontWeight.bold,color: notifires.getwhiteblackcolor))

                                                  ]
                                              ),),
                                              subtitle: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text("B-block New AshokNagar".tr,style: CustomTheme.mostviewhome.copyWith(color: notifires.getgreycolor),),
                                                  Text("selected address is 22207.64 km awey from you".tr,style: CustomTheme.mostviewhome.copyWith(color: notifires.getblueyellow,fontSize: 12,),maxLines: 1,),

                                                ],
                                              ),
                                              trailing: GestureDetector(
                                                  onTap: (){
                                                    Get.to(GoToConfirmLocation());
                                                  },
                                                  child: Text("change".tr,style: CustomTheme.mostviewnight.copyWith(color: notifires.primeryColor,fontWeight: FontWeight.bold),)),


                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Obx(() => Radio(
                                            activeColor: notifires.primeryColor,
                                            value: 0,
                                            groupValue: controller.conunt.value,
                                            onChanged: (value) {
                                              controller.changeCount(value as int);
                                              Get.back();
                                            },
                                          ),),
                                         Text("None",style: CustomTheme.mostviewhome.copyWith(color: notifires.getgreycolor),),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),isScrollControlled: true)
                              // onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeLaundry())),
                            ),
                            SpeedDialChild(
                                labelBackgroundColor: notifires.secondrycolor,
                                labelStyle: CustomTheme.mostviewnight.copyWith(color: notifires.getwhiteblackcolor),
                                backgroundColor: notifires.secondrycolor,
                                child: Icon(Icons.add_location_alt_outlined,color: notifires.getwhiteblackcolor,),
                                label: 'Delivery Address',
                                onTap: ()=>Get.bottomSheet(Container(
                                  padding: EdgeInsets.only(left: 15,right: 15,top: 10,),
                                  decoration: BoxDecoration(
                                      color: notifires.boxBackgroundcolor,
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(15),topLeft: Radius.circular(15))
                                  ),
                                  height: 270,

                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Select Your Delivery Address",style: CustomTheme.mostviewtitle.copyWith(color: notifires.getwhiteblackcolor),),
                                      SizedBox(height: 5,),
                                      Row(
                                        children: [
                                          Obx(() =>  Radio(
                                            activeColor: notifires.primeryColor,
                                            value: 1,
                                            groupValue: controller.conunt2.value,
                                            onChanged: (value) {
                                              controller.changeCount2(value as int);
                                              Get.back();
                                            },
                                          )),
                                          Expanded(
                                            child: ListTile(
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
                                              trailing: GestureDetector(
                                                onTap: (){
                                                  Get.to(GoToConfirmLocation());
                                                },
                                                  child: Text("change".tr,style: CustomTheme.mostviewnight.copyWith(color: notifires.primeryColor,fontWeight: FontWeight.bold),)),


                                            ),
                                          ),
                                        ],
                                      ),
                                      Divider(thickness: 1.5,color: greyShade300,),
                                      Row(
                                        children: [
                                          Obx(() => Radio(
                                            activeColor: notifires.primeryColor,
                                            value: 2,
                                            groupValue: controller.conunt2.value,
                                            onChanged: (value) {
                                              controller.changeCount2(value as int);
                                              Get.back();
                                            },
                                          ),),
                                          Expanded(
                                            child: ListTile(
                                              titleAlignment: ListTileTitleAlignment.top,
                                              leading: Icon(Icons.location_city_sharp,color: Colors.yellow.shade700,size: 35,),
                                              title: RichText(text: TextSpan(
                                                  children: [
                                                    TextSpan(text: "Delivering to  ".tr,style: CustomTheme.mostviewnight.copyWith(fontSize: 15,color: notifires.getgreycolor)),
                                                    TextSpan(text: "Home".tr,style: CustomTheme.mostviewnight.copyWith(fontSize: 15,fontWeight: FontWeight.bold,color: notifires.getwhiteblackcolor))

                                                  ]
                                              ),),
                                              subtitle: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text("B-block New AshokNagar".tr,style: CustomTheme.mostviewhome.copyWith(color: notifires.getgreycolor),),
                                                  Text("selected address is 22207.64 km awey from you".tr,style: CustomTheme.mostviewhome.copyWith(color: notifires.getblueyellow,fontSize: 12,),maxLines: 1,),

                                                ],
                                              ),
                                              trailing: GestureDetector(
                                                  onTap: (){
                                                    Get.to(GoToConfirmLocation());
                                                  },
                                                  child: Text("change".tr,style: CustomTheme.mostviewnight.copyWith(color: notifires.primeryColor,fontWeight: FontWeight.bold),)),


                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Obx(() => Radio(
                                            activeColor: notifires.primeryColor,
                                            value: 0,
                                            groupValue: controller.conunt2.value,
                                            onChanged: (value) {
                                              controller.changeCount2(value as int);
                                              Get.back();
                                            },
                                          ),),
                                          Text("None",style: CustomTheme.mostviewhome.copyWith(color: notifires.getgreycolor),),
                                        ],
                                      ),

                                    ],
                                  ),
                                ),isScrollControlled: true)

                              // onTap: () =>   Navigator.pushReplacement(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) => HomePage()),
                              // ),
                            ),

                          ],
                        )
                      ],
                    ),
                  )

                ],
              ),
            ),
          )
        ],
      ),
      // floatingActionButton: SpeedDial(
      //   overlayColor: notifires.boxBackgroundcolor,
      //   child: Icon(Icons.add_location_alt_sharp,size: 30,),
      //   children: [
      //     SpeedDialChild(
      //       child: Icon(Icons.add_location_outlined),
      //       label: 'PickUp Address',
      //       // onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeLaundry())),
      //     ),
      //     SpeedDialChild(
      //       child: Icon(Icons.add_location_outlined),
      //       label: 'Delivery Address',
      //       // onTap: () =>   Navigator.pushReplacement(
      //       //   context,
      //       //   MaterialPageRoute(
      //       //       builder: (context) => HomePage()),
      //       // ),
      //     ),
      //
      //   ],
      // ),

    );
  }
}
