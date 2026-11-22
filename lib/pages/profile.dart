import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:warungpos/colors.dart';
import 'package:warungpos/pages/login.dart';

class ProfilePage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile', style: TextStyle(color: AppColors.primary)),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: 32,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 6,
              children: [
                CircleAvatar(
                  radius: 52,
                  foregroundImage: NetworkImage(
                    'https://cdn-icons-png.flaticon.com/512/3135/3135715.png',
                  ),
                ),
                Text(
                  'Zairulhisyam',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primary,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            //SizedBox(height: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 8,
              children: [
                TextButton(
                  onPressed: () {
                    // Handle sign up logic here
                  },
                  child: Text(
                    'Update Profile',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: AppColors.black,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Handle sign up logic here
                  },
                  child: Text(
                    'Printer',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: AppColors.black,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Handle sign up logic here
                  },
                  child: Text(
                    'Language',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: AppColors.black,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Handle sign up logic here
                  },
                  child: Text(
                    'Application Info',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: AppColors.black,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Handle sign up logic here
                  },
                  child: Text(
                    'Customer Service',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: AppColors.black,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (_) => LoginPage()),
                  (_) => false,
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.danger,
              ),
              child: Text('Logout', style: GoogleFonts.poppins(fontSize: 16)),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 3,
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
