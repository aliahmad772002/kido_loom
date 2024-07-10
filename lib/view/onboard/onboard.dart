import 'package:flutter/material.dart';
import 'package:kido_loom/utils/color.dart';
import 'package:kido_loom/view/login/login.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: height,
        width: width,
        decoration: const BoxDecoration(
          gradient: bgColor,
        ),
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                children: const [
                  // Page 1
                  OnboardingPage(
                    imagePath: 'assets/images/people1.png',
                    title: 'Safe and Nurturing Environment',
                    descriptionLines: [
                      'Look for clear facility with a focus',
                      'on safety procedures and well-being',
                      'of the children.'
                    ],
                    isLastPage: false,
                  ),
                  // Page 2
                  OnboardingPage(
                    imagePath: 'assets/images/people2.png',
                    title: 'Learning and Development:',
                    descriptionLines: [
                      'The center should prioritize fostering a love',
                      'for learning through play and social interaction'
                    ],
                    isLastPage: false,
                  ),
                  // Page 3
                  OnboardingPage(
                    imagePath: 'assets/images/people.png',
                    title: 'Parent Involvement:',
                    descriptionLines: [
                      'Also as it says opportunities for parents to',
                      'be engaged'
                    ],
                    isLastPage: true,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(3, (index) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 4.0),
                  height: height * 0.05,
                  width: width * 0.05,
                  decoration: BoxDecoration(
                    color: _currentPage == index ? txt1 : circleColor,
                    shape: BoxShape.circle,
                  ),
                );
              }),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: _currentPage == 2
                  ? ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Login()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: txt1,
                        padding: const EdgeInsets.symmetric(
                          vertical: 18,
                          horizontal: 130,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      child: Text('Let’s get started',
                          style: TextStyle(
                              fontSize: width * 0.03, color: whiteColor)),
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Login()),
                            );
                          },
                          child: Text(
                            'skip',
                            style:
                                TextStyle(fontSize: width * 0.045, color: txt1),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            _pageController.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.ease,
                            );
                          },
                          icon: const Icon(
                            Icons.chevron_right_outlined,
                            color: txt1,
                          ),
                        ),
                      ],
                    ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
          ],
        ),
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String imagePath;
  final String title;
  final List<String> descriptionLines;
  final bool isLastPage;

  const OnboardingPage({super.key, 
    required this.imagePath,
    required this.title,
    required this.descriptionLines,
    required this.isLastPage,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: height * 0.1, bottom: 25),
          child: Container(
            height: height * 0.43,
            width: width,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: borderColor, width: 2.0),
            ),
            child: Center(
              child: Container(
                height: height * 0.35,
                width: width,
                decoration: BoxDecoration(
                  color: whiteColor,
                  shape: BoxShape.circle,
                  border: Border.all(color: borderColor, width: 2.0),
                ),
                child: Center(
                  child: SizedBox(
                    width: width * 0.55,
                    child: Image(image: AssetImage(imagePath)),
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: width * 0.55,
          child: const Image(image: AssetImage('assets/images/k.png')),
        ),
        Text(
          title,
          style: TextStyle(fontSize: width * 0.05, color: txt1),
        ),
        for (var line in descriptionLines)
          Text(
            line,
            style: TextStyle(fontSize: width * 0.035, color: txt2),
          ),
      ],
    );
  }
}
