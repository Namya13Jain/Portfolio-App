import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(250, 220, 220, 220),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(250, 178, 190, 181),
        title: const Text(
          'My Projects',
          style: TextStyle(
            fontFamily: 'RobotoCondensed',
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          color: Colors.black,
          onPressed: (() {
            Navigator.pop(context);
          }),
        ),
      ),
      body: GestureDetector(
        onTap: () {
          final Uri _url = Uri.parse('https://github.com/Namya13Jain');
          _launchUrl(_url);
        },
        child: ListView(
          children: const <Widget>[
            Card(
              color: Color.fromARGB(250, 178, 190, 181),
              //  margin: EdgeInsets.only(top: 20, bottom: 20),
              margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: ListTile(
                  leading: FlutterLogo(),
                  title: Text(
                    "Portfolio App : Using Flutter",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
            Card(
              color: Color.fromARGB(250, 178, 190, 181),
              //  margin: EdgeInsets.only(top: 20, bottom: 20),
              margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: ListTile(
                  leading: FlutterLogo(),
                  title: Text(
                    "Sign In and Sign Up Page: Using Flutter and Firebase",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  //onTap: () {},
                ),
              ),
            ),
            Card(
              color: Color.fromARGB(250, 178, 190, 181),
              //  margin: EdgeInsets.only(top: 20, bottom: 20),
              margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: ListTile(
                  leading: Icon(Icons.html_outlined),
                  title: Text(
                    "Portfolio Website : Using HTML and CSS",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Future<void> _launchUrl(_url) async {
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}
