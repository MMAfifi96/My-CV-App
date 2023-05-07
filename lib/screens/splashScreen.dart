import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:my_cv/screens/PersonalInfo/personalInfoScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.pushReplacement<void, void>(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) => const PersonalInfoScreen(),
        ),
      );
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'My Resume',
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(height: 30),
            Image(
              image: AssetImage('assets/mma_black.jpg'),
              width: 300,
            ),
            SizedBox(height: 30),
            SpinKitFadingFour(
              color: Colors.white,
              size: 50,
            ),
          ],
        ),
      ),
    );
  }
}
