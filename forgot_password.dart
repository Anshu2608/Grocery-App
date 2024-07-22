import 'package:flutter/material.dart';
import 'package:grocery/screens/signIn.dart'; // Import your login screen here

class ForgotPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title:const Text('Forgot Password',
      //   style: TextStyle(
      //       fontSize: 20,
      //     backgroundColor: Colors.lightGreen,
      //     color: Colors.white,
      //   ),
      //   ),
      // ),
      resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand,
        children: [

          // Background image
          Image.asset(
            'assets/images/background_img.png',
            fit: BoxFit.cover,
          ),
          // Centered logo and form
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(

                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                   const Text(
                      'Forgot Password',
                      style: TextStyle(
                        color: Colors.lightGreen,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                    // Your logo
                    Image.asset(
                      'assets/images/logo.png',
                      width: 120,
                      height: 120,
                    ),
                    SizedBox(height: 30),
                    // Email TextFormField
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                        filled: true,
                        fillColor: Colors.lightGreen.withOpacity(0.3), // Light green color with opacity
                        border: InputBorder.none, // Remove border
                        focusedBorder: InputBorder.none, // Remove border when focused
                        enabledBorder: InputBorder.none, // Remove border when enabled
                      ),
                      style: TextStyle(color: Colors.white), // Text color
                    ),
                    SizedBox(height: 20),
                    // Submit button
                    ElevatedButton(
                      onPressed: () {
                        // Implement submit logic here
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 125, vertical: 16), // Adjust button padding
                        backgroundColor: Colors.lightGreen, // Background color of the button
                      ),
                      child: Text(
                        'Submit',
                        style: TextStyle(fontSize: 18, color: Colors.white), // Adjust text size and color
                      ),
                    ),
                    SizedBox(height: 20),
                    // "Already have an account? Sign In" link
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                      },
                      child: Text(
                        'Already have an account? Sign In',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,

                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
