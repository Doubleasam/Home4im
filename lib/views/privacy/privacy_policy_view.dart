library privacy_policy_view;

import 'package:flutter/material.dart';
import 'package:marketing_website/widgets/bullet_list.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';
import 'package:marketing_website/components/footer.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:marketing_website/widgets/simple_button.dart';
import 'package:marketing_website/components/header.dart';
import 'privacy_policy_view_model.dart';

part 'privacy_policy_desktop.dart';
part 'privacy_policy_mobile.dart';
part 'privacy_policy_tablet.dart';

class PrivacyPolicyView extends StatelessWidget {
    static const routeName = '/privacy';

  const PrivacyPolicyView({super.key});


  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PrivacyPolicyViewModel>.reactive(
        viewModelBuilder: () => PrivacyPolicyViewModel(),
        onModelReady: (viewModel) {
          // Do something once your viewModel is initialized
        },
        builder: (context, viewModel, child) {
          // ignore: deprecated_member_use
          return ScreenTypeLayout(
            desktop: _PrivacyPolicyDesktop(viewModel), 
            mobile: _PrivacyPolicyMobile(viewModel),
            tablet: _PrivacyPolicyTablet(viewModel),

            //Uncomment it if you've planned to support specifically for desktop and tablet
            //desktop: _HomeDesktop(viewModel),
            //tablet: _HomeTablet(viewModel),
          );
        });
  }
}