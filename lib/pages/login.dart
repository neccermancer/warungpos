import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:warungpos/colors.dart';
import 'package:warungpos/pages/profile.dart';
import 'package:warungpos/pages/register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              spacing: 16,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 4,
                  children: [
                    Text(
                      'Welcome',
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primary,
                      ),
                    ),
                    Text(
                      'Hi, please login to continue',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    SizedBox(height: 24),
                    Image.network(
                      'https://cdn-icons-png.flaticon.com/512/3135/3135715.png',

                      width: 200,
                      height: 200,
                    ),
                    SizedBox(height: 24),
                    TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                        hintText: 'Email',
                        hintStyle: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      validator: (value) {
                        if (value != null) {
                          if (value.isEmpty) {
                            return 'Please insert your email address';
                          } else if (!value.contains('@')) {
                            return 'Invalid format';
                          }
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 8),
                    TextFormField(
                      controller: passwordController,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      obscureText: true,
                      validator: (value) {
                        if (value != null) {
                          if (value.isEmpty) {
                            return 'Please insert your password';
                          }
                          if (value.length < 6) {
                            return 'Password must be more at least 6 characters';
                          }
                          if (!RegExp(r'[A-Z]').hasMatch(value)) {
                            return 'Must contain at least one uppercase letter';
                          }
                          if (!RegExp(r'[a-z]').hasMatch(value)) {
                            return 'Must contain at least one lowercase letter';
                          }
                          if (!RegExp(r'[0-9]').hasMatch(value)) {
                            return 'Must contain at least one number';
                          }
                          if (!RegExp(r'[!@#$%^&*(),.?":{}|<>]')
                              .hasMatch(value)) {
                            return 'Must contain at least one special character';
                          }
                        }
                        return null;
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            // Handle sign up logic here
                          },
                          child: Text(
                            'Forgot password?',
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 24),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState?.validate() == true) {
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(builder: (_) => ProfilePage()),
                              (_) => false,
                            );
                          } else {
                            //print('Tidak berhasil');
                          }
                          // Handle login logic here
                        },
                        child: Text(
                          'Login',
                          style: GoogleFonts.poppins(fontSize: 16),
                        ),
                      ),
                    ),
                    SizedBox(height: 48),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: GoogleFonts.poppins(fontSize: 12),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) => RegisterPage()),
                            );
                          },
                          child: Text(
                            'Sign Up',
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
