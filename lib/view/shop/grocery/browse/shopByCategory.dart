
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:unimart/customWidget/customProductDetails.dart';
import 'package:unimart/utilis/customStyle.dart';
import 'package:vertical_tabs_flutter/vertical_tabs.dart';

import '../../../../customWidget/commonWidgets.dart';
import '../../../../customwidget/projecrColor.dart';


class CategoryScreen extends StatefulWidget{
  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
  List productList=[];

  CategoryScreen(this.productList);
}

class _CategoryScreenState extends State<CategoryScreen> {
  List tabImages=[
    {"image_path":"assets/images/constant/breakfast.png","name":"BreakFast"},
    {"image_path":"assets/images/constant/colddrink.png","name":"ColdDrinks"},
    {"image_path":"assets/images/constant/munchies.png","name":"Munchies"},
    {"image_path":"assets/images/constant/munchies2.webp","name":"Best Munchies"},
    {"image_path":"assets/images/constant/breakfast.png","name":"BreakFast"},
    {"image_path":"assets/images/constant/colddrink.png","name":"ColdDrinks"},
    {"image_path":"assets/images/constant/munchies.png","name":"Munchies"},
    {"image_path":"assets/images/constant/munchies2.webp","name":"Best Munchies"},
    {"image_path":"assets/images/constant/breakfast.png","name":"BreakFast"},
    {"image_path":"assets/images/constant/colddrink.png","name":"ColdDrinks"},
  ];
  int crunntIndex=0;
  late List tabContant=[
    ContentOfTabs(BreakFast),
    ContentOfTabs(Coldrinks),
    ContentOfTabs(Munchies),
    ContentOfTabs(BestMunchies),
    ContentOfTabs(BreakFast),
    ContentOfTabs(Coldrinks),
    ContentOfTabs(Munchies),
    ContentOfTabs(BestMunchies),
    ContentOfTabs(BreakFast),
    ContentOfTabs(Coldrinks),
  ];
 late List BreakFast=[
    {"tabName":"Cereals","list":widget.productList},
    {"tabName":"Yogurt and Dairy","list":widget.productList},
    {"tabName":"Bakery and Breads","list":widget.productList},
    {"tabName":"Eggs","list":widget.productList},
    {"tabName":"Pancakes","list":widget.productList},
    {"tabName":"Coffee and Tea","list":widget.productList},
    {"tabName":"Sandwiches","list":widget.productList}
  ];
  late List Coldrinks=[
    {"tabName":"Cola","list":widget.productList},
    {"tabName":"Lemon-Lime Soda","list":widget.productList},
    {"tabName":"Root Beer","list":widget.productList},
    {"tabName":"Orange Soda","list":widget.productList},
    {"tabName":"Pepsi","list":widget.productList},
    {"tabName":"Energy Drinks","list":widget.productList},
    {"tabName":"Fanta","list":widget.productList}
  ];
  late List Munchies=[
    {"tabName":"Potato Chips","list":widget.productList},
    {"tabName":"Popcorn","list":widget.productList},
    {"tabName":"Pretzels","list":widget.productList},
    {"tabName":"Nuts","list":widget.productList},
    {"tabName":"Trail Mix","list":widget.productList},
    {"tabName":"Cookies","list":widget.productList},
    {"tabName":"Energy Bite","list":widget.productList}
  ];
  late List BestMunchies=[
    {"tabName":"Granola Bars","list":widget.productList},
    {"tabName":"Trail Mix","list":widget.productList},
    {"tabName":"Candy","list":widget.productList},
    {"tabName":"Nuts","list":widget.productList},
    {"tabName":"Sliced Cheese","list":widget.productList},
    {"tabName":"Marshmallows","list":widget.productList},
    {"tabName":"Chocolate","list":widget.productList}
  ];



  bool clickable=false;

  @override
  Widget build(BuildContext context) {
    final notifires=Provider.of<ColorNotifires>(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: notifires.boxBackgroundcolor,
        appBar: AppBar(
          scrolledUnderElevation: 4,
          elevation: 2,
          shadowColor: notifires.getgreycolor,
          backgroundColor: notifires.boxBackgroundcolor,
          iconTheme: IconThemeData(color: notifires.getgreycolor),
          title:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Vagetables & Fruits".tr,style: CustomTheme.mostviewtitle.copyWith(color: notifires.getwhiteblackcolor),),
              Text("319 product".tr,style: CustomTheme.smallSecondaryTextStyle.copyWith(color: notifires.getgreycolor,fontWeight: FontWeight.w700,fontSize: 13),)
            ],
          ),

          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: InkWell(

                  child: Icon(Icons.search,size: 26,)),
            ),

          ],

        ),
        body: Row(children: [
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
                        crunntIndex=index;
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // SizedBox(width: 5,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            AnimatedContainer(
                              width: crunntIndex==index?60:50,
                              height: crunntIndex==index?60:50,
                              duration: Duration(milliseconds: 600),
                              child: CircleAvatar(
                                backgroundColor: crunntIndex==index?notifires.secondrycolor.withOpacity(.8):white,
                                child: Padding(
                                  padding: const EdgeInsets.all(4),
                                  child: Center(
                                    child: Image.asset(
                                      tabImages[index]["image_path"].toString(),
                                    ),
                                  ),
                                  // child: Image.network("https://cdn2.iconfinder.com/data/icons/flat-style-svg-icons-part-1/512/users_group_people_friends-512.png",),
                                ),
                              ),
                            ),
                            SizedBox(height: 5,),
                            SizedBox(width: 70,
                                child: Text(tabImages[index]["name"].toString(),style: CustomTheme.mostviewbeds.copyWith(color:crunntIndex==index?notifires.getredYellow:notifires.getwhiteblackcolor,fontSize: crunntIndex==index?12:10),textAlign: TextAlign.center,))
                          ],
                        ),
                        Spacer(),
                        AnimatedContainer(
                          width:3.5,
                          curve: Curves.decelerate,
                          height:crunntIndex==index? 95:0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
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
          Expanded(child: Container(
            margin: EdgeInsets.only(left: 8,right: 8),
            child: tabContant.elementAt(crunntIndex),
          ))
        ],),
      ),
    );
  }
}

class ContentOfTabs extends StatefulWidget {
   ContentOfTabs(this.contentProductList);
  List contentProductList=[];

  @override
  State<ContentOfTabs> createState() => _ContentOfTabsState();
}
class _ContentOfTabsState extends State<ContentOfTabs> {
  int selectIndex=0;
  @override
  Widget build(BuildContext context) {
    final notifires=Provider.of<ColorNotifires>(context);

    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(top: 50),
          child: ListView.builder(itemBuilder: (context,index){
            List contentList=widget.contentProductList[index]["list"];
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
                          return ProdoctsDetails(contentList);
                          },
                          backgroundColor: Colors.transparent,
                          isScrollControlled: true,

                        );
                      },
                        child: ProductCard(contentList[a]["image_path"],contentList[a]["title"],contentList[a]["waight"],contentList[a]["price"],contentList[a]["lessPrice"])),
                  ),
                  SizedBox(width: 7,),
                  Expanded(
                    child:  GestureDetector(
                        onTap: (){
                          showModalBottomSheet(context: context, builder: (builder){
                            return ProdoctsDetails(contentList);
                            },
                            backgroundColor: Colors.transparent,
                            isScrollControlled: true,
                          );
                        },
                        child: ProductCard(contentList[b]["image_path"],contentList[b]["title"],contentList[b]["waight"],contentList[b]["price"],contentList[b]["lessPrice"])),
                  )
                ],
              ),
            );
          },
            itemCount:4,
            // (widget.contentProductList.length.toDouble()/2).toInt(),
            scrollDirection: Axis.vertical,
          ),
        ),
        Positioned(
          left: 0,right: 0,top: 5,
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
                    child: Center(child: Text(widget.contentProductList[index]["tabName"],style: CustomTheme.mostviewhome.copyWith(color: selectIndex==index?notifires.getblack:notifires.getwhiteblackcolor),),),
                  ),
                ),
              );
            },itemCount: widget.contentProductList.length,scrollDirection: Axis.horizontal,),
          ),
        ),
      ],
    );
  }
}










