import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:provider/provider.dart';
import 'package:unimart/customwidget/projecrColor.dart';
import 'package:unimart/helper/customAppBar.dart';
import 'package:unimart/utilis/customStyle.dart';
import 'package:unimart/view/shop/laundry/pickUpSlot.dart';

class AfterPlaceOrder extends StatefulWidget {
   AfterPlaceOrder(@required this.title,this.gonext);
  String title;
  Callback gonext;

  @override
  State<AfterPlaceOrder> createState() => _AfterPlaceOrderState();
}

class _AfterPlaceOrderState extends State<AfterPlaceOrder> {
  Future<void> _showCustomDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: notifires.boxBackgroundcolor,
          title: Text('Payment status',style: CustomTheme.mostviewtitle.copyWith(color: notifires.getwhiteblackcolor),),
          content: Container(
            height: 90,
            child: Column(
              children: [
                Row(
                  children: [
                    Text('Your Payment is successfully',style: CustomTheme.mostviewnight.copyWith(color: notifires.getwhiteblackcolor),),
                    SizedBox(width: 30,),
                    Icon(CupertinoIcons.checkmark_seal,color: greenShade900,)
                  ],
                ),
                SizedBox(height: 10),
                // Add your custom widgets here
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: widget.gonext,
                      child: Text("Next"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final notifires=Provider.of<ColorNotifires>(context);

    return Scaffold(
      backgroundColor: notifires.boxBackgroundcolor,
      appBar: CustomAppBars(
        title: "Bill Total ".tr+widget.title,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8,right: 8,top: 20),
            child: Card(
              color: notifires.getbgcolor.withOpacity(.7),
              elevation: 3,
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),

                ),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text("Cards".tr,style: CustomTheme.mostviewtitle.copyWith(color: notifires.getwhiteblackcolor),),
                    ),
                    ListTile(
                      onTap: (){
                        _showCustomDialog(context);
                      },
                      leading: leadingCustom("http://www.pngall.com/wp-content/uploads/2/Black-Credit-Card.png"),
                      title: Text("Add credit or debit cards".tr,style: CustomTheme.mostviewnight.copyWith(color: notifires.getwhiteblackcolor),),
                      trailing: Text("ADD".tr,style: CustomTheme.mostviewtitle.copyWith(color:notifires.primeryColor,fontSize: 15),),
                    ),
                    ListTile(
                      onTap: (){
                        _showCustomDialog(context);
                      },
                      leading: leadingCustom("https://seeklogo.com/images/P/pluxee-logo-BEB3D5C45A-seeklogo.com.png"),
                      title: Text("Pluxee | Sodexo".tr,style: CustomTheme.mostviewnight.copyWith(color: notifires.getwhiteblackcolor),),

                    ),

                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: notifires.getbgcolor.withOpacity(.7),
              elevation: 3,
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),

                ),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text("UPI".tr,style: CustomTheme.mostviewtitle.copyWith(color: notifires.getwhiteblackcolor),),
                    ),
                    ListTile(
                      onTap: (){
                        _showCustomDialog(context);
                      },
                      leading: leadingCustom("https://tse2.mm.bing.net/th?id=OIP.awfBJZqGdaKZ0lO3wgkCMgHaDt&pid=Api&P=0&h=180"),
                      title: Text("Paytm UPI".tr,style: CustomTheme.mostviewnight.copyWith(color: notifires.getwhiteblackcolor),),
                    ),
                    Divider(thickness: 1,color: notifires.getgreycolor,indent: 18,endIndent: 18,),
                    ListTile(
                      onTap: (){
                        _showCustomDialog(context);
                      },

                      leading: leadingCustom("https://www.betal.app/wp-content/uploads/2020/06/google-pay-logo-0-1-1024x459.png"),
                      title: Text("Google Pay UPI".tr,style: CustomTheme.mostviewnight.copyWith(color: notifires.getwhiteblackcolor),),

                    ),
                    Divider(thickness: 1,color: grey,indent: 18,endIndent: 18,),
                    ListTile(
                      onTap: (){
                        _showCustomDialog(context);
                      },

                      leading: leadingCustom("http://lh3.googleusercontent.com/76EHVNZV54QmXL4y9kstkwSRQRp6CJHUJzXe2n1F_nV_k2wpcS2b9LxSNabdVvcJmg=w300"),
                      title: Text("Phonepe UPI".tr,style: CustomTheme.mostviewnight.copyWith(color: notifires.getwhiteblackcolor),),

                    ),
                    Divider(thickness:1 ,color: grey,indent: 18,endIndent: 18,),
                    ListTile(
                      onTap: (){
                        _showCustomDialog(context);
                      },

                      leading: leadingCustom("https://i1.wp.com/www.santacruztechbeat.com/wp-content/uploads/2015/04/Amazon_logo-8.png"),
                      title: Text("Amazon Pay UPI".tr,style: CustomTheme.mostviewnight.copyWith(color: notifires.getwhiteblackcolor),),

                    ),
                    Divider(thickness: 1,color: grey,indent: 18,endIndent: 18,),
                    ListTile(
                      onTap: (){
                        _showCustomDialog(context);
                      },

                      leading: leadingCustom("https://logodix.com/logo/1763566.png"),
                      title: Text("Add new UPI ID".tr,style: CustomTheme.mostviewnight.copyWith(color: notifires.getwhiteblackcolor),),
                      trailing: Text("ADD".tr,style: CustomTheme.mostviewtitle.copyWith(color: notifires.primeryColor,fontSize: 15),),
                    ),


                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: notifires.getbgcolor.withOpacity(.7),

              elevation: 3,
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                ),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text("Netbanking".tr,style: CustomTheme.mostviewtitle.copyWith(color: notifires.getwhiteblackcolor),),
                    ),
                    ListTile(
                      leading: leadingCustom("https://cdn.iconscout.com/icon/premium/png-512-thumb/bank-account-banking-building-1-31235.png"),
                      title: Text("Netbanking".tr,style: CustomTheme.mostviewnight.copyWith(color: notifires.getwhiteblackcolor),),
                      trailing: Text("ADD".tr,style: CustomTheme.mostviewtitle.copyWith(color: notifires.primeryColor,fontSize: 15),),
                    ),


                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 40,)

        ],
      ),
    );
  }
  Widget leadingCustom(String link){
    return Container(
      height: 35,width: 60,
      decoration: ShapeDecoration(
          color: white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: BorderSide(width: 1,color: grey)
          )
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8,right: 8,top: 5,bottom: 5),
        child: Center(child: Image.network(link)),
      ),
    );
  }
}
