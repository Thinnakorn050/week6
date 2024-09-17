import 'package:flutter/material.dart';

void main() => runApp(SignInPage());

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SignInForm(),
      ),
    );
  }
}

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background image
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/assets/baking.jpg'),
              fit: BoxFit.cover,
              alignment: Alignment.topCenter,
            ),
          ),
        ),
        // Sign In Form
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 200),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'SIGN IN',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                    },
                    child: Text(
                      'SIGN UP',
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50),
              // Email Address Field with custom icon
              TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.alternate_email, color: Colors.amber), // เปลี่ยนไอคอนและสี
                  hintText: 'Email Address',
                  hintStyle: TextStyle(color: Colors.white54),
                  filled: true,
                  fillColor: Colors.white24,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Password Field with custom icon
              TextField(
                style: TextStyle(color: Colors.white),
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock_outline, color: Colors.amber), // เปลี่ยนไอคอนและสี
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.white54),
                  filled: true,
                  fillColor: Colors.white24,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 50),
            ],
          ),
        ),
        Positioned(
          bottom: 16,
          left: 16,
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.orange,
                ),
                child: IconButton(
                  icon: Icon(Icons.android, color: Colors.white),
                  onPressed: () {
                  },
                ),
              ),
              SizedBox(width: 10),
              // ไอคอนข้อความ
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.orange,
                ),
                child: IconButton(
                  icon: Icon(Icons.message, color: Colors.white),
                  onPressed: () {
                  },
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 16,
          right: 16,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.orange,
            ),
            child: IconButton(
              icon: Icon(Icons.arrow_forward, color: Colors.white),
              onPressed: () {
              },
            ),
          ),
        ),
      ],
    );
  }
}
