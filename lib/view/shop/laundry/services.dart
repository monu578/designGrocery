

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:unimart/controller/homeController.dart';
import 'package:unimart/customwidget/commonWidgets.dart';
import 'package:unimart/helper/customAppBar.dart';
import 'package:unimart/utilis/customStyle.dart';
import 'package:unimart/view/cart/laundry/checkOutLaundry.dart';

import '../../../customwidget/projecrColor.dart';

class ServicesOfItems extends StatefulWidget {
  ServicesOfItems(this.title);
  String title;

  @override
  State<ServicesOfItems> createState() => _ServicesOfItemsState();
}

class _ServicesOfItemsState extends State<ServicesOfItems> {
  HomeController controller=Get.put(HomeController());
  List items=[{"Imagelink":"http://pluspng.com/img-png/blue-tshirt-png-t-shirt-png-image-2000.png","price":"20","name":"T Shirt"},
    {"Imagelink":"http://www.pngall.com/wp-content/uploads/5/Shirt-PNG-Images.png","price":"30","name":"Shirt"},
    {"Imagelink":"https://pluspng.com/img-png/trousers-png-hd-trouser-free-png-image-1500.png","price":"10","name":"Pants"},
    {"Imagelink":"http://clipart-library.com/new_gallery/215-2158507_regular-denim-shorts-blue-bermuda-shorts.png","price":"5","name":"Shorts"},
    {"Imagelink":"https://i.pinimg.com/originals/03/a1/18/03a118b485d71284ad1ae97a6c21d6b0.png","price":"25","name":"Ladies Top"},
    {"Imagelink":"https://i.pinimg.com/originals/c8/dc/40/c8dc40c0a7c1b6fcb0860cb4da4c92e0.png","price":"25","name":"UniForm"},
    {"Imagelink":"https://www.pngmart.com/files/6/Trousers-PNG-Free-Download.png","price":"45","name":"Trousers"},
    {"Imagelink":"https://www.pngarts.com/files/6/Men-Jeans-Transparent-Image.png","price":"30","name":"Jeans"},
    {"Imagelink":"https://clipground.com/images/dress-png-4.png","price":"10","name":"Kids Dress"},
    {"Imagelink":"https://editzstock.com/wp-content/uploads/2022/05/Headcut-groom-pmg-3.png","price":"20","name":"Kurta"},
    {"Imagelink":"https://www.pngall.com/wp-content/uploads/4/Skirt-PNG-Download-Image.png","price":"5","name":"Skirt"},
    {"Imagelink":"http://pngimg.com/uploads/suit/suit_PNG93227.png","price":"30","name":"Safari Suit"},
    {"Imagelink":"https://srilankanroots.com/wp-content/uploads/Lungi-L001-768x1024.png","price":"25","name":"Lungi"},
    {"Imagelink":"https://i.pinimg.com/originals/4c/2a/3d/4c2a3d22c9a13bd93c9e738c003b8920.png","price":"35","name":"Nighty"},


  ];
  List items2=[
    {"Imagelink":"http://pluspng.com/img-png/blue-tshirt-png-t-shirt-png-image-2000.png","price":"20","name":"T Shirt"},
    {"Imagelink":"https://www.pngall.com/wp-content/uploads/4/Skirt-PNG-Download-Image.png","price":"5","name":"Skirt"},
    {"Imagelink":"http://pngimg.com/uploads/suit/suit_PNG93227.png","price":"30","name":"Safari Suit"},
    {"Imagelink":"https://srilankanroots.com/wp-content/uploads/Lungi-L001-768x1024.png","price":"25","name":"Lungi"},
    {"Imagelink":"https://i.pinimg.com/originals/4c/2a/3d/4c2a3d22c9a13bd93c9e738c003b8920.png","price":"35","name":"Nighty"},
    {"Imagelink":"http://pngimg.com/uploads/suit/suit_PNG93227.png","price":"30","name":"Safari Suit"},
    {"Imagelink":"https://static.aadi.com.bd/__sized__/products/Lungi-crop-c0-5__0-5-510x510.png","price":"25","name":"Lungi"},
    {"Imagelink":"https://i.pinimg.com/originals/4c/2a/3d/4c2a3d22c9a13bd93c9e738c003b8920.png","price":"35","name":"Nighty"},
    {"Imagelink":"http://www.pngall.com/wp-content/uploads/5/Shirt-PNG-Images.png","price":"30","name":"Shirt"},
    {"Imagelink":"https://pluspng.com/img-png/trousers-png-hd-trouser-free-png-image-1500.png","price":"10","name":"Pants"},
    {"Imagelink":"https://www.pngarts.com/files/6/Men-Jeans-Transparent-Image.png","price":"30","name":"Jeans"},
    {"Imagelink":"https://clipground.com/images/dress-png-4.png","price":"10","name":"Kids Dress"},
    {"Imagelink":"https://editzstock.com/wp-content/uploads/2022/05/Headcut-groom-pmg-3.png","price":"20","name":"Kurta"},
    {"Imagelink":"https://www.pngall.com/wp-content/uploads/4/Skirt-PNG-Download-Image.png","price":"5","name":"Skirt"},



  ];
  List items3=[
    {"Imagelink":"http://clipart-library.com/new_gallery/215-2158507_regular-denim-shorts-blue-bermuda-shorts.png","price":"5","name":"Shorts"},
    {"Imagelink":"https://i.pinimg.com/originals/03/a1/18/03a118b485d71284ad1ae97a6c21d6b0.png","price":"25","name":"Ladies Top"},
    {"Imagelink":"https://i.pinimg.com/originals/c8/dc/40/c8dc40c0a7c1b6fcb0860cb4da4c92e0.png","price":"25","name":"UniForm"},
    {"Imagelink":"https://www.pngmart.com/files/6/Trousers-PNG-Free-Download.png","price":"45","name":"Trousers"},
    {"Imagelink":"http://pluspng.com/img-png/blue-tshirt-png-t-shirt-png-image-2000.png","price":"20","name":"T Shirt"},
    {"Imagelink":"https://www.pngall.com/wp-content/uploads/4/Skirt-PNG-Download-Image.png","price":"5","name":"Skirt"},
    {"Imagelink":"http://pngimg.com/uploads/suit/suit_PNG93227.png","price":"30","name":"Safari Suit"},
    {"Imagelink":"https://srilankanroots.com/wp-content/uploads/Lungi-L001-768x1024.png","price":"25","name":"Lungi"},
    {"Imagelink":"https://i.pinimg.com/originals/4c/2a/3d/4c2a3d22c9a13bd93c9e738c003b8920.png","price":"35","name":"Nighty"},
    {"Imagelink":"http://www.pngall.com/wp-content/uploads/5/Shirt-PNG-Images.png","price":"30","name":"Shirt"},
    {"Imagelink":"https://pluspng.com/img-png/trousers-png-hd-trouser-free-png-image-1500.png","price":"10","name":"Pants"},
    {"Imagelink":"https://www.pngarts.com/files/6/Men-Jeans-Transparent-Image.png","price":"30","name":"Jeans"},
    {"Imagelink":"https://clipground.com/images/dress-png-4.png","price":"10","name":"Kids Dress"},
    {"Imagelink":"https://editzstock.com/wp-content/uploads/2022/05/Headcut-groom-pmg-3.png","price":"20","name":"Kurta"},



  ];
  List items4=[
    {"Imagelink":"https://www.pngmart.com/files/6/Trousers-PNG-Free-Download.png","price":"45","name":"Trousers"},
    {"Imagelink":"https://www.pngarts.com/files/6/Men-Jeans-Transparent-Image.png","price":"30","name":"Jeans"},
    {"Imagelink":"https://clipground.com/images/dress-png-4.png","price":"10","name":"Kids Dress"},
    {"Imagelink":"https://pluspng.com/img-png/trousers-png-hd-trouser-free-png-image-1500.png","price":"10","name":"Pants"},
    {"Imagelink":"http://clipart-library.com/new_gallery/215-2158507_regular-denim-shorts-blue-bermuda-shorts.png","price":"5","name":"Shorts"},
    {"Imagelink":"https://i.pinimg.com/originals/03/a1/18/03a118b485d71284ad1ae97a6c21d6b0.png","price":"25","name":"Ladies Top"},
    {"Imagelink":"https://i.pinimg.com/originals/c8/dc/40/c8dc40c0a7c1b6fcb0860cb4da4c92e0.png","price":"25","name":"UniForm"},
    {"Imagelink":"https://editzstock.com/wp-content/uploads/2022/05/Headcut-groom-pmg-3.png","price":"20","name":"Kurta"},
    {"Imagelink":"https://www.pngall.com/wp-content/uploads/4/Skirt-PNG-Download-Image.png","price":"5","name":"Skirt"},
    {"Imagelink":"http://pngimg.com/uploads/suit/suit_PNG93227.png","price":"30","name":"Safari Suit"},
    {"Imagelink":"https://srilankanroots.com/wp-content/uploads/Lungi-L001-768x1024.png","price":"25","name":"Lungi"},
    {"Imagelink":"https://i.pinimg.com/originals/4c/2a/3d/4c2a3d22c9a13bd93c9e738c003b8920.png","price":"35","name":"Nighty"},
    {"Imagelink":"http://pluspng.com/img-png/blue-tshirt-png-t-shirt-png-image-2000.png","price":"20","name":"T Shirt"},
    {"Imagelink":"http://www.pngall.com/wp-content/uploads/5/Shirt-PNG-Images.png","price":"30","name":"Shirt"},




  ];
 late List typeOfProduct=[{"type":"Wash & Fold","link":"https://pluspng.com/img-png/folded-laundry-png--350.png",},
   {"type":"Dry Cleaning","link":"https://luluandlattes.com/wp-content/uploads/2016/07/clothes_basket.png",},
   {"type":"Specialty Services","link":"https://jf-staeulalia.pt/img/other/12/collection-free-laundry-cliparts.png",},
   {"type":"Bulk Services","link":"https://clipground.com/images/laundry-images-png-8.png",},
   {"type":"Uniform Cleaning","link":"https://stayhere.ph/wp-content/uploads/2020/01/cleanin.png",},
   {"type":"Mattress Cleaning","link":"https://jf-staeulalia.pt/img/other/12/collection-free-laundry-cliparts.png",},
   {"type":"Dry Cleaning","link":"https://luluandlattes.com/wp-content/uploads/2016/07/clothes_basket.png",},
   {"type":"Specialty Services","link":"https://jf-staeulalia.pt/img/other/12/collection-free-laundry-cliparts.png",},
   {"type":"Bulk Services","link":"https://clipground.com/images/laundry-images-png-8.png",},
   {"type":"Uniform Cleaning","link":"https://stayhere.ph/wp-content/uploads/2020/01/cleanin.png",},
 ];
  late List SubcategoryChips1=[
    {"type":"Regular Clothes","list":items,},
    {"type":"Gentle Fabrics","list":items2,},
    {"type":"Specialty Items","list":items4,},
  ];
 late List SubcategoryChips2=[
    {"type":"Suits and Formal Wear","list":items2,},
    {"type":"Dresses and Gowns","list":items3,},
    {"type":"Winter Coats","list":items,},
  ];
  late List SubcategoryChips3=[
    {"type":"Stain Removal","list":items4,},
    {"type":"Leather Cleaning","list":items3,},
    {"type":"Wedding Dress","list":items,},
  ];
  late List SubcategoryChips4=[
    {"type":"Commercial Laundry","list":items2,},
    {"type":"Hospitality Services","list":items,},
    {"type":"Event Linens","list":items3,},
  ];

  late List views=[
    ContaintData(SubcategoryChips1),
    ContaintData(SubcategoryChips2),
    ContaintData(SubcategoryChips3),
    ContaintData(SubcategoryChips4),
    ContaintData(SubcategoryChips1),
    ContaintData(SubcategoryChips3),
    ContaintData(SubcategoryChips2),
    ContaintData(SubcategoryChips3),
    ContaintData(SubcategoryChips4),
    ContaintData(SubcategoryChips1),
    ContaintData(SubcategoryChips4),
  ];
 int selectIndex=0;
  @override
  Widget build(BuildContext context) {
    final notifires=Provider.of<ColorNotifires>(context);
    Size size =MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: notifires.boxBackgroundcolor,
      appBar: AppBar(iconTheme: IconThemeData(color: notifires.getgreycolor),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.title,style: CustomTheme.mostviewtitle.copyWith(color: notifires.getwhiteblackcolor),),
            Text("Total Product 30",style: CustomTheme.mostviewhome.copyWith(color: notifires.getgreycolor),)
          ],
        ),
        elevation: 5,
        backgroundColor: notifires.getbgcolor,
        shadowColor: notifires.getgreycolor,),
      body: Stack(
        children: [
          Row(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 75),
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
                                        child: Image.network(
                                          typeOfProduct[index]["link"],
                                        ),
                                      ),
                                      // child: Image.network("https://cdn2.iconfinder.com/data/icons/flat-style-svg-icons-part-1/512/users_group_people_friends-512.png",),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5,),
                                SizedBox(width: 70,
                                    child: Text(typeOfProduct[index]["type"].toString(),style: CustomTheme.mostviewbeds.copyWith(color:selectIndex==index?notifires.getredYellow:notifires.getwhiteblackcolor,fontSize: selectIndex==index?12:10),textAlign: TextAlign.center,))
                              ],
                            ),
                            Spacer(),
                            AnimatedContainer(
                              width:3.5,
                              curve: Curves.decelerate,
                              height:selectIndex==index? 95:0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: notifires.getredYellow
                              ),
                              duration: Duration(milliseconds: 700),)
                          ],
                        ),
                      ),
                    );
                  },itemCount: typeOfProduct.length,scrollDirection: Axis.vertical,),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8,right: 8,top: 5,bottom: 75),
                  child: views.elementAt(selectIndex),
                ),
              )

            ],
          ),
          Positioned(
            left: 0,right: 0,bottom: 0,
              child: Container(
                height: 70,color: notifires.getbgcolor.withOpacity(1.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Total Price",style: CustomTheme.mostviewtitle.copyWith(color: notifires.getwhiteblackcolor),),
                        Obx(() =>  Text("Total Items : "+controller.items.value.toString(),style: CustomTheme.mostviewhome.copyWith(color: notifires.getgreycolor),)
                        )
                        ],
                      ),
                      SizedBox(width: 30,),
                      Obx(() =>  Text("\$ "+controller.totalAmount.value.toString(),style: CustomTheme.mostviewtitle.copyWith(color: notifires.getredYellow,fontSize: 25),),),
                      SizedBox(width: 50,),
                      Expanded(child: ButtonsCustom("CheckOut", () {
                        Get.to(CheckOutLaundry(IconButton(onPressed: (){
                          Get.back();
                        },icon: Icon(Icons.arrow_back,color: notifires.getgreycolor,),)));
                      }))
                    ],
                  ),
                ),
              ))
        ],
      ),

    );
  }
}

class ContaintData extends StatefulWidget {
  ContaintData(this.items);
  List items=[];

  @override
  State<ContaintData> createState() => _ContaintDataState();
}

class _ContaintDataState extends State<ContaintData> {
   int selectIndex=0;
  @override
  Widget build(BuildContext context) {
    final notifires=Provider.of<ColorNotifires>(context);

    return Stack(
      children: [
        Positioned(
          left: 0,right: 0,top: 0,
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
                    child: Center(child: Text(widget.items[index]["type"],style: CustomTheme.mostviewhome.copyWith(color: selectIndex==index?notifires.getblack:notifires.getwhiteblackcolor),),),
                  ),
                ),
              );
            },itemCount: widget.items.length,scrollDirection: Axis.horizontal,),
          ),
        ),
        Positioned(
          top: 50,left: 0,right: 0,bottom: 0,
          child: ListView.builder(itemBuilder: (itemBuilder,index){
            List ItemsValue=widget.items[selectIndex]["list"];

            // lengths=ItemsValues.length;
           return LaundryProductCard(ItemsValue[index]["name"].toString(), ItemsValue[index]["price"], ItemsValue[index]["Imagelink"]);
          },itemCount: 9,scrollDirection: Axis.vertical,),
        ),
      ],
    );
  }
}

