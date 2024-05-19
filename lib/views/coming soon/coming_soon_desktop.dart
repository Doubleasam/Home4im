part of 'coming_soon_view.dart';

// ignore: must_be_immutable
class _ComingSoonDesktop extends StatelessWidget {
  final ComingSoonViewModel viewModel;

  const _ComingSoonDesktop(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Scaffold(
        appBar: const HeaderComponent(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                // height: 600,
                padding: const EdgeInsets.symmetric(horizontal: 190, vertical: 100),
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Flexible(
                        flex: 4,
                        child: Container(
                          height: context.width * 0.36,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 40),
                          width: double.infinity,
                          decoration: const BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(20),
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20))),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                FittedBox(
                                  fit: BoxFit.scaleDown,
                                  child: Text(
                                    'Coming Soon',
                                    style: context.textTheme.headlineMedium
                                        ?.copyWith(
                                            fontSize: 48,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white),
                                  ),
                                ),
                                const Gap(10),
                                Flexible(
                                  fit: FlexFit.loose,
                                  child: Text(
                                    'Want to be one of the first set of individuals to know when we launch? \nJoin our wait list for our launching update.',
                                    style: context.textTheme.bodyLarge?.copyWith(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ),
      
                                // const Gap(150),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const Gap(40),
                      Flexible(
                        flex: 8,
                        child: Container(
                          height: context.height * 0.50,
                          padding:
                              const EdgeInsets.only(top: 30, bottom: 30, right: 40),
                          alignment: Alignment.center,
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Wrap(
                                  alignment: WrapAlignment.start,
                                  direction: Axis.horizontal,
                                  runSpacing: 40,
                                  spacing: 50,
                                  children: <Widget>[
                                    Row(
                                      children: [
                                        Expanded(
                                          child: SizedBox(
                                            width: context.width,
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                labelText: 'First Name',
                                                labelStyle:
                                                    context.textTheme.bodyLarge,
                                                border: InputBorder.none,
                                                enabledBorder:
                                                    const UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                      width: 1,
                                                      color: Colors.grey),
                                                ),
                                                focusedBorder:
                                                    const UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                      width: 1,
                                                      color: Colors.blue),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        const Gap(50),
                                        Expanded(
                                          child: SizedBox(
                                            width: context.width,
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                labelText: 'Last Name',
                                                labelStyle:
                                                    context.textTheme.bodyLarge,
                                                border: InputBorder.none,
                                                enabledBorder:
                                                    const UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                      width: 1,
                                                      color: Colors.grey),
                                                ),
                                                focusedBorder:
                                                    const UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                      width: 1,
                                                      color: Colors.blue),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: context.width,
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          labelText: 'Email',
                                          labelStyle: context.textTheme.bodyLarge,
                                          border: InputBorder.none,
                                          enabledBorder:
                                              const UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 1, color: Colors.grey),
                                          ),
                                          focusedBorder:
                                              const UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 1, color: Colors.blue),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const Gap(40),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                    child: SimpleButton(
                                      onPressed: () {},
                                      text: 'Join Wait list',
                                      width: 200,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
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
