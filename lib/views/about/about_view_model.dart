import 'package:get/get.dart';
import 'package:stacked/stacked.dart';

import '../contact/contact_view.dart';
import '../home/home_view.dart';
import 'about_view.dart';

class AboutViewModel extends BaseViewModel {
  AboutViewModel() {
    loadItems();
  }

  // Add ViewModel specific code here
  Future<void> loadItems() async {
    setBusy(true);
    //Write your models loading codes here

    //Let other views to render again
    setBusy(false);
    notifyListeners();
  }

  void onPageChange(String e) {
    switch (e) {
      case "Home":
        Get.toNamed(HomeView.routeName);

        break;

      case "Contact":
        Get.toNamed(ContactView.routeName);

        break;
      default:
    }
  }

  void loginTap() {}

  void signUpTap() {}

  void signUpHanler() {}
}
