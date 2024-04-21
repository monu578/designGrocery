import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:provider/provider.dart';
import 'package:unimart/controller/homeController.dart';
import 'package:unimart/customwidget/projecrColor.dart';
import 'package:unimart/utilis/customStyle.dart';
import 'package:unimart/utilis/fontstyleModel.dart';

class ProductCard extends StatefulWidget {
  String? product_title,waightOfProduct,price,lessPrice;
  String? image_path;


  ProductCard(@required this.image_path, @required this.product_title,@required this.waightOfProduct,
      @required this.price,@required this.lessPrice);

  @override
  State<ProductCard> createState() => _ProductCardState();
}
class _ProductCardState extends State<ProductCard> {
  bool click=false;
  int quantity=1;

  @override
  Widget build(BuildContext context) {
    final notifires=Provider.of<ColorNotifires>(context);

    final Size size =MediaQuery.of(context).size;
    return Card(
      borderOnForeground: true,
      elevation: 2,
      color: notifires.getbgcolor,
      child: Container(
        // padding: EdgeInsets.only(left: 5,right: 5),
        height: 290,
        width: size.width/2.2,
        decoration:BoxDecoration(
          color: notifires.getbgcolor,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 140,
              width: size.width/2.2,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: CustomTheme.mostviewcolor.withOpacity(.1),

              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                  child: Image.asset(widget.image_path.toString())),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(width:size.width/2.2 ,
                child: Wrap(children: [
                  Align(
                    alignment: AlignmentDirectional.topStart,
                      child: Text(widget.product_title.toString(),maxLines: 2,style: CustomTheme.hexagonTitleTextStyle.copyWith(fontWeight: FontWeight.w700,fontSize: 15,color: notifires.getwhiteblackcolor),))
                ],),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Align(alignment: AlignmentDirectional.topStart,
                child: Text(widget.waightOfProduct.toString(),style: CustomTheme.smallCrousalTextStyle.copyWith(fontSize: 11,color: notifires.getwhiteblackcolor),),),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text("₹"+widget.price.toString(),style: CustomTheme.smallSecondaryTextStyle.copyWith(fontSize: 15,fontWeight: FontWeight.bold,color: notifires.getwhiteblackcolor),),
                      Text("₹"+widget.lessPrice.toString(),style: CustomTheme.smallSecondaryTextStyle.copyWith(fontSize: 15,color:notifires.getgreycolor,decoration: TextDecoration.lineThrough,),),

                    ],
                  ),
                  Expanded(child: Container()),
                  AddButton("ADD",Colors.greenAccent.shade200)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
class AddButton extends StatefulWidget {
  AddButton(this.text,this.color);
  String text;
  Color? color;

  @override
  State<AddButton> createState() => _AddButtonState();
}

class _AddButtonState extends State<AddButton> {
  bool click=false;
  int quantity=1;
  @override
  Widget build(BuildContext context) {
    final notifires=Provider.of<ColorNotifires>(context);

    final Size size=MediaQuery.of(context).size;
    return SizedBox(
      height: 35,
      child: OutlinedButton(onPressed: (){
        setState(() {
          click=true;
        });
      },
        style: OutlinedButton.styleFrom(padding: EdgeInsets.zero,backgroundColor: notifires.primeryColor,shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(color: notifires.primeryColor,width: 2)
        )),
        child: click==true?Container(
          height: 40,
          width: 80,
          decoration: ShapeDecoration(
              color: notifires.primeryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              )
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: IconButton(onPressed: (){
                  setState(() {
                    quantity==1?click=false:quantity--;
                  });
                }, icon: Icon(CupertinoIcons.minus,size: 13,color: white,)),
              ),

              Expanded(child: Text("$quantity",style: CustomTheme.smallSecondaryTextStyle.copyWith(color: white,fontWeight: FontWeight.bold,fontSize: 16),textAlign: TextAlign.center,)),
              Expanded(
                child: IconButton(onPressed: (){
                  setState(() {
                    quantity++;
                  });
                }, icon: Icon(CupertinoIcons.add,size: 13,color: white,)),
              ),

            ],
          ),
        ):
        Padding(
          padding: const EdgeInsets.only(left: 15,right: 15),
          child: Text(widget.text.tr,style: CustomTheme.smallSecondaryTextStyle.copyWith(fontWeight: FontWeight.w700,color: white,),),
        ),
      ),
    );
  }
}
class TabItemContainer extends StatelessWidget {
   TabItemContainer(this.value);
   var value;
  @override
  Widget build(BuildContext context) {
    final notifires=Provider.of<ColorNotifires>(context);

    return Container(
      height: 40,width: 90,
      decoration: ShapeDecoration(
        color: notifires.primeryColor.withOpacity(0.1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(width: 1.5,color: notifires.getgreycolor)
        ),

        ),
      child:Center(
        child: Text(value.toString().tr,style: CustomTheme.smallSecondaryTextStyle.copyWith(color: notifires.primeryColor,fontWeight: FontWeight.w700,fontSize: 14)),
      ) ,
    );
  }
}
class CustomSearchBox extends StatelessWidget {
   CustomSearchBox(@required this.text,@required this.controller,);
   var text;
   TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width:MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(12),
        // boxShadow: CustomTheme.boxShadow
      ),
      child: Center(
        child: TextField(
          controller: controller,
          decoration: InputDecoration(

              hintStyle: TextStyle(
                  color: grey,fontFamily: FontStyles.Medium
              ),
              suffixIcon: Container(
                width: 40,
                child: Row(
                  children: [
                    Container(height: 40,width: 2,color: greyShade300,),
                    SizedBox(width: 10,),
                    Icon(Icons.mic),
                  ],
                ),
              ),
              prefixIcon: Icon(CupertinoIcons.search),
              hintText: text.toString().tr,
              contentPadding: EdgeInsets.all(10),
              // border: InputBorder.none
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: greyShade300,width: 2),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: greyShade300,width: 2),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: greyShade300,width: 2),
            )
          ),
        ),
      ),
    );
  }
}
class CustomSearchBoxWithScreen extends StatelessWidget {
  final FocusNode _focusNode;
  CustomSearchBoxWithScreen(this.text,this.ontap,this._focusNode);
  var text;
  VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width:MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(12),
        // boxShadow: CustomTheme.boxShadow
      ),
      child: Center(
        child: TextField(
          onTap: ontap,
          focusNode: _focusNode,
          decoration: InputDecoration(

              hintStyle: TextStyle(
                  color: grey,fontFamily: FontStyles.Medium
              ),
              suffixIcon: Container(
                width: 50,
                child: Row(
                  children: [
                    Container(height: 50,width: 2,color: greyShade300,),
                    SizedBox(width: 10,),
                    Icon(Icons.mic),
                  ],
                ),
              ),
              prefixIcon: Icon(CupertinoIcons.search),
              hintText: text.toString().tr,
              contentPadding: EdgeInsets.all(10),
              border: InputBorder.none
              // focusedBorder: OutlineInputBorder(
              //   borderRadius: BorderRadius.circular(10),
              //   borderSide: BorderSide(color: grey,width: 2),
              // ),
              // enabledBorder: OutlineInputBorder(
              //   borderRadius: BorderRadius.circular(10),
              //   borderSide: BorderSide(color: grey,width: 2),
              // ),
              // border: OutlineInputBorder(
              //   borderRadius: BorderRadius.circular(10),
              //   borderSide: BorderSide(color: grey,width: 2),
              // )
          ),
        ),
      ),
    );
  }
}
class CustomButton extends StatelessWidget {
   CustomButton(this.text);
  var text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      color: white,
      child: ElevatedButton(onPressed: (){

      },child: Padding(
        padding: const EdgeInsets.only(top: 5,bottom: 5),
        child: Text(text.toString().tr,style: CustomTheme.mostviewtitle.copyWith(color: white),),
      ),
        style: ElevatedButton.styleFrom(backgroundColor: teal,shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
        )),),
    );
  }
}
class TextfildCustom extends StatelessWidget {
  TextfildCustom(this.text);
  var text;

  @override
  Widget build(BuildContext context) {
    final notifire=Provider.of<ColorNotifires>(context);
    return TextField(
      style: CustomTheme.mostviewrating.copyWith(color: notifire.getwhiteblackcolor),
      decoration: InputDecoration(
        hintStyle: CustomTheme.mostviewnight.copyWith(color: notifire.hintColor),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(width: 2,color: notifire.getgreycolor)
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(width: 2,color: notifire.getgreycolor)
          ),
          enabledBorder:OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(width: 2,color: notifire.getgreycolor)
          ),

          labelText:text.toString().tr,
          labelStyle: TextStyle(color: notifire.getgreycolor),
          contentPadding: EdgeInsets.only(left: 20,right: 10,top: 10,bottom: 10)
      ),
    );
  }
}

class VerticalProductCard extends StatelessWidget {
  VerticalProductCard(this.imagePath,this.title,this.waight,this.price,this.lessprice);
  String imagePath,title,waight,price,lessprice;


  @override
  Widget build(BuildContext context) {
    final notifires=Provider.of<ColorNotifires>(context);
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          // color: notifires.getbgcolor,

      ),
      child: ListTile(
        // titleAlignment: ListTileTitleAlignment.top,
        leading: Container(
          width: 70,
          decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(width: 2,color:notifires.getgreycolor)
              )
          ),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Image.asset(imagePath),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title.tr,style: CustomTheme.mostviewhome.copyWith(fontWeight: FontWeight.w500,color: notifires.getwhiteblackcolor),maxLines: 2,overflow: TextOverflow.ellipsis,),
            Text(waight.tr,style: CustomTheme.mostviewhome.copyWith(fontSize: 11,color: notifires.getgreycolor),),
            SizedBox(height: 5,)
          ],
        ),
        subtitle: RichText(text: TextSpan(
          children: [
            TextSpan(text: price+"  ".tr,style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor)),
            TextSpan(text: lessprice.tr,style: CustomTheme.mostviewhome.copyWith(color: notifires.getgreycolor,decoration: TextDecoration.lineThrough))
          ]
        ),),
        trailing: AddButton("ADD",Colors.greenAccent.shade200),
      ),
    );
  }
}

class ButtonsCustom extends StatelessWidget{
   var text;
   late VoidCallback onClicked;
   ButtonsCustom(@required this.text,@required this.onClicked);
  @override
  Widget build(BuildContext context) {
    final notifires=Provider.of<ColorNotifires>(context);

    // TODO: implement build
   return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      // color: white,
      child: ElevatedButton(onPressed: onClicked,child: Padding(
        padding: const EdgeInsets.only(top: 5,bottom: 5),
        child: Text(text.toString().tr,style: CustomTheme.mostviewtitle.copyWith(color:white),),
      ),
        style: ElevatedButton.styleFrom(backgroundColor: notifires.primeryColor,shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
        )),),
    );;
  }

}
class LaundryProductCard extends StatefulWidget {
   LaundryProductCard(this.title,this.subtitle,this.leading,);
   String title,subtitle;
   String leading;


  @override
  State<LaundryProductCard> createState() => _LaundryProductCardState();
}

class _LaundryProductCardState extends State<LaundryProductCard> {
  HomeController controller=Get.put(HomeController());
  int value=0;

  @override
  Widget build(BuildContext context) {
    final notifires=Provider.of<ColorNotifires>(context);

    return Container(
      child:
      Row(
        children: [
          Card(
            color: notifires.getbgcolor.withOpacity(.9),
            child: SizedBox(
              height: 80,width: 80,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Image.network(widget.leading,),

              ),
            ),
          ),
          SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(widget.title,style: CustomTheme.mostviewtitle.copyWith(color: notifires.getwhiteblackcolor),),
            Text("\$ "+widget.subtitle.toString(),style: CustomTheme.mostviewtitle1.copyWith(color: notifires.getredYellow),)
            ],
          ),
          Spacer(),
          SizedBox(
            height: 40,width: 90,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: (){
                      setState(() {
                        if(value==0){
                          value=0;
                          controller.totalprice(0);
                          controller.items.value=0;
                        }else{
                          value--;
                          controller.totalprice(-int.parse(widget.subtitle));
                          controller.items.value--;
                        }
                      });
                    },
                    child: ImageIcon(NetworkImage("https://creazilla-store.fra1.digitaloceanspaces.com/icons/3215160/minus-circle-icon-md.png"),size: 28,color: notifires.getgreycolor)),

                Text(value.toString(),style: CustomTheme.mostviewtitle.copyWith(color: notifires.getredYellow,fontSize: 20),),
                GestureDetector(
                    onTap: (){
                      setState(() {
                        value++;
                        controller.totalprice(int.parse(widget.subtitle));
                        controller.items.value++;
                      });
                    },
                    child: ImageIcon(NetworkImage("https://cdn1.iconfinder.com/data/icons/ui-glynh-01-of-5/100/UI_Glyph_1-02-1024.png"),size: 25,color: notifires.getgreycolor,)),


              ],
            ),
          )

        ],
      )
    );
  }
}
class LaundryAddButton extends StatefulWidget {
   LaundryAddButton(this.price);
  int price;
  @override
  State<LaundryAddButton> createState() => _LaundryAddButtonState();
}

class _LaundryAddButtonState extends State<LaundryAddButton> {
  HomeController controller=Get.put(HomeController());
  int value=0;
  // int amount=widget.price;
  @override
  Widget build(BuildContext context) {
    final notifires=Provider.of<ColorNotifires>(context);
    return SizedBox(
      height: 40,width: 90,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
              onTap: (){
                setState(() {
                  if(value==0){
                    value=0;
                    controller.totalprice(0);
                    controller.items.value=0;
                  }else{
                    value--;
                    controller.totalprice(-widget.price);
                    controller.items.value--;
                  }
                });
              },
              child: ImageIcon(NetworkImage("https://creazilla-store.fra1.digitaloceanspaces.com/icons/3215160/minus-circle-icon-md.png"),size: 28,color: notifires.getgreycolor)),

           Text(value.toString(),style: CustomTheme.mostviewtitle.copyWith(color: notifires.getredYellow,fontSize: 20),),
          GestureDetector(
              onTap: (){
                setState(() {
                  value++;
                  controller.totalprice(widget.price);
                  controller.items.value++;
                });
              },
              child: ImageIcon(NetworkImage("https://cdn1.iconfinder.com/data/icons/ui-glynh-01-of-5/100/UI_Glyph_1-02-1024.png"),size: 25,color: notifires.getgreycolor,)),


        ],
      ),
    );
  }
  getPrice(int quantity){
    return quantity*widget.price;
  }
}

class CardOfCheckOutLaundry extends StatelessWidget {
  CardOfCheckOutLaundry(this.title,this.subtitle,this.leading,this.qty);
  String title,subtitle,qty;
  String leading;

  @override
  Widget build(BuildContext context) {
    final notifires=Provider.of<ColorNotifires>(context);

    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Card(
            color: notifires.boxBackgroundcolor,
            child: SizedBox(
              height: 60,width: 60,
              child: Padding(
                padding: EdgeInsets.all(5),
                child: Image.network(leading,),

              ),
            ),
          ),
          SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(title,style: CustomTheme.mostviewtitle.copyWith(color: notifires.getwhiteblackcolor),),
              Text(subtitle,style: CustomTheme.mostviewtitle1.copyWith(color: notifires.getredYellow),)
            ],
          ),
          Spacer(),
          Text("Qty:",style: CustomTheme.mostviewnight.copyWith(color: notifires.getwhiteblackcolor),),
          SizedBox(width: 5,),
          Text(qty.toString(),style: CustomTheme.mostviewtitle.copyWith(color: notifires.getredYellow),)
        ],
      ),
    );
  }
}










