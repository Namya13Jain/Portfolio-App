import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> _launchUrl(url) async {
  if (!await launchUrl(url)) {
    throw 'Could not launch $url';
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(250, 220, 220, 220),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 50,
            backgroundColor: Color.fromARGB(250, 178, 190, 181),
            backgroundImage: AssetImage('assets/mypic.png'),
          ),
          const Text(
            'Namya Jain',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: 'Alkalami'),
          ),
          const Text(
            'B.Tech Information Technology',
            style: TextStyle(
              fontFamily: 'Alkalami',
              fontSize: 20,
              fontWeight: FontWeight.w300,
            ),
          ),
          GestureDetector(
            onTap: () {
              final Uri url = Uri.parse(
                  'https://drive.google.com/file/d/1nN3q_FyfUxTx47-9P-2-If8rO4z802Ov/view?usp=sharing');
              _launchUrl(url);
            },
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              decoration: BoxDecoration(
                color: const Color.fromARGB(250, 178, 190, 181),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: const [
                  Icon(Icons.file_copy_outlined),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Resume',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              final Uri url =
                  Uri.parse('https://www.linkedin.com/in/namya-jain-bb9454215');
              _launchUrl(url);
            },
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              decoration: BoxDecoration(
                color: const Color.fromARGB(250, 178, 190, 181),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: const [
                  Icon(FontAwesomeIcons.linkedinIn),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Connect on LinkedIn',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              final Uri url = Uri.parse('https://twitter.com/Jain13Namya');
              _launchUrl(url);
            },
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              decoration: BoxDecoration(
                color: const Color.fromARGB(250, 178, 190, 181),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: const [
                  Icon(FontAwesomeIcons.squareTwitter),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Connect on Twitter',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'projects_page');
            },
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              decoration: BoxDecoration(
                color: const Color.fromARGB(250, 178, 190, 181),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: const [
                  Icon(FontAwesomeIcons.github),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'My Projects',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              final Uri url = Uri.parse('https://mail.google.com');
              _launchUrl(url);
            },
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              decoration: BoxDecoration(
                color: const Color.fromARGB(250, 178, 190, 181),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: const [
                  Icon(Icons.email_rounded),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Mail for any Queries',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
