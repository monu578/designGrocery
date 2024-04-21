

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:unimart/utilis/customStyle.dart';

import '../../../../customWidget/commonWidgets.dart';
import '../../../../customWidget/customProductDetails.dart';
import '../../../../customwidget/projecrColor.dart';




class StoresWhithCaregory extends StatefulWidget {
  StoresWhithCaregory(this.productslist,this.storeName);
  List productslist =[];
  String storeName;

  @override
  State<StoresWhithCaregory> createState() => _StoresWhithCaregoryState();
}
class _StoresWhithCaregoryState extends State<StoresWhithCaregory> {
  @override
  Widget build(BuildContext context) {
    final notifires=Provider.of<ColorNotifires>(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: notifires.boxBackgroundcolor,
        body: Stack(
          // physics: NeverScrollableScrollPhysics(),

          children: [

            Positioned(
              left: 0,top: 0,right: 0,
              child: Container(
                width: double.maxFinite,
                height: 160,
                child: Stack(
                  children: [

                    Positioned(left: 0,right: 0,
                        child: Image.asset("assets/images/img3.jpg",fit: BoxFit.fill,)),
                    Positioned(
                      left: 15,top: 15,
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: CircleAvatar(
                          backgroundColor: notifires.getbgcolor.withOpacity(.5),
                          child: Center(
                            child: Icon(Icons.arrow_back,color: notifires.getwhiteblackcolor,),
                          ),),
                      ),
                    ),
                    Positioned(
                      right: 15,top: 15,
                      child: CircleAvatar(
                        backgroundColor: notifires.getbgcolor.withOpacity(.5),
                        child: Center(
                          child: Icon(Icons.search,color: notifires.getwhiteblackcolor,),
                        ),),
                    ),
                    Positioned(left: 0,bottom: 15,right: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(widget.storeName.tr,style: CustomTheme.bigSecondaryTextStyle.copyWith(color: notifires.getwhiteblackcolor,fontWeight: FontWeight.w800,fontSize: 35,letterSpacing: 1),),
                          ],
                        ))
                  ],
                ),

              ),
            ),
            Container(margin: EdgeInsets.only(top: 160),
                child: StoreCetagory(widget.productslist)),

          ],
        ),
      ),
    );
  }
}

class StoreCetagory extends StatefulWidget {
   StoreCetagory(this.contentProductList);
  List contentProductList=[];

  @override
  State<StoreCetagory> createState() => _StoreCetagoryState();
}
class _StoreCetagoryState extends State<StoreCetagory> {
  int selectIndex=0;
  late List ContantPages=[
    ContantData(brandName),
    ContantData(brandName),
    ContantData(brandName),
    ContantData(brandName),
    ContantData(brandName),
    ContantData(brandName),
    ContantData(brandName),
    ContantData(brandName),
    ContantData(brandName),
    ContantData(brandName),
  ];
  List productslist=[
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

  ];
  List tabImages=[
    {"path":"assets/images/constant/earbuds.png","name":"Earbuds & Headsets"},
    {"path":"assets/images/constant/mouse.png","name":"Computer Accessories"},
    {"path":"assets/images/constant/trimmers.png","name":"Trimmers"},
    {"path":"assets/images/constant/iron.png","name":"Home Appliances"},
    {"path":"assets/images/constant/smartwatch.png","name":"Smart Watches"},
    {"path":"assets/images/constant/extension.png","name":"Extension Cables"},
    {"path":"assets/images/constant/earbuds.png","name":"Earbuds & Headsets"},
    {"path":"assets/images/constant/mouse.png","name":"Computer Accessories"},
    {"path":"assets/images/constant/trimmers.png","name":"Trimmers"},
    {"path":"assets/images/constant/iron.png","name":"Home Appliances"},

  ];
 late List brandName=[
    {"brandName":"BoAt","list":productslist},
    {"brandName":"Nu Republic","list":widget.contentProductList},
    {"brandName":"Portronics","list":productslist},
    {"brandName":"Noise","list":widget.contentProductList},
    {"brandName":"Hammer","list":productslist},
    {"brandName":"Ambrane","list":widget.contentProductList},
    {"brandName":"Mivi","list":productslist},
  ];
  
  
  @override
  Widget build(BuildContext context) {
    final notifires=Provider.of<ColorNotifires>(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10,bottom: 10),
          child: Container(
            decoration: BoxDecoration(
                color: notifires.mostviewcolor.withOpacity(.4),
                borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10))
            ),
            width: 80,
            // height: MediaQuery.of(context).size.height,
            child: ListView.builder(itemBuilder: (itemBuilder,index){
              return Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10),
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      selectIndex=index;
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 5,),
                      Column(
                        children: [
                          AnimatedContainer(
                            width: selectIndex==index?65:50,
                            height: selectIndex==index?70:50,
                            duration: Duration(milliseconds: 600),
                            child: CircleAvatar(
                              backgroundColor: selectIndex==index?notifires.getredYellow.withOpacity(.8):notifires.getgreycolor,
                              child: Padding(
                                padding: const EdgeInsets.all(4),
                                child: Center(
                                  child: Image.asset(
                                    tabImages[index]["path"].toString(),
                                  ),
                                ),
                                // child: Image.network("https://cdn2.iconfinder.com/data/icons/flat-style-svg-icons-part-1/512/users_group_people_friends-512.png",),
                              ),
                            ),
                          ),
                          SizedBox(height: 5,),
                          SizedBox(width: 70,
                              child: Text(tabImages[index]["name"].toString(),style: CustomTheme.mostviewbeds.copyWith(color:selectIndex==index?notifires.getredYellow:notifires.getwhiteblackcolor,fontSize: selectIndex==index?12:10),textAlign: TextAlign.center,))
                        ],
                      ),
                      Spacer(),
                      AnimatedContainer(
                        width:3.5,
                        curve: Curves.decelerate,
                        height:selectIndex==index? 110:0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color: notifires.getredYellow
                        ),
                        duration: Duration(milliseconds: 700),)
                    ],
                  ),
                ),
              );
            },itemCount: tabImages.length,scrollDirection: Axis.vertical,),
          ),
        ),
        Expanded(child: ContantPages.elementAt(selectIndex))
      ],
    );
  }
}


class ContantData extends StatefulWidget {
   ContantData(this.contentProductList);
  List contentProductList=[];

  @override
  State<ContantData> createState() => _ContantDataState();
}
class _ContantDataState extends State<ContantData> {
  int selectIndex=0;
  @override
  Widget build(BuildContext context) {
    final notifires=Provider.of<ColorNotifires>(context);

    return Container(
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 50),
            child: ListView.builder(itemBuilder: (context,index){
              List contentValueList=widget.contentProductList[selectIndex]["list"];
              int a=index*2;
              int b=index*2+1;
              return Padding(
                padding: const EdgeInsets.only(top: 10,left: 8,right: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                          onTap: (){
                            showModalBottomSheet(context: context, builder: (builder){
                              return ProdoctsDetails(contentValueList);
                            },
                              backgroundColor: Colors.transparent,
                              isScrollControlled: true,

                            );
                          },
                          child: ProductCard(contentValueList[a]["image_path"],contentValueList[a]["title"],contentValueList[a]["waight"],contentValueList[a]["price"],contentValueList[a]["lessPrice"])),
                    ),
                    SizedBox(width: 7,),
                    Expanded(
                      child:  InkWell(
                          onTap: (){
                            showModalBottomSheet(context: context, builder: (builder){
                              return ProdoctsDetails(contentValueList);
                            },
                              backgroundColor: Colors.transparent,
                              isScrollControlled: true,
                            );
                          },
                          child: ProductCard(contentValueList[b]["image_path"],contentValueList[b]["title"],contentValueList[b]["waight"],contentValueList[b]["price"],contentValueList[b]["lessPrice"])),
                    )
                  ],
                ),
              );
            },
              itemCount:6,
              // (widget.contentProductList.length.toDouble()/2).toInt(),
              scrollDirection: Axis.vertical,
            ),
          ),
          Positioned(
            left: 5,right: 0,top: 5,
            child: Container(
              height: 50,
              child: ListView.builder(itemBuilder: (itemBuilder,index){
                return Padding(
                  padding: const EdgeInsets.all(5),
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        selectIndex=index;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: selectIndex==index?notifires.primeryColor:notifires.getbgcolor,
                          border: Border.all(color: selectIndex==index?notifires.primeryColor:notifires.getgreycolor,width: 2)
                      ),
                      child: Center(child: Text(widget.contentProductList[index]["brandName"],style: CustomTheme.mostviewhome.copyWith(color: selectIndex==index?notifires.getblack:notifires.getwhiteblackcolor),),),
                    ),
                  ),
                );
              },itemCount: widget.contentProductList.length,scrollDirection: Axis.horizontal,),
            ),
          ),

        ],
      ),
    );
  }
}











