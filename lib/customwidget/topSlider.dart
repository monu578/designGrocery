import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unimart/customwidget/projecrColor.dart';

class TopSlider extends StatefulWidget {
  TopSlider(this.sliderImages, this.boxFit);

  List sliderImages;
  BoxFit boxFit;

  @override
  State<TopSlider> createState() => _TopSliderState();
}

class _TopSliderState extends State<TopSlider> {
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      // Container for the entire widget
      height: MediaQuery.of(context).size.height / 3.5,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(top: 0),
      child: Stack(
        children: [
          // Carousel Slider to display images
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: CarouselSlider(
                items: widget.sliderImages.map((e) => Container(
                  // Individual item in the carousel
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      e["image_path"],
                      fit: widget.boxFit,
                      width: MediaQuery.of(context).size.width,
                    ),
                  ),
                )).toList(),
                carouselController: carouselController,
                options: CarouselOptions(
                    height: MediaQuery.of(context).size.height / 4.2,
                    scrollPhysics: const BouncingScrollPhysics(),
                    autoPlay: true,
                    enlargeCenterPage: true,
                    aspectRatio: 16 / 4,
                    viewportFraction: 0.8,
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentIndex = index;
                      });
                    })),
          ),
          // Positioning for the pagination indicators
          Positioned(
            bottom: 7,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < widget.sliderImages.length; i++)
                  AnimatedContainer(
                    margin: EdgeInsets.all(5),
                    height: 7,
                    width: i == currentIndex ? 15 : 7,
                    decoration: BoxDecoration(
                        color: i == currentIndex
                            ? redShade900
                            : greyShade300,
                        borderRadius: BorderRadius.circular(5)),
                    duration: Duration(milliseconds: 300),
                  )
              ],
            ),
          )
        ],
      ),
    );
  }
}
