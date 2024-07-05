import 'package:flutter/material.dart';
import "package:portfolio_app/widgets/project_card.dart";

class ProjectsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Projects'),
      ),
      body: ListView(
        children: const [
          ProjectCard(
            projectName: 'Voice Assistant App',
            projectDescription: 'Add project 1 description here.',
            githubLink: 'https://github.com/amishatandon/allen_assistant',
          ),
          ProjectCard(
            projectName: 'BookVault Website',
            projectDescription: 'Add project 2 description here.',
            githubLink: 'https://github.com/amishatandon/BookVault',
          ),
          ProjectCard(
            projectName: 'Sorting Visualizer',
            projectDescription: 'Add project 3 description here.',
            githubLink: 'https://github.com/amishatandon/sorting_visualizer',
          ),
          // Add more ProjectCard widgets as needed
        ],
      ),
    );
  }
}
