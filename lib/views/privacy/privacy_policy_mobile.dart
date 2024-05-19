part of privacy_policy_view;

class _PrivacyPolicyMobile extends StatefulWidget {
  final PrivacyPolicyViewModel viewModel;

  const _PrivacyPolicyMobile(this.viewModel);

  @override
  State<_PrivacyPolicyMobile> createState() => _PrivacyPolicyMobileState();
}

class _PrivacyPolicyMobileState extends State<_PrivacyPolicyMobile> {
  var header = true;

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(double.infinity, header ? 60 : 430),
          child: appBar(context),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Image(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/privacy.png'),
              ),
              const Gap(20),
              Container(
               
                padding: const EdgeInsets.only(
                    top: 20, bottom: 40, left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Privacy Policy",
                      style: context.textTheme.headlineMedium
                          ?.copyWith(fontSize: 48, fontWeight: FontWeight.w700),
                    ),
                    const Gap(30),
                    Text(
                      "Home is committed to protecting the privacy of our users. This privacy policy explains how we collect, use,\nand disclose information when you use our app.",
                      style: context.textTheme.bodyLarge
                          ?.copyWith(color: const Color(0xff717171)),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                    top: 40, left: 20, right: 20, bottom: 20),
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
                          const Gap(10),
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
                          const Gap(10),
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
                          const Gap(10),
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
                          const Gap(10),
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
                          const Gap(10),
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
                          const Gap(10),
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
                          const Gap(10),
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
                          const Gap(10),
                          const BulletList([
                            " If you have questions or concerns, please contact us at admin@home4im.com ."
                          ]),
                        ],
                      ),
                    ),
                    const Gap(40),
                    Container(
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

  AppBar appBar(BuildContext context) {
    return AppBar(
      leading: const SizedBox(),
      backgroundColor: header ? const Color(0xffF5F7FA) : Colors.grey.shade200,
      flexibleSpace: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          !header ? const SizedBox(height: 10) : const SizedBox(height: 4),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
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
          if (!header)
            Column(
              children: [
                const Gap(20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: ['Home', 'About', 'Feature', 'Contact','Privacy Policy','Coming Soon']
                      .map((e) => ListTile(
                            onTap: () => widget.viewModel.onPageChange(e),
                            // padding: EdgeInsets.only(left: context.width * 0.045),
                            title: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child:
                                  Text(e, style: context.textTheme.bodyLarge),
                            ),
                          ))
                      .toList(),
                ),
                const Gap(10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 6,
                        child: SimpleButton(
                            height: 48, onPressed: () {}, text: 'Sign up'),
                      ),
                      const Gap(10),
                      Expanded(
                        flex: 6,
                        child: SimpleButton(
                          height: 48,
                          onPressed: () {},
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
    );
  }
}
