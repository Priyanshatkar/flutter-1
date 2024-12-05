import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BasicCarWebsite(),
  ));
}

class BasicCarWebsite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image from Local Asset
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/car-background.jpg'), // Local image
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Login Button in Upper Right Corner
          Positioned(
            top: 20,
            right: 20,
            child: ElevatedButton(
              onPressed: () {
                // Show Popup Dialog on Button Click
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Login Successful"),
                      content: Text("Thank you for login."),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text("OK"),
                        ),
                      ],
                    );
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white, // Button Background Color
                foregroundColor: Colors.black, // Button Text Color
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text(
                "Login",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          // Content Over Background
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome to CarHub',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        offset: Offset(2, 2),
                        blurRadius: 5,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Find and buy your dream car here!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    shadows: [
                      Shadow(
                        offset: Offset(1, 1),
                        blurRadius: 5,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
