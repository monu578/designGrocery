import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:unimart/customwidget/projecrColor.dart';
import 'package:unimart/helper/customAppBar.dart';

import '../../../customWidget/commonWidgets.dart';
import '../../../utilis/customStyle.dart';

class OrderDetailsLaundry extends StatefulWidget {
   OrderDetailsLaundry({super.key,required this.title,required this.value});
  String title;
  int value;

  @override
  State<OrderDetailsLaundry> createState() => _OrderDetailsLaundryState();
}

class _OrderDetailsLaundryState extends State<OrderDetailsLaundry> {
  @override
  Widget build(BuildContext context) {
    notifires =Provider.of<ColorNotifires>(context);
    return Scaffold(
      backgroundColor: notifires.boxBackgroundcolor,
      appBar: CustomAppBars(title: "Order Details",centerTitle: true,),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: ListView(
          children: [
            Row(
              children: [
                Text("Order Status:",style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),),
                Spacer(),
                Text(widget.title,style: CustomTheme.mostviewtitle.copyWith(color: notifires.getwhiteblackcolor),)
              ],
            ),
            SizedBox(height: 6,),
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
                Text("10-oct-2023",style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),)
              ],
            ),
            SizedBox(height: 6,),
            Row(
              children: [
                Text(widget.value==4?"Canceled date :":"Pick Up date :",style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),),
                Spacer(),
                Text("12-oct-2023",style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),)
              ],
            ),
            SizedBox(height: 6,),
           widget.value==4? Row(
             children: [
               Text("Canceling reasons",style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),),
               Spacer(),
               Text("Changed Mind",style: CustomTheme.mostviewhome.copyWith(color: Colors.red),)
             ],
           ):Row(
              children: [
                Text("Address:",style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),),
                Spacer(),
                Text("Block-B,New Ashoknagar Delhi",style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),)
              ],
            ),
            SizedBox(height: 30,),
            ListTile(
              contentPadding: EdgeInsets.only(left: 0,right: 0),
              leading: Image.network("https://cdn.iconscout.com/icon/free/png-512/avatar-372-456324.png"),
              title: Text("User Name",style: CustomTheme.mostviewnight.copyWith(color: notifires.getwhiteblackcolor),),
              subtitle: Text("+91 7455757439",style: CustomTheme.mostviewhome.copyWith(color: notifires.getgreycolor),),
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
                          Text("\$ 10.00",style: CustomTheme.mostviewtitle.copyWith(color: notifires.getredYellow),)
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

          ]
        ),
      ),
    );
  }
}
