import 'package:flutter/material.dart';
import 'package:grocery/forgot_password.dart';
import 'package:grocery/screens/intro_screen.dart';
import 'package:grocery/screens/signUp_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // TextEditingController for email and password fields
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand,
        children: [

          Image.asset(
            'assets/images/background_img.png',
            fit: BoxFit.cover,
          ),

          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Image.asset(
                    'assets/images/logo.png',
                    width: 120,
                    height: 120,
                  ),
                  const SizedBox(height: 30),

                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      filled: true,
                      fillColor: Colors.lightGreen.withOpacity(0.3),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:const BorderSide(color: Colors.lightGreen, width: 2.0),
                        borderRadius: BorderRadius.circular(35.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.lightGreen.withOpacity(0.7), width: 1.0),
                        borderRadius: BorderRadius.circular(35.0),
                      ),
                    ),
                    style: const TextStyle(color: Colors.white),
                  ),
                 const SizedBox(height: 20),

                  TextFormField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      filled: true,
                      fillColor: Colors.lightGreen.withOpacity(0.3),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.lightGreen, width: 2.0),
                        borderRadius: BorderRadius.circular(35.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.lightGreen.withOpacity(0.7), width: 1.0),
                        borderRadius: BorderRadius.circular(35.0),
                      ),
                    ),
                    obscureText: true, // Mask password with asterisks
                    style:const TextStyle(color: Colors.white),
                  ),
                 const SizedBox(height: 20),

                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>const IntroScreen()));

                      // String email = _emailController.text.trim();
                      // String password = _passwordController.text.trim();
                      // // Example: Validate credentials and navigate to next screen
                      // if (email.isNotEmpty && password.isNotEmpty) {

                      //   Navigator.pushReplacementNamed(context, '/home');
                      // } else {

                      //   ScaffoldMessenger.of(context).showSnackBar(
                      //     SnackBar(
                      //       content: Text('Please enter valid credentials'),
                      //     ),
                      //   );
                      // }
                    },
                    style: ElevatedButton.styleFrom(
                      padding:const EdgeInsets.symmetric(horizontal: 125, vertical: 16),
                      backgroundColor: Colors.lightGreen,
                    ),
                    child:const Text(
                      'Login',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                 const SizedBox(height: 10),

                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>  ForgotPasswordScreen()));

                    },
                    child: const Text(
                      'Forgot Password',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 150.0,
                    height: 2.0,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                 const SizedBox(height: 10),
                  // "New here? Sign Up" link
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     const Text(
                        'New here?',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                     const SizedBox(width: 5),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const SignupScreen()));
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),
                      ),
                    ],
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
