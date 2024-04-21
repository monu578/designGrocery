

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:provider/provider.dart';
import 'package:unimart/customwidget/commonWidgets.dart';
import 'package:unimart/customwidget/projecrColor.dart';
import 'package:unimart/utilis/customStyle.dart';
import 'package:unimart/view/shop/grocery/productdetails/productView.dart';
import 'package:unimart/view/shop/grocery/productdetails/seeAllProduct.dart';

import '../../../../customWidget/specialDealsContainer.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List productslist=[

    {
      "title":"Boat Airdopes 131/138 TWS Earbusd(Midnight)",
      "image_path":"assets/images/constant/trimmers.png",
      "waight":"1 unit",
      "price":"799",
      "lessPrice":"1,650",
      "less":"42"
    },
    {
      "title":"Boat Airdopes 131/138 TWS Earbusd(Midnight)",
      "image_path":"assets/images/constant/earbuds.png",
      "waight":"1 unit",
      "price":"999",
      "lessPrice":"2,990",
      "less":"42"
    },
    {
      "title":"Boat Airdopes 131/138 TWS Earbusd(Midnight)",
      "image_path":"assets/images/constant/smartwatch.png",
      "waight":"1 unit",
      "price":"1,999",
      "lessPrice":"2,990",
      "less":"42"
    },
    {
      "title":"Boat Airdopes 131/138 TWS Earbusd(Midnight)",
      "image_path":"assets/images/constant/trimmers.png",
      "waight":"1 unit",
      "price":"799",
      "lessPrice":"1,650",
      "less":"42"
    },
    {
      "title":"Boat Airdopes 131/138 TWS Earbusd(Midnight)",
      "image_path":"assets/images/constant/earbuds.png",
      "waight":"1 unit",
      "price":"999",
      "lessPrice":"2,990",
      "less":"42"
    },
    {
      "title":"Boat Airdopes 131/138 TWS Earbusd(Midnight)",
      "image_path":"assets/images/constant/trimmers.png",
      "waight":"1 unit",
      "price":"799",
      "lessPrice":"1,650",
      "less":"42"
    },
    {
      "title":"Boat Airdopes 131/138 TWS Earbusd(Midnight)",
      "image_path":"assets/images/constant/earbuds.png",
      "waight":"1 unit",
      "price":"999",
      "lessPrice":"2,990",
      "less":"42"
    },
    {
      "title":"Boat Airdopes 131/138 TWS Earbusd(Midnight)",
      "image_path":"assets/images/constant/smartwatch.png",
      "waight":"1 unit",
      "price":"1,999",
      "lessPrice":"2,990",
      "less":"42"
    },
    {
      "title":"Boat Airdopes 131/138 TWS Earbusd(Midnight)",
      "image_path":"assets/images/constant/smartwatch.png",
      "waight":"1 unit",
      "price":"1,999",
      "lessPrice":"2,990",
      "less":"42"
    },
    {
      "title":"Boat Airdopes 131/138 TWS Earbusd(Midnight)",
      "image_path":"assets/images/constant/trimmers.png",
      "waight":"1 unit",
      "price":"799",
      "lessPrice":"1,650",
      "less":"42"
    },
    {
      "title":"Boat Airdopes 131/138 TWS Earbusd(Midnight)",
      "image_path":"assets/images/constant/earbuds.png",
      "waight":"1 unit",
      "price":"999",
      "lessPrice":"2,990",
      "less":"42"
    },
    {
      "title":"Boat Airdopes 131/138 TWS Earbusd(Midnight)",
      "image_path":"assets/images/constant/smartwatch.png",
      "waight":"1 unit",
      "price":"1,999",
      "lessPrice":"2,990",
      "less":"42"
    },
  ];
  List productslist2=[
    {
      "title":"Vaseline Intensive Care Deep Moisture Body Lotion(Long Moisturization For Healthy,Glowing Skin-600 ml",
      "image_path":"assets/images/constant/majano.png",
      "waight":"600 ml",
      "price":"149",
      "lessPrice":"249",
      "less":"42"
    },
    {
      "title":"Vaseline Intensive Care Deep Moisture Body Lotion(Long Moisturization For Healthy,Glowing Skin-600 ml",
      "image_path":"assets/images/munchies.png",
      "waight":"800 ml",
      "price":"349",
      "lessPrice":"699",
      "less":"48"
    },
    {
      "title":"Vaseline Intensive Care Deep Moisture Body Lotion(Long Moisturization For Healthy,Glowing Skin-600 ml",
      "image_path":"assets/images/constant/haldiram.png",
      "waight":"300 ml",
      "price":"149",
      "lessPrice":"299",
      "less":"50"
    },
    {
      "title":"Vaseline Intensive Care Deep Moisture Body Lotion(Long Moisturization For Healthy,Glowing Skin-600 ml",
      "image_path":"assets/images/constant/priniti.png",
      "waight":"600 ml",
      "price":"149",
      "lessPrice":"249",
      "less":"42"
    },
    {
      "title":"Vaseline Intensive Care Deep Moisture Body Lotion(Long Moisturization For Healthy,Glowing Skin-600 ml",
      "image_path":"assets/images/constant/majano2.png",
      "waight":"700 ml",
      "price":"199",
      "lessPrice":"299",
      "less":"45"
    },
    {
      "title":"Vaseline Intensive Care Deep Moisture Body Lotion(Long Moisturization For Healthy,Glowing Skin-600 ml",
      "image_path":"assets/images/munchies.png",
      "waight":"200 ml",
      "price":"49",
      "lessPrice":"109",
      "less":"52"
    },
    {
      "title":"Vaseline Intensive Care Deep Moisture Body Lotion(Long Moisturization For Healthy,Glowing Skin-600 ml",
      "image_path":"assets/images/constant/dimonds.png",
      "waight":"700 ml",
      "price":"599",
      "lessPrice":"1249",
      "less":"65"
    },
    {
      "title":"Vaseline Intensive Care Deep Moisture Body Lotion(Long Moisturization For Healthy,Glowing Skin-600 ml",
      "image_path":"assets/images/munchies.png",
      "waight":"200 ml",
      "price":"49",
      "lessPrice":"109",
      "less":"52"
    },
  ];
  TextEditingController serch=TextEditingController();
  @override
  Widget build(BuildContext context) {
    final notifire=Provider.of<ColorNotifires>(context);
    return Scaffold(
      backgroundColor: notifire.boxBackgroundcolor,
      appBar: AppBar(
        backgroundColor: notifire.getbgcolor,
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: CustomSearchBox("Search for ata,dal,cocke,and more..",serch),
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 70),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 360,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        CustomProductType("Electronic ptoduct", productslist),
                        CustomProductType("Fresh Munchis", productslist2),
                        CustomProductType("Electronic ptoduct", productslist),
                        CustomProductType("Fresh Munchis", productslist2)
                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: Text("Best Product of the day".tr,style: CustomTheme.mostviewrating.copyWith(color: notifire.getwhiteblackcolor),),
                  ),
                  SizedBox(height: 5,),
                  Container(
                    height: 300,
                    child: ListView.builder(itemBuilder: (context,index){
                      return Padding(
                        padding: const EdgeInsets.all(5),
                        child: Stack(
                          children: [
                            Card(
                              child: SizedBox(
                                width: 200,
                                height: 270,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.network("https://i.pinimg.com/originals/9e/e0/ed/9ee0ed3fd1380ccd7ded429b56c1d8b3.jpg",fit: BoxFit.fill,),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 5,right: 5,bottom: 18,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(.2),
                                  borderRadius: BorderRadius.circular(10)
                                ),

                                height: 50,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Classic Product",style: CustomTheme.mostviewnight.copyWith(color: white),),
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    },itemCount: 8,scrollDirection: Axis.horizontal,),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    height: 360,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        CustomProductType("Electronic ptoduct", productslist),
                        CustomProductType("Fresh Munchis", productslist2),
                        CustomProductType("Electronic ptoduct", productslist),
                        CustomProductType("Fresh Munchis", productslist2)
                      ],
                    ),
                  ),
                  SizedBox(height: 10,)

                ],
              ),
            ),
          ),
          Positioned(left: 0,right: 0,bottom: 00,
              child: Container(
            height: 70,
                decoration: CustomTheme.topLeftRightBoxDecoration.copyWith(color: notifire.getbgcolor,),
                child: ListTile(
                  title: Text("Get FREE Delivery".tr,style: CustomTheme.mostviewhome.copyWith(color: notifire.getblueyellow,fontWeight: FontWeight.bold),),
                  leading: Icon(Icons.delivery_dining_outlined,color: notifire.getblueyellow,size: 30,),
                  subtitle: Text("On shopping product wroth at".tr+" ₹299".tr,style: CustomTheme.featuredsliderbeds.copyWith(color: notifire.getwhiteblackcolor),),
                ),
          ))
        ],
      ),
    );
  }
}
class CustomProductType extends StatelessWidget {
   CustomProductType(this.titleProduct,this.productslist);
  String titleProduct;
  List productslist=[];

  @override
  Widget build(BuildContext context) {
    final notifire=Provider.of<ColorNotifires>(context);

    Size size=MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 300,
        decoration: BoxDecoration(
          color: notifire.boxBackgroundcolor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(blurRadius: 4,color: notifire.getgreycolor)
          ]
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 5),
              child: Row(
                children: [
                  Text(titleProduct.toString().tr,style:CustomTheme.mostviewrating.copyWith(color: notifire.getwhiteblackcolor),),
                  Spacer(),
                  TextButton(onPressed: (){
                    Get.to(SeeAllProduct(productslist, titleProduct));
                  }, child: Text("See All".tr,style: CustomTheme.mostviewhome.copyWith(color: notifire.primeryColor),))
                ],
              ),
            ),
            Container(
              height: 280,
              child: ListView.builder(itemBuilder: (context,index){
                return VerticalProductCard(productslist[index]["image_path"], productslist[index]["title"], productslist[index]["waight"], productslist[index]["price"], productslist[index]["lessPrice"]);
              },itemCount: 3,scrollDirection: Axis.vertical,physics: NeverScrollableScrollPhysics(),),
            )
          ],
        ),
      ),
    );
  }
}

