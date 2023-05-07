import 'package:flutter/material.dart';
import 'package:my_cv/screens/Experience/experienceScreen.dart';
import 'package:my_cv/screens/PersonalInfo/personalInfoCardWidget.dart';
import 'package:my_cv/screens/Skills/skillsScreen.dart';

class PersonalInfoScreen extends StatefulWidget {
  const PersonalInfoScreen({Key? key}) : super(key: key);

  @override
  State<PersonalInfoScreen> createState() => _PersonalInfoScreen();
}

class _PersonalInfoScreen extends State<PersonalInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Personal Info.'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              height: 680,
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: SingleChildScrollView(
                  child: PersonalInfoCardWidget(),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: const Color(0xFFB81C44),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white, width: 3)),
                    child: GestureDetector(
                      child: const Center(
                        child: Text(
                          'Skills',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>  SkillsScreen()),
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: const Color(0xFFB81C44),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white, width: 3)),
                    child: GestureDetector(
                      child: const Center(
                        child: Text(
                          'Experience',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>  ExperienceScreen()),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
