import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unimart/customwidget/projecrColor.dart';
import 'package:unimart/helper/customAppBar.dart';

class ProductView extends StatefulWidget {
  const ProductView({super.key});

  @override
  State<ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  int selectindex=0;
  String bigImagePath="assets/images/constant/munchies.png";
  List moreImage=[
    {"image_path":"assets/images/constant/munchies.png" },
    {"image_path":"assets/images/constant/majano.png" },
    {"image_path":"assets/images/constant/majano2.png" },
  ];
  @override
  Widget build(BuildContext context) {
    final notifire=Provider.of<ColorNotifires>(context);

    Size size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: notifire.boxBackgroundcolor,
      appBar: CustomAppBars(
        title: "",
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: CircleAvatar(
              backgroundColor: Colors.grey.shade200,
              child: InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                  child: Icon(Icons.close)),
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          Container(
            height:size.height,
            width: size.width,
            margin: EdgeInsets.only(left: 35,right: 35,bottom: 150),
            child: Center(
              child: Image.asset(bigImagePath),
            ),
            
          ),
          Positioned(
            left: 10,right: 10,bottom: 10,
              child: Container(
                height: 140,
                child: ListView.builder(itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.all(10),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          selectindex=index;
                          bigImagePath=moreImage[index]["image_path"];
                        });
                      },
                      child: Container(
                        height: 110,width: 110,
                        decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(width: 2,color: selectindex==index?green: greyShade300)
                            )
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(moreImage[index]["image_path"]),
                        ),
                      ),
                    ),
                  );
                },itemCount: 3,scrollDirection: Axis.horizontal,
                ),
              ))
        ],
      ),
    );
  }
}
