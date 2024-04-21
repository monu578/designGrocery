import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unimart/customwidget/projecrColor.dart';

import '../utilis/customStyle.dart';
import '../view/shop/grocery/browse/shopByStore.dart';


class ShopByStore extends StatefulWidget {
   ShopByStore({super.key});

  @override
  State<ShopByStore> createState() => _ShopByStoreState();
}

class _ShopByStoreState extends State<ShopByStore> {
  List items=[
    {"bg_color":Colors.pink.withOpacity(.3),"title":"Gifting Store","image_path":"assets/images/store/gift.png"},
    {"bg_color":Colors.lightBlue.withOpacity(.3),"title":"Electronics Store","image_path":"assets/images/store/electronic.png"},
    {"bg_color":Colors.redAccent.withOpacity(.3),"title":"Beauty Store","image_path":"assets/images/store/beauty.png"},
    {"bg_color":Colors.pink.withOpacity(.3),"title":"Gifting Store","image_path":"assets/images/store/gift.png"},
    {"bg_color":Colors.lightBlue.withOpacity(.3),"title":"Electronics Store","image_path":"assets/images/store/electronic.png"},
    {"bg_color":Colors.redAccent.withOpacity(.3),"title":"Beauty Store","image_path":"assets/images/store/beauty.png"},
    {"bg_color":Colors.blue.withOpacity(.3),"title":"Toy Store","image_path":"assets/images/store/toy.png"},
    {"bg_color":Colors.green.withOpacity(.3),"title":"Stationery Store","image_path":"assets/images/store/stationery.png"},
    {"bg_color":CustomTheme.mostviewcolor.withOpacity(.3),"title":"Ice Cream Store","image_path":"assets/images/store/ice.png"},
    {"bg_color":Colors.blue.withOpacity(.3),"title":"Toy Store","image_path":"assets/images/store/toy.png"},
    {"bg_color":Colors.green.withOpacity(.3),"title":"Stationery Store","image_path":"assets/images/store/stationery.png"},
    {"bg_color":CustomTheme.mostviewcolor.withOpacity(.3),"title":"Ice Cream Store","image_path":"assets/images/store/ice.png"},


  ];
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


  @override
  Widget build(BuildContext context) {
    final notifires=Provider.of<ColorNotifires>(context);

    return SizedBox(
      height: 280,
      child: ListView.builder(itemBuilder: (context,index){
        int a=index*2;
        int b=index*2+1;
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>StoresWhithCaregory(productslist,items[a]["title"])));
              },
              child: Container(
                height: 140,
                width: 100,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0,right: 8),
                  child: Column(
                    children: [
                      Container(
                        height: 80,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: items[a]["bg_color"]
                        ),
                        child:Padding(
                          padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
                          child: Image.asset(items[a]["image_path"]),
                        ),
                      ),
                      SizedBox(height: 5,),
                      Wrap(children:[ Text(items[a]["title"],textAlign: TextAlign.center,style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),)])


                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>StoresWhithCaregory(productslist,items[b]["title"])));
              },
              child: Container(
                height: 140,
                width: 100,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0,right: 8),
                  child: Column(
                    children: [
                      Container(
                        height: 80,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: items[b]["bg_color"]
                        ),
                        child:Padding(
                          padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
                          child: Image.asset(items[b]["image_path"]),
                        ),
                      ),
                      SizedBox(height: 5,),
                      Wrap(children:[ Text(items[b]["title"],textAlign: TextAlign.center,style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),)])


                    ],
                  ),
                ),
              ),
            )
          ],
        );


      },
        itemCount: (items.length.toDouble()/2).toInt(),
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

