import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unimart/customwidget/projecrColor.dart';
import '../utilis/customStyle.dart';
import '../view/shop/grocery/browse/shopByCategory.dart';


class ShopByCategory extends StatelessWidget {
  List imagelist=[
    {"tit":"Vegetables & Fruits","image_path":"assets/images/fruits.png"},
    {"tit":"Dairy & Breakfast","image_path":"assets/images/breakfast.png"},
    {"tit":"Munchies","image_path":"assets/images/munchies.png"},
    {"tit":"Cold Drinks","image_path":"assets/images/colddrink.png"},
    {"tit":"Dairy & Breakfast","image_path":"assets/images/breakfast.png"},
    {"tit":"Munchies","image_path":"assets/images/munchies.png"},
    {"tit":"Cold Drinks","image_path":"assets/images/colddrink.png"},
    {"tit":"Dairy & Breakfast","image_path":"assets/images/breakfast.png"},
    {"tit":"Vegetables & Fruits","image_path":"assets/images/fruits.png"},
    {"tit":"Dairy & Breakfast","image_path":"assets/images/breakfast.png"},
    {"tit":"Cold Drinks","image_path":"assets/images/colddrink.png"},
    {"tit":"Dairy & Breakfast","image_path":"assets/images/breakfast.png"},
    {"tit":"Dairy & Breakfast","image_path":"assets/images/breakfast.png"},
    {"tit":"Cold Drinks","image_path":"assets/images/colddrink.png"},
    {"tit":"Dairy & Breakfast","image_path":"assets/images/breakfast.png"},
    {"tit":"Cold Drinks","image_path":"assets/images/colddrink.png"},
    {"tit":"Dairy & Breakfast","image_path":"assets/images/breakfast.png"},
    {"tit":"Vegetables & Fruits","image_path":"assets/images/fruits.png"},
    {"tit":"Dairy & Breakfast","image_path":"assets/images/breakfast.png"},
    {"tit":"Cold Drinks","image_path":"assets/images/colddrink.png"},
  ];
  List productslist=[
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
  ShopByCategory(this.scrollPhysics);
  ScrollPhysics scrollPhysics;
  @override
  Widget build(BuildContext context) {
    final notifires=Provider.of<ColorNotifires>(context);

    final Size size=MediaQuery.of(context).size;
    return Container(
      width: size.width,
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 100,
              mainAxisExtent: 130,
              childAspectRatio: .6,
              crossAxisSpacing: 20,
              mainAxisSpacing: 10),
          itemCount: imagelist.length,
          physics: scrollPhysics,
          itemBuilder: (BuildContext ctx, index) {

            return GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoryScreen(productslist)));
              },
              child: Container(
                height: 180,width: size.width/4,
                decoration: BoxDecoration(
                  // color: Colors.red.shade200,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        height: 80,
                        width: size.width/4,
                        decoration:BoxDecoration(
                          // color: Colors.red.shade200,
                            borderRadius: BorderRadius.circular(10),
                            color: mostviewcolor.withOpacity(0.3)
                        ) ,
                        child: Container(
                            margin: EdgeInsets.all(10),
                            child: Image.asset(imagelist[index]["image_path"]))),
                    SizedBox(height: 5,),
                    Wrap(children:[ Text(imagelist[index]["tit"],textAlign: TextAlign.center,style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),)])

                  ],
                ),
              ),
            );
          }),
    );
  }
}
