import 'package:flutter/material.dart';
import 'package:my_cv/screens/PersonalInfo/contactWidget.dart';

class AboutMeWidget extends StatefulWidget {
  const AboutMeWidget({Key? key}) : super(key: key);

  @override
  State<AboutMeWidget> createState() => _AboutMeWidgetState();
}

class _AboutMeWidgetState extends State<AboutMeWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Text(
              'About Me :',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              textAlign: TextAlign.start,
            ),
          ],
        ), //About ME
        const SizedBox(
          height: 20,
        ),
        const Text(
          '- I am a passionate developer with operational background. \n'
          '\n- My responsibility is building intuitive, engaging, and progressive mobile apps features across multiple devices across platforms (iOS & Android) using flutter technology. \n'
          '\n- Also understanding basic concepts of design to develop user-friendly applications. \n'
          '\n- I also have Knowledge of Project Architecture. \n'
          '\n- My skills helps me to translate and Build the designs into high-quality responsive UI code. \n'
          '- Maintain high standards of code quality. \n'
          '\n- Handling Most Common Types if APIs. \n'
          '\n- Collaborate with cross-functional teams to define and deliver new features.\n'
          '\n- Finally I am always open to learn and get experience in new technologies. \n',
          style: TextStyle(fontSize: 20),
          textAlign: TextAlign.start,
        ),
        const SizedBox(
          height: 40,
        ),
        const Padding(
          padding: EdgeInsets.all(20.0),
          child: ContactWidget(),
        ),
      ],
    );
  }

}
