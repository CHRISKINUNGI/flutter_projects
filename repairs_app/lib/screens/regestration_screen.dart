import 'package:flutter/material.dart';
import 'package:get/get.dart'; // Import Get package
import 'package:repairs_app/widgets/custom_button.dart';
import 'package:repairs_app/widgets/customtextbox.dart';
import 'login_screen.dart'; // Import your login screen file

class RegistrationScreen extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                ),
                child: Icon(
                  Icons.person,
                  size: 50,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Create an Account',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 20),
              CustomInput(
                labelText: 'Username',
                hintText: 'Enter your username',
                controller: usernameController,
                icon: Icons.person,
                onChanged: (value) {
                  print(value);
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Username is required';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 15),
              CustomInput(
                labelText: 'Email',
                hintText: 'Enter your email',
                controller: emailController,
                icon: Icons.email,
                onChanged: (value) {
                  print(value);
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Email is required';
                  }
                  // Add email validation logic if needed
                  return null;
                },
              ),
              const SizedBox(height: 15),
              CustomInput(
                labelText: 'Password',
                hintText: 'Enter your password',
                controller: passwordController,
                icon: Icons.lock,
                obscureText: true,
                onChanged: (value) {
                  print(value);
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Password is required';
                  }
                  // Add password strength validation logic if needed
                  return null;
                },
              ),
              const SizedBox(height: 15),
              CustomInput(
                labelText: 'Confirm Password',
                hintText: 'Re-enter your password',
                controller: confirmPasswordController,
                icon: Icons.lock,
                obscureText: true,
                onChanged: (value) {
                  print(value);
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Confirm Password is required';
                  }
                  if (value != passwordController.text) {
                    return 'Passwords do not match';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              CustomButton(
                label: 'Register',
                onPressed: () {
                  Get.to(() => LoginScreen());
                },
              ),
              const SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  // Navigate to Login Screen using Get.to
                  Get.to(() => LoginScreen());
                },
                child: Text(
                  'Already have an account? Login',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
