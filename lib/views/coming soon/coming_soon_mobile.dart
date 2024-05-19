part of 'coming_soon_view.dart';

// ignore: must_be_immutable
class _ComingSoonMobile extends StatefulWidget {
  final ComingSoonViewModel viewModel;

  const _ComingSoonMobile(this.viewModel);

  @override
  State<_ComingSoonMobile> createState() => _ContactMobileState();
}

class _ContactMobileState extends State<_ComingSoonMobile> {
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
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(bottomRight: Radius.circular(20), topLeft: Radius.circular(20), topRight: Radius.circular(20))),
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: 440,
                        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 40),
                        width: double.infinity,
                        decoration:
                            const BoxDecoration(color: Colors.black, borderRadius: BorderRadius.only(bottomRight: Radius.circular(20), topLeft: Radius.circular(20), topRight: Radius.circular(20))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Coming Soon',
                              style: context.textTheme.headlineLarge?.copyWith(fontSize: 48, fontWeight: FontWeight.w900, color: Colors.white),
                            ),
                            const Gap(20),
                            Text(
                                'Want to be one of the first set of individuals to know when we launch? Join our wait list for our launching update.',
                              style: context.textTheme.bodyLarge?.copyWith(fontSize: 16, color: Colors.white),
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
                                        borderSide: BorderSide(width: 1, color: Colors.grey),
                                      ),
                                      focusedBorder: const UnderlineInputBorder(
                                        borderSide: BorderSide(width: 1, color: Colors.blue),
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
                                        borderSide: BorderSide(width: 1, color: Colors.grey),
                                      ),
                                      focusedBorder: const UnderlineInputBorder(
                                        borderSide: BorderSide(width: 1, color: Colors.blue),
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
                                        borderSide: BorderSide(width: 1, color: Colors.grey),
                                      ),
                                      focusedBorder: const UnderlineInputBorder(
                                        borderSide: BorderSide(width: 1, color: Colors.blue),
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
onTap: ()=>widget.viewModel.onPageChange(e),
                            // padding: EdgeInsets.only(left: context.width * 0.045),
                            title: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Text(e, style: context.textTheme.bodyLarge),
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
                        child: SimpleButton(height: 48, onPressed: () {}, text: 'Sign up'),
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
