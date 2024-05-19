import 'package:get/get.dart';
import 'package:marketing_website/views/about/about_view.dart';
import 'package:marketing_website/views/contact/contact_view.dart';
import 'package:marketing_website/views/home/home_view.dart';

import 'views/coming soon/coming_soon_view.dart';
import 'views/privacy/privacy_policy_view.dart';


final routes = {
  '/': (context) => const HomeView(),
  '/about': (context) => const AboutView(),
  '/contact': (context) => const ContactView(),
  '/privacy':(context)=> const PrivacyPolicyView(),
  '/coming': (context) => const ComingSoonView(),
};
final getPages = [
  GetPage(name: HomeView.routeName, page: () => const HomeView()),
  GetPage(name: AboutView.routeName, page: () => const AboutView()),
  GetPage(name: ContactView.routeName, page: () => const ContactView()),
  GetPage(name: PrivacyPolicyView.routeName, page: () => const PrivacyPolicyView()),
  GetPage(name: ComingSoonView.routeName, page: () => const ComingSoonView()),
];
