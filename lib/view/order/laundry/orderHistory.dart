

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:unimart/customwidget/projecrColor.dart';
import 'package:unimart/helper/customAppBar.dart';
import 'package:unimart/utilis/customStyle.dart';
import 'package:unimart/view/myprofile/addressbooks/addNewAddress.dart';
import 'package:unimart/view/order/laundry/orderDetail.dart';

class OrderHistory extends StatefulWidget {
  const OrderHistory({super.key});

  @override
  State<OrderHistory> createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
  @override
  Widget build(BuildContext context) {
    final notifires=Provider.of<ColorNotifires>(context);
    return DefaultTabController(length: 4, child: Scaffold(
      backgroundColor: notifires.boxBackgroundcolor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: notifires.getgreycolor),
        elevation: 0,
        title: Text("Order History",style: CustomTheme.mostviewtitle.copyWith(color: notifires.getwhiteblackcolor),
        ),
        centerTitle: true,
        backgroundColor: notifires.boxBackgroundcolor,
        bottom: TabBar(
          isScrollable: true,
          labelColor: notifires.getredYellow,
          unselectedLabelColor: notifires.getgreycolor,
          labelStyle: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),
          indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: notifires.primeryColor.withOpacity(.2)
          ),
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Tab(child: Row(children: [
            Icon(CupertinoIcons.list_bullet,color: notifires.getgreycolor,),
            SizedBox(width: 5,),
            Text("Upcoming",)

          ],),),
              Tab(child: Row(children: [
            Icon(CupertinoIcons.checkmark_seal,color: notifires.getgreycolor,),
            SizedBox(width: 5,),
            Text("Completed",),


          ],),),
              Tab(child: Row(children: [

                Icon(Icons.info_outline_rounded,color: notifires.getgreycolor,),
                SizedBox(width: 5,),
                Text("Processing",),

              ],),),
              Tab(child: Row(children: [

            Icon(Icons.cancel_outlined,color: notifires.getgreycolor,),
            SizedBox(width: 5,),
            Text("Cancelled",),

          ],),)
        ]),
      ),
      body: TabBarView(children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              GestureDetector(
                onTap: (){
                  Get.to(OrderDetailsLaundry(title: "Upcoming",value: 1,));
                },
                child: Card(
                  color: notifires.getbgcolor.withOpacity(.8),
                  child:Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text("OrderID :",style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),),
                            Spacer(),
                            Text("#102335",style: CustomTheme.mostviewtitle.copyWith(color: notifires.getwhiteblackcolor),)
                          ],
                        ),
                        SizedBox(height: 6,),
                        Row(
                          children: [
                            Text("Order Date :",style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),),
                            Spacer(),
                            Text("10-oct-2023",style: CustomTheme.mostviewnight.copyWith(color: notifires.getwhiteblackcolor),)
                          ],
                        ),
                        SizedBox(height: 6,),
                        Row(
                          children: [
                            Text("PickUp Date :",style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),),
                            Spacer(),
                            Text("14-oct-2023",style: CustomTheme.mostviewnight.copyWith(color: notifires.getwhiteblackcolor),)
                          ],
                        ),
                        SizedBox(height: 6,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("PickUp Address :",style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),),
                            Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text("D-52 Block-D,sector-2 ,noida",style: CustomTheme.mostviewbeds.copyWith(color: notifires.getwhiteblackcolor),),
                                SizedBox(height: 5,),
                                GestureDetector(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>AddLocation()));
                                  },
                                  child: Row(children: [
                                    Icon(CupertinoIcons.map,size: 20,color: notifires.primeryColor,),
                                    SizedBox(width: 10,),
                                    Text("View Map",style: CustomTheme.mostviewhome.copyWith(color: notifires.primeryColor),)
                                  ],),
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 6,),
                        Row(
                          children: [
                            Text("Total Amount :",style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),),
                            Spacer(),
                            Text("\$ 14",style: CustomTheme.mostviewtitle.copyWith(color: notifires.getwhiteblackcolor),)
                          ],
                        ),SizedBox(height: 6,),
                        Divider(color: notifires.getgreycolor,height: 2,),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.info_outline_rounded,color: notifires.getredYellow,),
                            SizedBox(width: 10,),
                            Text("Your Request is processing",style: CustomTheme.mostviewhome.copyWith(color: notifires.getgreycolor),),
                            Spacer(),
                            GestureDetector(
                              onTap: (){
                                Navigator.pop(context);
                              },
                              child: Container(
                                height: 40,width: 100,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: notifires.primeryColor,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Text("Reshdule Slot",style: CustomTheme.mostviewbeds.copyWith(color: Colors.white),)),
                            )
                          ],
                        )

                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: (){
                  Get.to(OrderDetailsLaundry(title: "Upcoming",value: 1,));
                },
                child: Card(
                  color: notifires.getbgcolor.withOpacity(.8),
                  child:Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text("OrderID :",style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),),
                            Spacer(),
                            Text("#102335",style: CustomTheme.mostviewtitle.copyWith(color: notifires.getwhiteblackcolor),)
                          ],
                        ),
                        SizedBox(height: 6,),
                        Row(
                          children: [
                            Text("Order Date :",style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),),
                            Spacer(),
                            Text("10-oct-2023",style: CustomTheme.mostviewnight.copyWith(color: notifires.getwhiteblackcolor),)
                          ],
                        ),
                        SizedBox(height: 6,),
                        Row(
                          children: [
                            Text("PickUp Date :",style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),),
                            Spacer(),
                            Text("14-oct-2023",style: CustomTheme.mostviewnight.copyWith(color: notifires.getwhiteblackcolor),)
                          ],
                        ),
                        SizedBox(height: 6,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("PickUp Address :",style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),),
                            Spacer(),
                            Text("D-52 Block-D,sector-2 ,noida",style: CustomTheme.mostviewbeds.copyWith(color: notifires.getwhiteblackcolor),)
                          ],
                        ),
                        SizedBox(height: 6,),
                        Row(
                          children: [
                            Text("Total Amount :",style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),),
                            Spacer(),
                            Text("\$ 14",style: CustomTheme.mostviewtitle.copyWith(color: notifires.getwhiteblackcolor),)
                          ],
                        ),SizedBox(height: 6,),
                        Divider(color: notifires.getgreycolor,height: 2,),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(CupertinoIcons.checkmark_seal,color: Colors.green,),
                            SizedBox(width: 10,),
                            Text("Delivery boy accepted",style: CustomTheme.mostviewhome.copyWith(color: notifires.getgreycolor),),
                            ],
                        )

                      ],
                    ),
                  ),
                ),
              )

            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              GestureDetector(
                onTap: (){
                  Get.to(OrderDetailsLaundry(title: "Completed",value: 2,));
                },
                child: Card(
                  color: notifires.getbgcolor.withOpacity(.8),
                  child:Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text("OrderID :",style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),),
                            Spacer(),
                            Text("#102335",style: CustomTheme.mostviewtitle.copyWith(color: notifires.getwhiteblackcolor),)
                          ],
                        ),
                        SizedBox(height: 6,),
                        Row(
                          children: [
                            Text("Order Date :",style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),),
                            Spacer(),
                            Text("10-oct-2023",style: CustomTheme.mostviewnight.copyWith(color: notifires.getwhiteblackcolor),)
                          ],
                        ),
                        SizedBox(height: 6,),
                        Row(
                          children: [
                            Text("PickUp Date :",style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),),
                            Spacer(),
                            Text("14-oct-2023",style: CustomTheme.mostviewnight.copyWith(color: notifires.getwhiteblackcolor),)
                          ],
                        ),
                        SizedBox(height: 6,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("PickUp Address :",style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),),
                            Spacer(),
                            Text("D-52 Block-D,sector-2 ,noida",style: CustomTheme.mostviewbeds.copyWith(color: notifires.getwhiteblackcolor),)
                          ],
                        ),
                        SizedBox(height: 6,),
                        Row(
                          children: [
                            Text("Delivered Date :",style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),),
                            Spacer(),
                            Text("16-oct-2023",style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),)
                          ],
                        ),
                        SizedBox(height: 6,),
                        Row(
                          children: [
                            Text("Delivered Time :",style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),),
                            Spacer(),
                            Text("08:00 AM -10:00 AM",style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),)
                          ],
                        ),
                        SizedBox(height: 6,),
                        Row(
                          children: [
                            Text("Delivery Agent name :",style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),),
                            Spacer(),
                            Text("Nukul ",style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),)
                          ],
                        ),
                        SizedBox(height: 6,),
                        Row(
                          children: [
                            Text("Delivery Agent no :",style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),),
                            Spacer(),
                            Text("+91 9875633622",style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),)
                          ],
                        ),
                        SizedBox(height: 6,),


                        Row(
                          children: [
                            Text("Total Amount :",style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),),
                            Spacer(),
                            Text("\$ 14",style: CustomTheme.mostviewtitle.copyWith(color: notifires.getwhiteblackcolor),)
                          ],
                        ),SizedBox(height: 6,),
                        Divider(color: notifires.getgreycolor,height: 2,),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(CupertinoIcons.checkmark_seal,color: Colors.green,),
                            SizedBox(width: 10,),
                            Text("Delivered",style: CustomTheme.mostviewhome.copyWith(color: notifires.getgreycolor),),
                          ],
                        )

                      ],
                    ),
                  ),
                ),
              ),


            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              GestureDetector(
                onTap: (){
                  Get.to(OrderDetailsLaundry(title: "Processing",value: 3,));
                },
                child: Card(
                  color: notifires.getbgcolor.withOpacity(.8),
                  child:Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text("OrderID :",style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),),
                            Spacer(),
                            Text("#102335",style: CustomTheme.mostviewtitle.copyWith(color: notifires.getwhiteblackcolor),)
                          ],
                        ),
                        SizedBox(height: 6,),
                        Row(
                          children: [
                            Text("Order Date :",style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),),
                            Spacer(),
                            Text("10-oct-2023",style: CustomTheme.mostviewnight.copyWith(color: notifires.getwhiteblackcolor),)
                          ],
                        ),
                        SizedBox(height: 6,),
                        Row(
                          children: [
                            Text("PickUp Date :",style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),),
                            Spacer(),
                            Text("14-oct-2023",style: CustomTheme.mostviewnight.copyWith(color: notifires.getwhiteblackcolor),)
                          ],
                        ),
                        SizedBox(height: 6,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("PickUp Address :",style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),),
                            Spacer(),
                            Text("D-52 Block-D,sector-2 ,noida",style: CustomTheme.mostviewbeds.copyWith(color: notifires.getwhiteblackcolor),)
                          ],
                        ),
                        SizedBox(height: 6,),
                        Row(
                          children: [
                            Text("Expected Delivery Date :",style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),),
                            Spacer(),
                            Text("16-oct-2023",style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),)
                          ],
                        ),
                        SizedBox(height: 6,),
                        Row(
                          children: [
                            Text("Expected Delivery Time :",style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),),
                            Spacer(),
                            Text("08:00 AM -10:00 AM",style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),)
                          ],
                        ),
                        SizedBox(height: 6,),


                        Row(
                          children: [
                            Text("Total Amount :",style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),),
                            Spacer(),
                            Text("\$ 14",style: CustomTheme.mostviewtitle.copyWith(color: notifires.getwhiteblackcolor),)
                          ],
                        ),SizedBox(height: 6,),
                        Divider(color: notifires.getgreycolor,height: 2,),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.info_outline_rounded,color: notifires.getredYellow,),
                            SizedBox(width: 10,),
                            Text("Your Request is processing",style: CustomTheme.mostviewhome.copyWith(color: notifires.getgreycolor),),
                            Spacer(),

                          ],
                        )

                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: (){
                  Get.to(OrderDetailsLaundry(title: "Processing",value: 3,));
                },
                child: Card(
                  color: notifires.getbgcolor.withOpacity(.8),
                  child:Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text("OrderID :",style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),),
                            Spacer(),
                            Text("#102335",style: CustomTheme.mostviewtitle.copyWith(color: notifires.getwhiteblackcolor),)
                          ],
                        ),
                        SizedBox(height: 6,),
                        Row(
                          children: [
                            Text("Order Date :",style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),),
                            Spacer(),
                            Text("10-oct-2023",style: CustomTheme.mostviewnight.copyWith(color: notifires.getwhiteblackcolor),)
                          ],
                        ),
                        SizedBox(height: 6,),
                        Row(
                          children: [
                            Text("PickUp Date :",style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),),
                            Spacer(),
                            Text("14-oct-2023",style: CustomTheme.mostviewnight.copyWith(color: notifires.getwhiteblackcolor),)
                          ],
                        ),
                        SizedBox(height: 6,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("PickUp Address :",style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),),
                            Spacer(),
                            Text("D-52 Block-D,sector-2 ,noida",style: CustomTheme.mostviewbeds.copyWith(color: notifires.getwhiteblackcolor),)
                          ],
                        ),
                        SizedBox(height: 6,),
                        Row(
                          children: [
                            Text("Expected Delivery Date :",style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),),
                            Spacer(),
                            Text("16-oct-2023",style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),)
                          ],
                        ),
                        SizedBox(height: 6,),
                        Row(
                          children: [
                            Text("Expected Delivery Time :",style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),),
                            Spacer(),
                            Text("08:00 AM -10:00 AM",style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),)
                          ],
                        ),
                        SizedBox(height: 6,),
                        Row(
                          children: [
                            Text("Delivery Agent name :",style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),),
                            Spacer(),
                            Text("Nukul ",style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),)
                          ],
                        ),
                        SizedBox(height: 6,),
                        Row(
                          children: [
                            Text("Delivery Agent no :",style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),),
                            Spacer(),
                            Text("+91 9875633622",style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),)
                          ],
                        ),
                        SizedBox(height: 6,),


                        Row(
                          children: [
                            Text("Total Amount :",style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),),
                            Spacer(),
                            Text("\$ 14",style: CustomTheme.mostviewtitle.copyWith(color: notifires.getwhiteblackcolor),)
                          ],
                        ),SizedBox(height: 6,),
                        Divider(color: notifires.getgreycolor,height: 2,),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(CupertinoIcons.checkmark_seal,color: Colors.green,),
                            SizedBox(width: 10,),
                            Text("Ready to Delivered",style: CustomTheme.mostviewhome.copyWith(color: notifires.getgreycolor),),
                          ],
                        )

                      ],
                    ),
                  ),
                ),
              ),


            ],
          ),
        ),
        Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            GestureDetector(
              onTap: (){
                Get.to(OrderDetailsLaundry(title: "Cancelled",value: 4));
              },
              child: Card(
                color: notifires.getbgcolor.withOpacity(.8),
                child:Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("OrderID :",style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),),
                          Spacer(),
                          Text("#102335",style: CustomTheme.mostviewtitle.copyWith(color: notifires.getwhiteblackcolor),)
                        ],
                      ),
                      SizedBox(height: 6,),
                      Row(
                        children: [
                          Text("Order Date :",style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),),
                          Spacer(),
                          Text("10-oct-2023",style: CustomTheme.mostviewnight.copyWith(color: notifires.getwhiteblackcolor),)
                        ],
                      ),
                      SizedBox(height: 6,),
                      Row(
                        children: [
                          Text("Total Amount :",style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),),
                          Spacer(),
                          Text("\$ 14",style: CustomTheme.mostviewtitle.copyWith(color: notifires.getwhiteblackcolor),)
                        ],
                      ),SizedBox(height: 6,),
                      SizedBox(height: 6,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Canceling reasons :",style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),),
                          Spacer(),
                          Text("Changed Mind",style: CustomTheme.mostviewbeds.copyWith(color: Colors.red))
                        ],
                      ),
                      SizedBox(height: 10,),
                      Divider(color: notifires.getgreycolor,height: 2,),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.cancel_sharp,color: redShade900,),
                          SizedBox(width: 10,),
                          Text("Cancelled",style: CustomTheme.mostviewhome.copyWith(color: notifires.getgreycolor),),
                        ],
                      )

                    ],
                  ),
                ),
              ),
            )


          ],
        ),
      ),

      ],

      ),
    ));
  }
}
