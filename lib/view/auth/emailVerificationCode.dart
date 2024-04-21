import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:unimart/customWidget/commonWidgets.dart';
import 'package:unimart/utilis/customStyle.dart';
import 'package:unimart/view/auth/changePassword.dart';

import '../../customwidget/projecrColor.dart';

class EmailVerificationCode extends StatefulWidget {
  const EmailVerificationCode({super.key});

  @override
  State<EmailVerificationCode> createState() => _EmailVerificationCodeState();
}

class _EmailVerificationCodeState extends State<EmailVerificationCode> {
  @override
  Widget build(BuildContext context) {
    final notifires=Provider.of<ColorNotifires>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: notifires.boxBackgroundcolor,
        automaticallyImplyLeading: false,
      ),
      backgroundColor: notifires.boxBackgroundcolor,
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20,top: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text("Verification Code".tr,style: CustomTheme.homepageMostView.copyWith(color: notifires.getwhiteblackcolor),),
              SizedBox(height: 10,),
              Text("we sent the code verification to".tr,style: CustomTheme.mostviewrating.copyWith(color: notifires.getwhiteblackcolor),),
              SizedBox(height: 10,),

              Text("tomsizh@gmail.com",style: CustomTheme.homepageMostView.copyWith(color: notifires.getwhiteblackcolor),),
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Didn't recive code? ".tr,style: CustomTheme.mostviewrating.copyWith(color: notifires.getwhiteblackcolor),),
                  InkWell(
                      onTap: (){},
                      child: Text("Resend New Code ".tr,style: CustomTheme.mostviewrating.copyWith(color: notifires.secondrycolor),)),


                ],
              ),
              SizedBox(height: 25,),
              Text("Enter OTP".tr,style: CustomTheme.homepageMostView.copyWith(color: notifires.getwhiteblackcolor),),
              SizedBox(height: 15,),
              TextFormField(
                maxLength: 6,
                textAlign: TextAlign.center,
                style: TextStyle(color: notifires.getwhiteblackcolor,fontSize: 20,fontWeight: FontWeight.w700,letterSpacing: 2),
                textCapitalization: TextCapitalization.words,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                  counterText: "",
                  hintText: "000000",
                  hintStyle: TextStyle(color: notifires.hintColor),
                  // contentPadding: EdgeInsets.only(left: 150,right: 150,bottom: 20,top: 20),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2,color: grey),
                    borderRadius: BorderRadius.circular(12)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2,color: grey),
                      borderRadius: BorderRadius.circular(12)
                  )
                ),
              ),
              SizedBox(height: 30,),
              ButtonsCustom("Verify".tr, () {
                Get.to(ChangePassword());
              })

            ],
          ),
        ),
      ),
    );
  }
}
