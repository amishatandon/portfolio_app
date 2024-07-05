import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Portfolio App', style: GoogleFonts.lato()),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/MY PHOTO.jpg'),
            ),
            const SizedBox(height: 10),
            Text(
              'Your Name',
              style: GoogleFonts.lato(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Flutter Developer',
              style: GoogleFonts.lato(
                fontSize: 20,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'I am a passionate Flutter developer with experience in building beautiful and functional mobile applications.',
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                fontSize: 18,
                color: Colors.grey[700],
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton.icon(
              icon: const Icon(Icons.code),
              label: const Text('Visit My GitHub'),
              onPressed: _launchURL,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _launchURL() async {
    final Uri url = Uri.parse('https://github.com/amishatandon');
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
