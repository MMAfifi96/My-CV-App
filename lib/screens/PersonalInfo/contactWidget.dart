import 'package:flutter/material.dart';
import 'package:my_cv/screens/webview/githubWebView.dart';
import '../webview/linkedinWebView.dart';
import '../webview/waWebView.dart';

class ContactWidget extends StatefulWidget {
  const ContactWidget({Key? key}) : super(key: key);

  @override
  State<ContactWidget> createState() => _ContactWidgetState();
}

class _ContactWidgetState extends State<ContactWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Text(
              'Contact :',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              textAlign: TextAlign.start,
            ),
          ],
        ), //Contact
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            InkWell(
              child: Row(
                children: [
                  Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXaKzA9BdUeWCrXr6uheUCo73wTcgguVBxzA&usqp=CAU',
                    width: 80,
                    height: 100,
                  ),
                ],
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const whatsAppWebView()));
              },
            ), //WhatsApp
            const SizedBox(
              width: 20,
            ),
            InkWell(
              child: Row(
                children: [
                  Image.asset(
                    'assets/github_logo.png',
                    width: 100,
                    height: 100,
                  ),
                ],
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const githubWebView()));
              },
            ),
            const SizedBox(
              width: 18,
            ), //linkedin
            InkWell(
              child: Row(
                children: [
                  Image.asset(
                    'assets/linkedin_logo.png',
                    width: 80,
                    height: 80,
                  ),
                ],
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const linkedInWebView()));
              },
            ), //github
          ],
        ),
      ],
    );
  }
}
