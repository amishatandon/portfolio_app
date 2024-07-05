import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Me'),
      ),
      body: const Center(
        child: Text('Add your contact information here.'),
      ),
    );
  }
}
