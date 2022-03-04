import 'package:get/get.dart';

class DashboardController extends GetxController{
    var currentIndex=0.obs;
   String getTitle(){
       if(currentIndex==0){
           return "sceen1";
       }
       else if(currentIndex==1){
           return "screen2";
       }
       else{
           return "scree3";
       }
   }

}