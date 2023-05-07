import 'package:flutter/material.dart';
import 'package:my_cv/screens/PersonalInfo/aboutMeWidget.dart';
import 'package:my_cv/screens/PersonalInfo/contactWidget.dart';
import 'package:my_cv/screens/webview/waWebView.dart';

import '../webview/githubWebView.dart';
import '../webview/linkedinWebView.dart';
import 'dataTableWidget.dart';

class PersonalInfoCardWidget extends StatefulWidget {
  const PersonalInfoCardWidget({Key? key}) : super(key: key);

  @override
  State<PersonalInfoCardWidget> createState() => _PersonalInfoCardWidgetState();
}

class _PersonalInfoCardWidgetState extends State<PersonalInfoCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          'assets/my_photo.png',
        ),
        const DataTableWidget(),
        const SizedBox(
          height: 30,
        ),
        const Padding(
          padding: EdgeInsets.all(20.0),
          child: AboutMeWidget(),
        ),
      ],
    );
  }
}
