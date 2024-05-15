import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:marketing_website/views/home/home_view.dart';
import 'package:marketing_website/views/privacy/privacy_policy_view.dart';
import 'package:marketing_website/widgets/simple_button.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../views/about/about_view.dart';
import '../views/coming soon/coming_soon_view.dart';
import '../views/contact/contact_view.dart';

class HeaderComponent extends StatefulWidget implements PreferredSizeWidget {
  const HeaderComponent({
    super.key,
  });

  @override
  State<HeaderComponent> createState() => _HeaderComponentState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.infinity, 74);
}

class _HeaderComponentState extends State<HeaderComponent> {
  bool header = false;
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (p0) {
        return PreferredSize(
          preferredSize: Size(double.infinity, header ? 74 : 430),
          child: AppBar(
            leading: const SizedBox(),
            backgroundColor:
                header ? const Color(0xffF5F7FA) : Colors.grey.shade200,
            flexibleSpace: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                header ? const SizedBox(height: 10) : const SizedBox(height: 4),
                Container(
                  alignment: Alignment.center,
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 6),
                        height: 50,
                        width: 50,
                        child: const Image(
                          image: AssetImage('assets/images/logo.png'),
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            header = !header;
                            setState(() {});
                          },
                          icon: const Icon(Icons.menu, size: 28)),
                    ],
                  ),
                ),
                if (header)
                  Column(
                    children: [
                      const Gap(20),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          'Home',
                          'About',
                          'Feature',
                          'Contact',
                          'Privacy Policy',
                          'Coming Soon'
                        ]
                            .map((e) => ListTile(
                                  onTap: () => onPageChange(e),
                                  title: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Text(e,
                                        style: context.textTheme.bodyLarge),
                                  ),
                                ))
                            .toList(),
                      ),
                      const Gap(20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 6,
                              child: SimpleButton(
                                  height: 48,
                                  onPressed: () {
                                    Get.toNamed(ContactView.routeName);
                                  },
                                  text: 'Sign up'),
                            ),
                            const Gap(10),
                            Expanded(
                              flex: 6,
                              child: SimpleButton(
                                height: 48,
                                onPressed: () {
                                  Get.toNamed(ContactView.routeName);
                                },
                                text: 'Login',
                                backgroundColor: Colors.grey.shade300,
                                textColor: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        );
      },
      desktop: (p0) {
        return AppBar(
          leading: const SizedBox(),
          backgroundColor: const Color(0xffF5F7FA),
          flexibleSpace: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 190),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const SizedBox(
                  height: 50,
                  width: 50,
                  child: Image(
                    image: AssetImage('assets/images/logo.png'),
                  ),
                ),
                // const Gap(130),
                Row(
                  children: [
                    'Home',
                    'About',
                    'Feature',
                    'Contact',
                    'Privacy Policy',
                    'Coming Soon'
                  ]
                      .map((e) => Container(
                            width: context.width * 0.09,
                            alignment: Alignment.center,
                            child: ListTile(
                              dense: true,
                              onTap: () => onPageChange(e),
                              title: Text(
                                e,
                                style: context.textTheme.bodyLarge,
                                textAlign: TextAlign.center,
                              ),
                              // ),
                            ),
                          ))
                      .toList(),
                ),
                // const Gap(40),
                Row(
                  children: <Widget>[
                    SimpleButton(
                      width: 110,
                      height: 48,
                      onPressed: () {
                        Get.toNamed(ContactView.routeName);
                      },
                      text: 'Login',
                      backgroundColor: Colors.transparent,
                      textColor: Colors.black,
                    ),
                    const Gap(10),
                    SimpleButton(
                        width: 112,
                        height: 48,
                        onPressed: () {
                          Get.toNamed(ContactView.routeName);
                        },
                        text: 'Sign up'),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }

  onPageChange(String e) {
    switch (e) {
      case "Home":
        Get.toNamed(HomeView.routeName);

        break;
      case "About":
        Get.toNamed(AboutView.routeName);

        break;
      case "Contact":
        Get.toNamed(ContactView.routeName);

      case "Privacy Policy":
        Get.toNamed(PrivacyPolicyView.routeName);

      case "Coming Soon":
        Get.toNamed(ComingSoonView.routeName);

        break;
      default:
    }
    // if()
  }
}
