import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MidSlider extends StatefulWidget {
  MidSlider(this.sliderimages);
  List sliderimages;

  @override
  State<MidSlider> createState() => _MidSliderState();
}

class _MidSliderState extends State<MidSlider> {

  final CarouselController carouselController=CarouselController();
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      margin: EdgeInsets.only(top: 0),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: CarouselSlider(
                items: widget.sliderimages.map((e) => Container(
                  margin: EdgeInsets.only(left: 10,right: 10,top: 10),
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      e["image_path"],
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width,

                    ),
                  ),
                )).toList(),
                carouselController: carouselController,
                options: CarouselOptions(
                  height: MediaQuery.of(context).size.height/5,
                    scrollPhysics: BouncingScrollPhysics(),
                    autoPlay: true,
                    aspectRatio: 16 / 4,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 1,
                    onPageChanged: (index,reason){
                      setState(() {
                        currentIndex=index;
                      });
                    }
                )),
          ),

        ],
      ),
    );
  }
}
