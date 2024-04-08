import 'package:get/get.dart';

class HomeViewModel {
  final RxInt currentIndex;

  HomeViewModel(this.currentIndex); // Constructor to receive currentIndex

  void setCurrentIndex(int index) {
    currentIndex.value = index;

    // Navigate based on index
    switch (index) {
      case 0:
        Get.offAllNamed('/');
        break;
      case 1:
        Get.offAllNamed('/search');
        break;
      case 2:
        Get.offAllNamed('/basket');
        break;
      case 3:
        Get.offAllNamed('/profile');
        break;
      // Add cases for other indexes as needed
    }
  }
}
