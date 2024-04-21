import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:unimart/customWidget/customProductDetails.dart';
import 'package:unimart/helper/customAppBar.dart';
import 'package:unimart/utilis/customStyle.dart';
import '../../../../customwidget/projecrColor.dart';
import '../../../bottomnavbar/grocery/myProfileDetails.dart';
import '../../../shop/grocery/productdetails/productView.dart';
import 'orderSuccess.dart';

class OrderSummaryPage extends StatefulWidget {
  const OrderSummaryPage({super.key});

  @override
  State<OrderSummaryPage> createState() => _OrderSummaryPageState();
}

class _OrderSummaryPageState extends State<OrderSummaryPage> {
  @override
  Widget build(BuildContext context) {
    final notifire=Provider.of<ColorNotifires>(context);
    return Scaffold(
      backgroundColor: notifire.boxBackgroundcolor,
      appBar: CustomAppBars(
        title: "",
      ),
      body: Stack(
        children:[
          ListView(
          children: [
            Container(
              color: notifire.boxBackgroundcolor,
              // margin: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 10),
                    child: Text("Order Summary".tr,style: CustomTheme.mostviewtitle.copyWith(fontSize: 22,fontWeight: FontWeight.w600,color: notifire.getwhiteblackcolor),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 10),
                    child: Text("Arrived at".tr+"10:33 pm",style: CustomTheme.smallPrimaryTextStyle.copyWith(fontSize: 14,color: notifire.getgreycolor),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 10),
                    child: Row(
                      children: [
                        Text("Download Invoice".tr,style: CustomTheme.smallCrousalTextStyle.copyWith(color: notifire.primeryColor,fontWeight: FontWeight.w600),),
                        SizedBox(width: 8,),
                        Icon(Icons.save_alt_rounded,color: notifire.primeryColor,size: 24,)
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 10),
                    child: Text("1"+"items in this order",style: CustomTheme.mostviewnight.copyWith(color: notifire.getwhiteblackcolor),),
                  ),
                  ListTile(
                    leading: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductView()));
                      },
                      child: Container(
                        width: 60,
                        decoration: CustomTheme.Mostdecoration,
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Image.asset("assets/images/constant/munchies.png"),
                        ),
                      ),
                    ),
                    title: Text("Aashirvaad Shudh Chakki Whole Wheat Atta (10 kg)",style: CustomTheme.mostviewhome.copyWith(fontSize: 12,color: notifire.getwhiteblackcolor),),
                    subtitle: Text("10 kg x1",style: CustomTheme.smallPrimaryTextStyle.copyWith(color: notifire.getgreycolor,fontSize: 13),),
                    trailing: RichText(
                      text: TextSpan(

                        children: [
                          TextSpan( text: "₹559",
                            style: CustomTheme.smallSecondaryTextStyle.copyWith(color: notifire.getgreycolor,fontSize: 14,decoration: TextDecoration.lineThrough),
                          ),
                          TextSpan(
                            text: "  ₹359",
                            style: CustomTheme.smallSecondaryTextStyle.copyWith(color: notifire.getwhiteblackcolor,fontSize: 15,fontWeight: FontWeight.bold),
                          )

                        ]
                      ),
                    ),
                  )

                ],
              ),
            ),
            SizedBox(height: 15,),
            Container(
              margin: EdgeInsets.all(10),
              // color: white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text("Bill Details".tr,style: CustomTheme.mostviewnight.copyWith(fontWeight: FontWeight.bold,color:notifire.getwhiteblackcolor),),
                  ),
                  Divider(thickness: 2,color: greyShade300,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(children: [
                      Text("MRP".tr,style: CustomTheme.checkBoxTextStype.copyWith(fontSize: 15,color: notifire.getwhiteblackcolor),),
                      Spacer(),
                      Text("₹559",style: CustomTheme.mostviewnight.copyWith(color: notifire.getwhiteblackcolor,fontSize: 14),)
                    ],),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(children: [
                      Text("Product Discount".tr,style: CustomTheme.checkBoxTextStype.copyWith(color: notifire.getblueyellow,fontSize: 15),),
                      Spacer(),
                      Text("-₹200",style: TextStyle(color: notifire.getblueyellow,fontSize: 14),)
                    ],),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(children: [
                      Text("Item Total".tr,style: CustomTheme.checkBoxTextStype.copyWith(fontSize: 15,color: notifire.getwhiteblackcolor),),
                      Spacer(),
                      Text("₹359",style: CustomTheme.mostviewnight.copyWith(color: notifire.getwhiteblackcolor,fontSize: 14))
                    ],),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(children: [
                      Text("Handling Charge".tr,style: CustomTheme.checkBoxTextStype.copyWith(fontSize: 15,color: notifire.getwhiteblackcolor),),
                      Spacer(),
                      Text("+₹5",style: TextStyle(color: green),)
                    ],),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(children: [
                      Text("Delivery charge".tr,style: CustomTheme.checkBoxTextStype.copyWith(fontSize: 15,color: notifire.getwhiteblackcolor),),
                      Spacer(),
                      Text("+₹16",style: TextStyle(color: green),)
                    ],),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(children: [
                      Text("Feeding India Donation".tr,style: CustomTheme.checkBoxTextStype.copyWith(fontSize: 15,color: notifire.getwhiteblackcolor),),
                      Spacer(),
                      Text("+₹1",style: TextStyle(color: redShade900),)
                    ],),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(children: [
                      Text("Bill Total".tr,style: CustomTheme.smallCrousalTextStyle.copyWith(fontWeight: FontWeight.bold,fontSize: 15,color: notifire.getwhiteblackcolor),),
                      Spacer(),
                      Text("₹381",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: notifire.getwhiteblackcolor),)
                    ],),
                  ),

                ],
              ),

            ),
            SizedBox(height: 5,),
            Container(
              // color: white,
              margin: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text("Order details".tr,style: CustomTheme.mostviewnight.copyWith(fontWeight: FontWeight.bold,color: notifire.getwhiteblackcolor),),
                  ),
                  Divider(thickness: 2,color: greyShade300,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 5),
                    child: Text("Order Id".tr,style: CustomTheme.checkBoxTextStype.copyWith(color: notifire.getwhiteblackcolor,fontSize: 14,fontWeight: FontWeight.bold,),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Text("ORD89345345I",style: CustomTheme.checkBoxTextStype.copyWith(color: notifire.getwhiteblackcolor,fontSize: 15,fontWeight: FontWeight.w400),),
                        SizedBox(width: 10,),
                        Icon(Icons.file_copy_outlined,color: notifire.getgreycolor,size: 20,)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 5),
                    child: Text("Payment".tr,style: CustomTheme.checkBoxTextStype.copyWith(color: notifire.getgreycolor,fontSize: 14,fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Text("Paid Online".tr,style: CustomTheme.checkBoxTextStype.copyWith(color: notifire.getwhiteblackcolor,fontSize: 15,fontWeight: FontWeight.w400),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 5),
                    child: Text("Deliver to".tr,style: CustomTheme.checkBoxTextStype.copyWith(color: notifire.getgreycolor,fontSize: 14,fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text("2nd flor,540 isa appartment gali no 6 a Zakhir Nagar,243335",style: CustomTheme.checkBoxTextStype.copyWith(color: notifire.getwhiteblackcolor,fontSize: 15,fontWeight: FontWeight.w400),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 5),
                    child: Text("Order placed".tr,style: CustomTheme.checkBoxTextStype.copyWith(color: notifire.getgreycolor,fontSize: 14,fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,bottom: 10),
                    child: Text("Placed on".tr+" Sat,09 Dec 23, 10:20 am",style: CustomTheme.checkBoxTextStype.copyWith(color: notifire.getwhiteblackcolor,fontSize: 15,fontWeight: FontWeight.w400),),
                  ),

                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text("Need help with your order".tr,style: CustomTheme.mostviewnight.copyWith(fontWeight: FontWeight.bold, color: notifire.getwhiteblackcolor),),
                  ),
                  Divider(thickness: 2,color: greyShade300,),
                  ListTile(
                    leading: IconContainer(Icon(Icons.chat,size: 20,color: notifire.getgreycolor,)),
                    title: Text("Chat with Us".tr,style: CustomTheme.mostviewhome.copyWith(fontSize: 15,color: notifire.getwhiteblackcolor),),
                    subtitle: Text("About any issue related your order".tr,style: CustomTheme.smallCrousalTextStyle.copyWith(color: notifire.getgreycolor),),
                    trailing: Icon(Icons.arrow_forward_ios,size: 20,color: notifire.primeryColor,),

                  ),
                  SizedBox(height: 70,),
                ],
              ),
            )
          ],
        ),
          Positioned(
            left: 0,right: 0,bottom: 0,
            child: Container(
              color: notifire.boxBackgroundcolor,
              child: Padding(
                padding: const EdgeInsets.only(left: 30,right: 30,top: 20,bottom: 10),
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderSuccess()));
                },child: Padding(
                  padding: const EdgeInsets.only(top: 5,bottom: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Repeat Order".tr,style: CustomTheme.mostviewtitle.copyWith(color: white),),
                      Text("VIEW CART ON NEXT STEP".tr,style: CustomTheme.smallCrousalTextStyle.copyWith(color: greyShade300),)

                    ],
                  ),
                ),
                style: ElevatedButton.styleFrom(backgroundColor: notifire.primeryColor,shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                )),),
              ),
            ),
          )
        ]
      ),
    );
  }
}
