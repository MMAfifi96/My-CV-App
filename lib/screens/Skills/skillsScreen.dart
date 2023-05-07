import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class SkillModel {
  final String skillName;
  final String percentText;
  final double perCent;

  SkillModel({
    required this.skillName,
    required this.perCent,
    required this.percentText,
  });
}

class SkillsScreen extends StatelessWidget {
  SkillsScreen({super.key});

  List<SkillModel> skills = [
    SkillModel(
      skillName: "OOP",
      perCent: 0.7,
      percentText: '70%',
    ), //
    SkillModel(
      skillName: "Dart",
      perCent: 0.6,
      percentText: '60%',
    ), //
    SkillModel(
      skillName: "Flutter",
      perCent: 0.7,
      percentText: '70%',
    ), //
    SkillModel(
      skillName: "\nMobile Software Development\n",
      perCent: 0.7,
      percentText: '70%',
    ), //
    SkillModel(
      skillName: "\nSoftware Project Architecture\n",
      perCent: 0.6,
      percentText: '60%',
    ), //
    SkillModel(
      skillName: "Sqflite",
      perCent: 0.7,
      percentText: '70%',
    ), //
    SkillModel(
      skillName: "Animation",
      perCent: 0.6,
      percentText: '60%',
    ), //
    SkillModel(
      skillName: "BloC",
      perCent: 0.8,
      percentText: '80%',
    ), //
    SkillModel(
      skillName: "Riverpod",
      perCent: 0.6,
      percentText: '60%',
    ), //
    SkillModel(
      skillName: "Dio",
      perCent: 0.7,
      percentText: '70%',
    ), //
    SkillModel(
      skillName: "Http",
      perCent: 0.7,
      percentText: '70%',
    ), //
    SkillModel(
      skillName: "Restful API",
      perCent: 0.7,
      percentText: '70%',
    ), //
    SkillModel(
      skillName: "Json",
      perCent: 0.7,
      percentText: '70%',
    ), //
    SkillModel(
      skillName: "Widget Testing",
      perCent: 0.6,
      percentText: '60%',
    ), //
    SkillModel(
      skillName: "Firebase",
      perCent: 0.0,
      percentText: 'Loading',
    ), //
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Skills'),
      ),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        height: 770,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 770,
                    child: ListView.separated(
                      itemBuilder: (context, index) =>
                          buildSkillItem(skills[index]),
                      separatorBuilder: (context, index) => Container(
                        width: double.infinity,
                        height: 1,
                        color: Colors.grey[300],
                      ),
                      itemCount: skills.length,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildSkillItem(SkillModel skill) => Row(
        children: [
          Container(
            width: 15,
            height: 15,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.black),
          ),
          const SizedBox(
            width: 30,
          ),
          Expanded(
              child: Text(
            skill.skillName,
            style: const TextStyle(fontSize: 25),
          )),
          Expanded(
            child: SizedBox(
              width: 75,
              height: 75,
              child: CircularPercentIndicator(
                radius: 30,
                percent: skill.perCent,
                progressColor: const Color(0xFFB81C44),
                circularStrokeCap: CircularStrokeCap.round,
                center: Text(skill.percentText),
              ),
            ),
          ),
        ],
      );
}
