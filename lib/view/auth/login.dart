import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:unimart/customwidget/fromElement.dart';
import 'package:unimart/utilis/customStyle.dart';
import 'package:unimart/view/auth/forgetPassword.dart';
import 'package:unimart/view/auth/signUp.dart';
import 'package:unimart/view/home/grocery/home.dart';

import '../../customWidget/commonWidgets.dart';
import '../../customwidget/fromValidatior.dart';
import '../../customwidget/projecrColor.dart';
import '../bottomnavbar/grocery/homeView.dart';

class Login extends StatelessWidget {
   Login({super.key});
  TextEditingController emailController=TextEditingController();
  TextEditingController passController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    final notifires=Provider.of<ColorNotifires>(context);

    return Scaffold(
      backgroundColor: notifires.boxBackgroundcolor,
      appBar: AppBar(
        backgroundColor: notifires.boxBackgroundcolor,
        elevation: 0,
        scrolledUnderElevation: 0,
        leadingWidth: 80,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15,top: 10),
          child: CircleAvatar(
                backgroundColor: notifires.getbgcolor,
                 child: Center(child: Image.asset("assets/images/unimartlogo.png",scale: 4,),),
              ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15,top: 10),
            child: OutlinedButton(onPressed: (){
              Get.to(HomePage());
            }, style: OutlinedButton.styleFrom(
              backgroundColor: notifires.getbgcolor,
              side: BorderSide(color: notifires.getgreycolor,width: 2)
            ),child: Text("Skip".tr,style:CustomTheme.mostviewhome.copyWith(color: notifires.primeryColor,fontSize: 16),)),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15,right: 15,top: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Let's Sign you in.".tr,style: CustomTheme.homepageMostView.copyWith(fontSize: 30,color: notifires.getwhiteblackcolor),),
              Text("Welcome back. you have been missed!".tr,style: CustomTheme.mostviewnight.copyWith(fontSize: 17,color: notifires.getwhiteblackcolor),),
              SizedBox(height: 20,),
              Text("Email".tr,style: CustomTheme.mostviewrating.copyWith(color: notifires.getwhiteblackcolor),),
              SizedBox(height: 10,),
              CustomTextInputField("Email Id".tr, Icon(Icons.email,color:notifires.getgreycolor,),(value){
                return validateEmail(value!);
              },TextInputType.emailAddress,emailController),
              SizedBox(height: 20,),
              Text("Password".tr,style: CustomTheme.mostviewrating.copyWith(color: notifires.getwhiteblackcolor),),
              SizedBox(height: 10,),
              PasswordInputField("Password".tr, Icon(Icons.lock_outline,color: notifires.getgreycolor,),(value){
                return validatePassword(value!);
              },passController),
              SizedBox(height: 20,),
              InkWell(
                  onTap: (){
                    Get.to(ForgetPassword());
                  },
                  child: Text("Forget Password".tr,style: CustomTheme.mostviewrating.copyWith(color: notifires.secondrycolor),)),
              SizedBox(height: 70,),
              ButtonsCustom("Login".tr, (){ Get.to(HomePage());}),
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Do'nt have an account ? ".tr,style: CustomTheme.mostviewrating.copyWith(color: notifires.getwhiteblackcolor),),
                  GestureDetector(
                    onTap: (){
                      Get.to(SignUp());
                    },
                      child: Text("SingUP".tr,style: CustomTheme.mostviewrating.copyWith(color: notifires.secondrycolor),))
                ],
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Align(
                  alignment: Alignment.center,
                    child: Image.asset("assets/images/unimartWithName.png",width: 100,)),
              )
            ],
          ),
        ),
      ),
    );

  }
}
