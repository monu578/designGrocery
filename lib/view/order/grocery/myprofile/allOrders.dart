import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:unimart/helper/customAppBar.dart';
import 'package:unimart/utilis/customStyle.dart';
import 'package:unimart/view/order/grocery/myProfile/orderSummary.dart';
import '../../../../customwidget/projecrColor.dart';
import '../../../shop/grocery/productdetails/productView.dart';

class YourOuderPage extends StatefulWidget {
  const YourOuderPage({super.key});

  @override
  State<YourOuderPage> createState() => _YourOuderPageState();
}

class _YourOuderPageState extends State<YourOuderPage> {
  @override
  Widget build(BuildContext context) {
    final notifire=Provider.of<ColorNotifires>(context);

    return Scaffold(
      backgroundColor: notifire.boxBackgroundcolor,
      appBar: CustomAppBars(
        title: "Your Order".tr,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Card(
              elevation: 2,
              child: OrderCard(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Card(
              elevation: 2,
              child: OrderCard(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Card(
              elevation: 2,
              child: OrderCard(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Card(
              elevation: 2,
              child: OrderCard(),
            ),
          ),

        ],
      ),
    );
  }
  Widget OrderCard(){
    final notifire=Provider.of<ColorNotifires>(context);

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: notifire.boxBackgroundcolor.withOpacity(.9),
        boxShadow: [BoxShadow(
          color: notifire.getgreycolor,
          blurRadius: 4
        )]
      ),
      child:Column(
        children: [
          ListTile(
            leading: Container(
              alignment: Alignment.center,
              height: 45,width: 45,
              decoration: BoxDecoration(
                color: notifire.primeryColor.withOpacity(.2),
                borderRadius: BorderRadius.circular(10)
              ),
              child: ImageIcon(AssetImage("assets/icons/check.png",),color: notifire.secondrycolor,),
            ),
            title: Text("Delivered".tr+"in".tr+"14"+"minutes".tr,style: CustomTheme.mostviewtitle.copyWith(fontSize: 17,color: notifire.getwhiteblackcolor),),
            subtitle: Text("₹449 - 09 Dec, 10:20 pm",style: CustomTheme.mostviewhome.copyWith(color: notifire.getgreycolor),),
            trailing: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderSummaryPage()));
            },child: Icon(Icons.arrow_forward,color: notifire.getgreycolor,)),
          ),
          Divider(thickness: 1.5,color: greyShade300,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Padding(
              padding:  EdgeInsets.only(left: 10),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductView()));
                },
                child: Container(
                  height: 60,width: 70,
                  decoration: CustomTheme.Mostdecoration,
                  child: Padding(
                    padding:  EdgeInsets.all(8.0),
                    child: Image.asset("assets/images/constant/munchies.png"),
                  ),
                ),
              ),
            )
          ],),
          Divider(thickness: 1.5,color: greyShade300,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: Container(height: 50,child: Center(child: Text("Reorder".tr,style: CustomTheme.mostviewnight.copyWith(color: notifire.primeryColor),),),)),
              Container(height: 45,width: 2,color:greyShade300,),
              Expanded(child: Container(height: 50,child: Center(child: Text("Rate Order".tr,style: CustomTheme.mostviewnight.copyWith(color: notifire.primeryColor),),),))

            ],
          )
        ],
      ),
    );
  }
}
