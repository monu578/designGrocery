

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeController extends GetxController{
   RxBool modeClick=false.obs;
   RxInt conunt=0.obs;
   RxInt conunt2=0.obs;
   RxBool addressCheck=false.obs;
   RxInt totalAmount=0.obs;
   RxInt items=0.obs;
  void changeBoolValue(){
    modeClick.toggle();
    // print(modeClick.value);
  }
  void changeCount(int value) async {
    conunt.value=value;
  }
   void changeCount2(int value)async{
     conunt2.value=value;
   }
   void saveAdddress(){
    if(conunt2.value>0&&conunt.value>0){
      addressCheck.value=true;
    }else{
      addressCheck.value=false;
    }
   }
   void totalprice(int value){
    totalAmount.value=totalAmount.value+value;
   }



}