import 'package:get/get.dart';
import 'package:marketing_website/views/contact/contact_view.dart';
import 'package:marketing_website/views/home/home_view.dart';
import 'package:marketing_website/views/privacy/privacy_policy_view.dart';
import 'package:stacked/stacked.dart';

import '../about/about_view.dart';

class ComingSoonViewModel extends BaseViewModel {
  ComingSoonViewModel() {
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

      case "Contact":
        Get.toNamed(ContactView.routeName);
        break;

      case "Privacy Policy":
        Get.toNamed(PrivacyPolicyView.routeName);
        break;

      default:
    }
  }

  void loginTap() {}

  void signUpTap() {}
}
