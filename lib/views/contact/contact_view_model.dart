import 'package:get/get.dart';
import 'package:marketing_website/views/home/home_view.dart';
import 'package:stacked/stacked.dart';

import '../about/about_view.dart';
import 'contact_view.dart';

class ContactViewModel extends BaseViewModel {
  List subjects = ['General Inquiry', 'General Inquiry', 'General Inquiry', 'General Inquiry'];
  String subject = "";
  ContactViewModel() {
    subject = subjects.first;
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
      case "About":
        Get.toNamed(AboutView.routeName);

        break;
      default:
    }
  }

  void loginTap() {}

  void signUpTap() {}
}
