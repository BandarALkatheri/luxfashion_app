import 'package:luxfashion_app/features/authentication/screens/login/login.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
 
class OnboardingController extends GetxController {
  static OnboardingController get instace => Get.find();

  //variable
  final pageController = PageController();
  RxInt currentPageIndex = 0.obs;

  // Upadate Current index when page scroll
  void upadatePageIndicator(index) {
    currentPageIndex.value = index;
  }

  // jump to the specifiec dot selected page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  // Upadate current index & jump to next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.to(
     
        
        const LoginScreen());
    } else {
      pageController.jumpToPage(currentPageIndex.value + 1);
    }
  }

  // Upadate current index & jump to last page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
