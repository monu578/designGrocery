import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unimart/customWidget/commonWidgets.dart';
import 'package:unimart/customwidget/projecrColor.dart';
import 'package:unimart/utilis/customStyle.dart';
import 'package:unimart/view/order/laundry/orderHistory.dart';

class PickUpSlot extends StatefulWidget {
  const PickUpSlot({super.key});

  @override
  State<PickUpSlot> createState() => _PickUpSlotState();
}

class _PickUpSlotState extends State<PickUpSlot> {
  DateTime selectedDate = DateTime.now();
  DateTime selectedDate1 = DateTime.now();



  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2020),
      lastDate: DateTime(2026),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData(
            // Customize the accent color
            colorScheme: ColorScheme.light(primary: notifires.primeryColor), // Customize color scheme
            buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.primary), // Customize button theme
            // Add more customizations as needed
          ),
          child: child!,
        );
      },
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }
  Future<void> _selectDate1(BuildContext context) async {
    final DateTime? picked1 = await showDatePicker(
      context: context,
      initialDate: selectedDate1,
      firstDate: DateTime(2020),
      lastDate: DateTime(2026),
    );
    if (picked1 != null && picked1 != selectedDate1) {
      setState(() {
        selectedDate1 = picked1;
      });
    }
  }
  List timeList=[{"slot":"8:00 AM to 10:00 AM"},{"slot":"10:00 AM to 12:00 AM"},{"slot":"12:00 AM to 2:00 PM"},{"slot":"2:00 PM to 4:00 PM"},{"slot":"4:00 PM to 6:00 PM"},{"slot":"6:00 PM to 6:00 PM"},];
  int selectIndex=0;
  int selectIndex1=0;
  @override
  Widget build(BuildContext context) {
    final notifires=Provider.of<ColorNotifires>(context);
    return Scaffold(
      backgroundColor: notifires.boxBackgroundcolor,
      appBar: AppBar(
        title: Text("Please Choose Pickup Slot",style: CustomTheme.mostviewtitle.copyWith(color: notifires.getwhiteblackcolor),),
        centerTitle: true,
        backgroundColor: notifires.boxBackgroundcolor,
        iconTheme: IconThemeData(color: notifires.getgreycolor),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  color: notifires.getbgcolor.withOpacity(.8),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Pickup time",style: CustomTheme.mostviewtitle1.copyWith(color: notifires.getwhiteblackcolor),),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Select Date :-",style: CustomTheme.mostviewhome.copyWith(color: notifires.getgreycolor,fontSize: 14),),
                            Spacer(),
                            GestureDetector(
                              onTap: (){
                                _selectDate(context);
                              },
                              child: Container(
                                height: 40,width: 160,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: notifires.getgreycolor,width: 2)
                                ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
                                child: Row(
                                  children: [
                                    GestureDetector(
                                    onTap: (){
                                    _selectDate(context);
                                    },
                                    child: Icon(Icons.calendar_month,color: notifires.primeryColor,size: 25,)),
                                    SizedBox(width: 10,),
                                    Text(
                                      '${selectedDate.toLocal()}'.split(' ')[0],
                                      style: CustomTheme.mostviewrating.copyWith(color: notifires.getwhiteblackcolor),
                                    ),
                                  ],
                                ),
                              ),),
                            ),
                          ],
                        ),
                        Text("Select one Time slot :-",style: CustomTheme.mostviewhome.copyWith(color: notifires.getgreycolor,fontSize: 14),),
                        SizedBox(height: 10,),
                        Container(
                          height: 400,width: MediaQuery.of(context).size.width,
                        child: ListView.builder(itemBuilder: (context,index){
                          return GestureDetector(
                            onTap: (){
                              setState(() {
                                selectIndex=index;
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Stack(
                                children: [
                                  Container(
                                    height: 45,
                                    alignment: Alignment.center,
                                    decoration:BoxDecoration(
                                      color: selectIndex==index?notifires.primeryColor.withOpacity(.1):notifires.boxBackgroundcolor,
                                      border: Border.all(color:selectIndex==index?notifires.primeryColor:notifires.getgreycolor,width: 2),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 10,right: 10),
                                        child: Center(child: Text(timeList[index]["slot"].toString(),style: CustomTheme.mostviewhome.copyWith(color: selectIndex==index?notifires.primeryColor:notifires.getwhiteblackcolor,fontSize: 20),)),
                                      )),
                                  Visibility(
                                    visible: selectIndex==index?true:false,
                                    child: Positioned(right: 10,top: 0,bottom: 0,
                                        child: Icon(CupertinoIcons.check_mark_circled_solid,color: notifires.primeryColor,)),
                                  )
                                ],
                              ),
                            ),
                          );
                        },itemCount: timeList.length,scrollDirection: Axis.vertical,physics: NeverScrollableScrollPhysics(),),)

                      ],
                    ),
                  ),
                ),

                Spacer(),
                Align(alignment: Alignment.center,
                    child: Text("Pick Up",style: CustomTheme.mostviewtitle1.copyWith(color: notifires.getwhiteblackcolor),)),
                SizedBox(height: 10,),
                Align(
                  alignment: Alignment.center,
                    child: Text("One Click to get the best laundry service",style: CustomTheme.mostviewhome.copyWith(color: notifires.getgreycolor),))
              ,SizedBox(height: 100,)
              ],
            ),
            Positioned(
                bottom: 10,left: 0,right: 0,
                child: ButtonsCustom("Next",(){
                  Navigator.push((context), MaterialPageRoute(builder: (context)=>OrderHistory()));
                }))
          ],
        ),
      ),
    );
  }
}
