library coming_soon_view;


import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:marketing_website/components/footer.dart';
import 'package:marketing_website/components/header.dart';
import 'package:marketing_website/widgets/simple_button.dart';
import 'package:stacked/stacked.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';

import 'coming_soon_view_model.dart';
part 'coming_soon_mobile.dart';
part 'coming_soon_tablet.dart.dart';
part 'coming_soon_desktop.dart';

// ignore: must_be_immutable
class ComingSoonView extends StatelessWidget {
  static const routeName = '/coming';

  const ComingSoonView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ComingSoonViewModel>.reactive(
        viewModelBuilder: () => ComingSoonViewModel(),
        onModelReady: (viewModel) {
          // Do something once your viewModel is initialized
        },
        builder: (context, viewModel, child) {
          return ScreenTypeLayout(
            mobile: _ComingSoonMobile(viewModel),
            desktop: _ComingSoonDesktop(viewModel),
            tablet: __ComingSoonTablet(viewModel),

            //Uncomment it if you've planned to support specifically for desktop and tablet
            //desktop: _ContactDesktop(viewModel),
            //tablet: _ContactTablet(viewModel),
          );
        });
  }
}
