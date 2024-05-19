part of privacy_policy_view;

class _PrivacyPolicyDesktop extends StatelessWidget {
  final PrivacyPolicyViewModel viewModel;

  const _PrivacyPolicyDesktop(this.viewModel);
  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Scaffold(
        appBar: const HeaderComponent(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 118, 168, 255),
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.elliptical(-6, 9))),
                padding: const EdgeInsets.only(
                    left: 190, right: 230, top: 20, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Privacy Policy",
                          style: context.textTheme.headlineMedium?.copyWith(
                              fontSize: 64, fontWeight: FontWeight.w700),
                        ),
                        const Gap(30),
                        Text(
                          "Home is committed to protecting the privacy of our users.\nThis privacy policy explains how we collect, use,\nand disclose information when you use our app.",
                          style: context.textTheme.bodyLarge
                              ?.copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                    const Spacer(),
                    const Expanded(
                      flex: 7,
                      child: Image(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/privacy.png'),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 80, left: 190, right: 190),
                child: Column(
                  children: [
                    Container(
                      width: context.width,
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Information We Collect',
                            style: context.textTheme.headlineSmall?.copyWith(
                                fontSize: 48, fontWeight: FontWeight.w600),
                            textAlign: TextAlign.start,
                          ),
                          const Gap(20),
                          const BulletList([
                            "Account Information: We collect information such as your name, email address, and password when you create an account.",
      
                            "Profile Information: You may choose to provide additional information such as your location, language, and immigration status.",
      
                            "Activity Information: We collect information about your activity on the app, including posts, comments, and interactions with others.",
      
                            "Device Information: We collect information about your device, including operating system, device type, and IP address."
                          ]),
                          const Gap(40),
                          Text(
                            'Use of Information',
                            style: context.textTheme.headlineSmall?.copyWith(
                                fontSize: 48, fontWeight: FontWeight.w600),
                            textAlign: TextAlign.start,
                          ),
                          const Gap(20),
                          const BulletList([
                            "Provide and improve our services",
                            "Connect you with other users and resources",
                                "Personalize your experience",
                                "Send notifications and updates",
                                "Analyze usage and improve the app"
                          ]),
                          const Gap(40),
                          Text(
                            'Information Sharing',
                            style: context.textTheme.headlineSmall?.copyWith(
                                fontSize: 48, fontWeight: FontWeight.w600),
                            textAlign: TextAlign.start,
                          ),
                          const Gap(20),
                          const BulletList([
                            "We do not share your information with third parties except in the following cases:",
                            "With your consent",
                                "To comply with legal obligations",
                                "To protect the rights and safety of our users and others"
                          ]),
                          const Gap(40),
                          Text(
                            'Data Security',
                            style: context.textTheme.headlineSmall?.copyWith(
                                fontSize: 48, fontWeight: FontWeight.w600),
                            textAlign: TextAlign.start,
                          ),
                          const Gap(20),
                          const BulletList([
                            "We implement security measures to protect your information from unauthorized access, disclosure, and use.",
                                "We use encryption and secure servers to protect your data."
                          ]),
                          const Gap(40),
                          Text(
                            'Data Retention',
                            style: context.textTheme.headlineSmall?.copyWith(
                                fontSize: 48, fontWeight: FontWeight.w600),
                            textAlign: TextAlign.start,
                          ),
                          const Gap(20),
                          const BulletList([
                            "We retain your information for as long as you have an account or as needed to provide services.",
                                "We delete your information upon request or when it is no longer necessary."
                          ]),
                          const Gap(40),
                          Text(
                            'Your Rights',
                            style: context.textTheme.headlineSmall?.copyWith(
                                fontSize: 48, fontWeight: FontWeight.w600),
                            textAlign: TextAlign.start,
                          ),
                          const Gap(20),
                          const BulletList([
                            "Access and correct your information",
                                "Delete your information",
                                "Object to processing",
                                "Lodge a complaint with a supervisory authority"
                          ]),
                          const Gap(40),
                          Text(
                            'Changes to this Policy',
                            style: context.textTheme.headlineSmall?.copyWith(
                                fontSize: 48, fontWeight: FontWeight.w600),
                            textAlign: TextAlign.start,
                          ),
                          const Gap(20),
                          const BulletList([
                            "We may update this policy from time to time.",
                                "We will notify you of significant changes."
                          ]),
                          const Gap(40),
                          Text(
                            'Contact Us',
                            style: context.textTheme.headlineSmall?.copyWith(
                                fontSize: 48, fontWeight: FontWeight.w600),
                            textAlign: TextAlign.start,
                          ),
                          const Gap(20),
                          const BulletList([
                            " If you have questions or concerns, please contact us at admin@home4im.com ."
                          ]),
                        ],
                      ),
                    ),
                    const Gap(40),
                    Container(
                      width: context.width ,
                      alignment: Alignment.center,
                      child: Text(
                        "By using our app, you agree to this privacy policy. We are committed to protecting your privacy and providing a safe and supportive community for immigrants.",
                        style: context.textTheme.bodyLarge?.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const Gap(40)
                  ],
                ),
              ),
              const FooterComponent(),
            ],
          ),
        ),
      ),
    );
  }
}
