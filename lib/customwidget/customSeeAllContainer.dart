import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'commonWidgets.dart';
import 'customProductDetails.dart';

class CustomSeeAllContainer extends StatefulWidget {
 CustomSeeAllContainer(this.contentProductList);
  List contentProductList=[];

  @override
  State<CustomSeeAllContainer> createState() => _CustomSeeAllContainerState();
}

class _CustomSeeAllContainerState extends State<CustomSeeAllContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(itemBuilder: (context,index){
        int a=index*2;
        int b=index*2+1;
        return Padding(
          padding: const EdgeInsets.only(top: 5,left: 10,right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [
              Expanded(
                child: InkWell(
                    onTap: (){
                      print(widget.contentProductList[a]["image_path"]);
                      showModalBottomSheet(context: context, builder: (builder){
                        return ProdoctsDetails(widget.contentProductList);
                      },
                        backgroundColor: Colors.transparent,
                        isScrollControlled: true,

                      );
                    },
                    child: ProductCard(widget.contentProductList[a]["image_path"],widget.contentProductList[a]["title"],widget.contentProductList[a]["waight"],widget.contentProductList[a]["price"],widget.contentProductList[a]["lessPrice"])),
              ),
              Expanded(
                child: InkWell(
                    onTap: (){
                      showModalBottomSheet(context: context, builder: (builder){
                        return ProdoctsDetails(widget.contentProductList);
                      },
                        backgroundColor: Colors.transparent,
                        isScrollControlled: true,
                      );
                    },
                    child: ProductCard(widget.contentProductList[b]["image_path"],widget.contentProductList[b]["title"],widget.contentProductList[b]["waight"],widget.contentProductList[b]["price"],widget.contentProductList[b]["lessPrice"])),
              )
            ],
          ),
        );
      },
        itemCount:(widget.contentProductList.length.toDouble()/2).toInt(),
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
