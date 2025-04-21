import 'package:get/get.dart';
import '../views/create_blog/create_blog_view.dart';

class MainController extends GetxController {
  var currentIndex = 0.obs;

  void changePage(int index) {
    currentIndex.value = index;
  }
}
