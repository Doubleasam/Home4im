part of 'coming_soon_view.dart';

// ignore: must_be_immutable
class __ComingSoonTablet extends StatelessWidget {
  final ComingSoonViewModel viewModel;

  const __ComingSoonTablet(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Scaffold(
        appBar: const HeaderComponent(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 100),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20),
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: 440,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 28, vertical: 40),
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(20),
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Coming Soon',
                              style: context.textTheme.headlineLarge?.copyWith(
                                  fontSize: 48,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white),
                            ),
                            const Gap(10),
                            Text(
                              'Want to be one of the first set of individuals to know when we launch? Join our wait list for our launching update.',
                              style: context.textTheme.bodyLarge
                                  ?.copyWith(fontSize: 16, color: Colors.white),
                            ),
                            // const Gap(150),
                          ],
                        ),
                      ),
                      const Gap(40),
                      Container(
                        // height: 640,
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Wrap(
                              alignment: WrapAlignment.start,
                              direction: Axis.horizontal,
                              runSpacing: 40,
                              spacing: 100,
                              children: <Widget>[
                                SizedBox(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelText: 'First Name',
                                      labelStyle: context.textTheme.bodyLarge,
                                      border: InputBorder.none,
                                      enabledBorder: const UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 1, color: Colors.grey),
                                      ),
                                      focusedBorder: const UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 1, color: Colors.blue),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelText: 'Last Name',
                                      labelStyle: context.textTheme.bodyLarge,
                                      border: InputBorder.none,
                                      enabledBorder: const UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 1, color: Colors.grey),
                                      ),
                                      focusedBorder: const UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 1, color: Colors.blue),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelText: 'Email',
                                      labelStyle: context.textTheme.bodyLarge,
                                      border: InputBorder.none,
                                      enabledBorder: const UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 1, color: Colors.grey),
                                      ),
                                      focusedBorder: const UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 1, color: Colors.blue),
                                      ),
                                    ),
                                  ),
                                ),
                               
                              ],
                            ),
                            const Gap(30),
                            
                            
                            Align(
                              heightFactor: 2.2,
                              alignment: Alignment.bottomRight,
                              child: Container(
                                padding: const EdgeInsets.only(right: 20),
                                child: SimpleButton(
                                  onPressed: () {},
                                  text: 'Join Wait list',
                                  width: 200,
                                ),
                              ),
                            ),
                            const Gap(20),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const FooterComponent(),
            ],
          ),
        ),
        // bottomNavigationBar: FooterSection(),
      ),
    );
  }
}
