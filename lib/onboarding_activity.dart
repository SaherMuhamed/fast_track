import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingActivity extends StatefulWidget {
  const OnBoardingActivity({Key? key}) : super(key: key);

  @override
  State<OnBoardingActivity> createState() => _OnBoardingActivityState();
}

class _OnBoardingActivityState extends State<OnBoardingActivity> {
  final _controller = PageController();
  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF5F5F5),
        body: SafeArea(
          child: PageView(
              controller: _controller,
              physics: const NeverScrollableScrollPhysics(),
              onPageChanged: (index) {
                setState(() {
                  isLastPage = index == 2;
                });
              },
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 15.0,
                    ),
                    Expanded(
                      flex: 0,
                      child: Container(
                        alignment: Alignment.topRight,
                        margin: const EdgeInsets.only(right: 10.0),
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Skip',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0x99393E46),
                                fontSize: 17.0),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            margin: const EdgeInsets.only(left: 30.0),
                            child: const Text(
                              'Monitor Your Child',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff3E6D9C),
                                fontSize: 30.0,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            margin: const EdgeInsets.only(left: 30.0),
                            child: const Text(
                              'Now you can monitor your child any time\nright from your mobile.',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Color(0x99393E46),
                                fontSize: 17.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(left: 40.0),
                        child: Image.asset(
                            'images/3d-casual-life-school-boy-reading-book-with-headphones-on.png'),
                      ),
                    ),
                    const Expanded(
                      child: SizedBox(),
                    ),
                  ],
                ),
                // ###################################################
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 15.0,
                    ),
                    Expanded(
                      flex: 0,
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 10.0),
                            child: IconButton(
                              onPressed: () {
                                _controller.previousPage(
                                    duration: const Duration(milliseconds: 700),
                                    curve: Curves.decelerate);
                              },
                              color: const Color(0x99393E46),
                              highlightColor: Colors.grey,
                              icon:
                                  const Icon(Icons.arrow_back_ios_new_rounded),
                            ),
                          ),
                          const SizedBox(
                            width: 260.0,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Skip',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0x99393E46),
                                  fontSize: 17.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            margin: const EdgeInsets.only(left: 30.0),
                            child: const Text(
                              'About The System',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff3E6D9C),
                                fontSize: 30.0,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            margin: const EdgeInsets.only(left: 30.0),
                            child: const Text(
                              'We are ensure safety of the students by\nmaking their parents aware about the\nvarious important status.',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Color(0x99393E46),
                                fontSize: 17.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        alignment: Alignment.center,
                        // margin: const EdgeInsets.only(left: 40.0),
                        child:
                            Image.asset('images/casual-life-3d-cogwheels.png'),
                      ),
                    ),
                    const Expanded(
                      child: SizedBox(),
                    ),
                  ],
                ),
                // ###################################################
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 15.0,
                    ),
                    Expanded(
                      flex: 0,
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 10.0),
                            child: IconButton(
                              onPressed: () {
                                _controller.previousPage(
                                    duration: const Duration(milliseconds: 700),
                                    curve: Curves.decelerate);
                              },
                              color: const Color(0x99393E46),
                              highlightColor: Colors.grey,
                              icon:
                                  const Icon(Icons.arrow_back_ios_new_rounded),
                            ),
                          ),
                          const SizedBox(
                            width: 260.0,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Skip',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0x99393E46),
                                  fontSize: 17.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            margin: const EdgeInsets.only(left: 30.0),
                            child: const Text(
                              'Technology Used',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff3E6D9C),
                                fontSize: 30.0,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            margin: const EdgeInsets.only(left: 30.0),
                            child: const Text(
                              'By using RFID technology, it is easy track\nthe student thus enhances the security\nand safety in selected zone.',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Color(0x99393E46),
                                fontSize: 17.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                            'images/3d-casual-life-boy-and-girl-reading-book.png'),
                      ),
                    ),
                    const Expanded(
                      child: SizedBox(),
                    ),
                  ],
                ),
              ]),
        ),
        bottomSheet: isLastPage
            ? buildBottomSheet(
                buttonShadowColor: const Color(0xFF000000),
                primaryColor: const Color(0xff3E6D9C),
                textButton: 'Start',
                animationDurationSeconds: 1)
            : buildBottomSheet(
                buttonShadowColor: const Color(0xFF000000),
                primaryColor: const Color(0xff3E6D9C),
                textButton: 'Next',
                animationDurationSeconds: 1));
  }

  Container buildBottomSheet(
      {required Color buttonShadowColor,
      required Color primaryColor,
      required String textButton,
      required int animationDurationSeconds}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 35.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: 30.0,
          ),
          SmoothPageIndicator(
            controller: _controller, // PageController
            count: 3,
            effect: ScrollingDotsEffect(
              spacing: 10.0,
              dotHeight: 11.0,
              dotWidth: 11.0,
              activeDotColor: primaryColor,
            ), // your preferred effect
          ),
          const SizedBox(
            width: 190.0,
          ),
          SizedBox(
            height: 50.0,
            width: 90.0,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  shadowColor: buttonShadowColor),
              onPressed: () {
                _controller.nextPage(
                    duration: Duration(seconds: animationDurationSeconds),
                    curve: Curves.decelerate);
              },
              child: Text(
                textButton,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
