import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatelessWidget {
  final String projectName;
  final String projectDescription;
  final String githubLink;

  const ProjectCard({
    Key? key,
    required this.projectName,
    required this.projectDescription,
    required this.githubLink,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              projectName,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              projectDescription,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            TextButton(
              onPressed: () {
                _launchURL(githubLink);
              },
              child: const Text(
                'GitHub Link',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
