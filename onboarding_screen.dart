import 'package:famous_footwears/screens/login_screen.dart';
import 'package:famous_footwears/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [TextButton(onPressed: () {}, child: Row())],
      ),
      body: IntroductionScreen(
        rawPages: [
          Container(
            color: Theme.of(context).scaffoldBackgroundColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Image.asset('assets/images/app 1.jpg'),
                ),
                const SizedBox(
                  height: 60,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Explore Trendy Shoes',
                    style: TextStyle(
                      color: Color.fromRGBO(6, 161, 146, 1),
                      fontSize: 50,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Explore the latest shoes in our catalogue. A wide variety'
                    'of designs to complement any look of your choice.',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          Container(
            color: Theme.of(context).scaffoldBackgroundColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Image.asset('assets/images/app 2b.jpg'),
                ),
                const SizedBox(
                  height: 60,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Stylish & Elegant Shoes',
                    style: TextStyle(
                      color: Color.fromRGBO(6, 161, 146, 1),
                      fontSize: 50,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Shop our well crafted corporate and casual shoes made with the best of materials.  ',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          Container(
            color: Theme.of(context).scaffoldBackgroundColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Image.asset('assets/images/bla.jpg'),
                ),
                const SizedBox(
                  height: 60,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Simple and Stylish Slip On',
                    style: TextStyle(
                      color: Color.fromRGBO(6, 161, 146, 1),
                      fontSize: 50,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Slippers and Sandals that guarantee comfort and elegance',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          Container(
            color: Theme.of(context).scaffoldBackgroundColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Lottie.asset('assets/lottie/New3.json'),
                ),
                const SizedBox(
                  height: 60,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Let\'s Jump Right In!',
                    style: TextStyle(
                      color: Color.fromRGBO(6, 161, 146, 1),
                      fontSize: 50,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed(SignupScreen.routeName);
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(180, 60),
                          shape: const StadiumBorder(),
                          backgroundColor:
                              Theme.of(context).colorScheme.onPrimary,
                          foregroundColor: Theme.of(context).primaryColor,
                          side: BorderSide(
                            color: Theme.of(context).primaryColor,
                            width: 2,
                          ),
                        ),
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed(LoginScreen.routeName);
                        },
                        style: ElevatedButton.styleFrom(
                            fixedSize: const Size(180, 60),
                            shape: const StadiumBorder()),
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
        //  pages: myPages,
        showDoneButton: false,
        showNextButton: true,
        showSkipButton: true,

        next: const Text(
          'Next',
          style: TextStyle(
              fontSize: 25,
              // color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold),
        ),

        skip: const Text(
          'Skip',
          style: TextStyle(
              //  color: Theme.of(context).primaryColor,
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
        dotsDecorator: DotsDecorator(
          activeColor: Theme.of(context).primaryColor,
          activeSize: const Size.square(17),
        ),
        skipStyle: const ButtonStyle(
          alignment: Alignment.centerLeft,
        ),
        nextStyle: const ButtonStyle(
          alignment: Alignment.centerRight,
        ),
        doneStyle: const ButtonStyle(
          alignment: Alignment.centerRight,
        ),
        animationDuration: 300,

        curve: Curves.easeInOutCubic,
      ),
    );
  }
}
