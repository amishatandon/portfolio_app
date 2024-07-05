import 'package:flutter/material.dart';
import 'package:portfolio_app/widgets/navigation_bar.dart';
import 'package:portfolio_app/screens/about_screen.dart';
import 'package:portfolio_app/screens/contact_screen.dart';
import 'package:portfolio_app/screens/home_screen.dart';
import 'package:portfolio_app/screens/project_screen.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatefulWidget {
  const PortfolioApp({Key? key}) : super(key: key);

  @override
  _PortfolioAppState createState() => _PortfolioAppState();
}

class _PortfolioAppState extends State<PortfolioApp> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    AboutScreen(),
    ProjectsScreen(),
    ContactScreen(),
  ];

  void _onTabChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio App',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        useMaterial3: true,
      ),
      home: Scaffold(
        body: _screens[_currentIndex],
        bottomNavigationBar: NavigatorBar(
          currentIndex: _currentIndex,
          onTabChanged: _onTabChanged,
        ),
      ),
    );
  }
}
