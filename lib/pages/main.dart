import 'package:flutter/material.dart';
import 'package:warungpos/pages/cashier.dart';
import 'package:warungpos/pages/history.dart';
import 'package:warungpos/pages/home.dart';
import 'package:warungpos/pages/profile.dart';

class MainPage extends StatefulWidget {
  const new({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  Widget get pages {
    switch (currentIndex) {
      case 0:
        return HomePage();
      case 1:
        return CashierPage();
      case 2:
        return HistoryPage();
      case 3:
        return ProfilePage();
      default:
        return HomePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.document_scanner),
            label: 'Cashier',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.receipt), label: 'History'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
