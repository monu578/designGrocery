import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:provider/provider.dart';
import 'package:unimart/customwidget/commonWidgets.dart';
import 'package:unimart/customwidget/fromElement.dart';
import 'package:unimart/customwidget/fromValidatior.dart';
import 'package:unimart/helper/customAppBar.dart';
import 'package:unimart/utilis/customStyle.dart';
import 'package:unimart/view/auth/login.dart';
import 'package:unimart/view/bottomnavbar/grocery/homeView.dart';
import 'package:unimart/view/home/grocery/home.dart';

import '../../customwidget/projecrColor.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController firstNameController=TextEditingController();
  TextEditingController lastNameController=TextEditingController();
  TextEditingController emailController=TextEditingController();
  TextEditingController passController=TextEditingController();
  TextEditingController phoneNumberController=TextEditingController();
  TextEditingController DOBController=TextEditingController();
  bool ischecked=false;
  @override
  Widget build(BuildContext context) {
    final notifires=Provider.of<ColorNotifires>(context);

    return Scaffold(
      backgroundColor: notifires.boxBackgroundcolor,
      appBar: CustomAppBars(title: "",),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15,right: 15,bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Get Started!".tr,style: CustomTheme.homepageMostView.copyWith(fontSize: 30,color: notifires.getwhiteblackcolor),),
              Text("Create an account to continue.".tr,style: CustomTheme.mostviewrating.copyWith(color: notifires.getwhiteblackcolor),),
              SizedBox(height: 15,),
              CustomTextInputField("Name".tr, Icon(Icons.person,color: notifires.getgreycolor,),(value){
                if (isValidName(value!)) {
                  return null;
                } else {
                  return 'Name is invalid'.tr;
                }
              },TextInputType.name,firstNameController),
              SizedBox(height: 15,),
              CustomTextInputField("Last Name".tr, Icon(Icons.person,color: notifires.getgreycolor,),(value){
                if (isValidName(value!)) {
                  return null;
                } else {
                  return 'Name is invalid';
                }
              },TextInputType.name,lastNameController),
              SizedBox(height: 15,),
              CustomTextInputField("Email".tr, Icon(Icons.email,color: notifires.getgreycolor,),(value){
                return validateEmail(value!);
              },TextInputType.emailAddress,emailController),
              SizedBox(height: 15,),
              // CustomTextInputField("Phone no", Icon(Icons.call,color: Colors.grey,)),
              IntelPhoneInputField(phoneNumberController),
              SizedBox(height: 15,),
              PasswordInputField("Password".tr, Icon(Icons.lock,color: notifires.getgreycolor,),(value){
                return validatePassword(value!);
              },passController),
              SizedBox(height: 15,),
              CustomTextInputField("DD-MM-YYYY", Icon(Icons.date_range_sharp,color: notifires.getgreycolor,),(value){},TextInputType.name,DOBController),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(value: ischecked, onChanged: (value){
                    setState(() {
                      ischecked=value!;
                    });
                  },
                  checkColor: Colors.white,activeColor:notifires.secondrycolor,),
                  Expanded(child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("By creating an account, you agree to out".tr,style: CustomTheme.featuredsliderrating.copyWith(color: notifires.getwhiteblackcolor),),
                      Text("Terms and Condition".tr,style: CustomTheme.featuredsliderrating.copyWith(color: notifires.secondrycolor),)

                    ],
                  ) )
                ],
              ),
              SizedBox(height: 20,),
              ButtonsCustom("Sign Up".tr, (){ Get.to(HomePage());}),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account ? ".tr,style: CustomTheme.mostviewrating.copyWith(color: notifires.getwhiteblackcolor),),
                  InkWell(
                      onTap: (){
                        Get.back();
                      },
                      child: Text("Login".tr,style: CustomTheme.mostviewrating.copyWith(color: notifires.secondrycolor),))
                ],
              ),



            ],
          ),
        ),
      ),
    );
  }
}
