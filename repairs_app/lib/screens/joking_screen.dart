import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:repairs_app/widgets/customtextbox.dart';

class JokingScreen extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  JokingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/images/backImage.jpg',
              
            ),
          ),
        ),
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            Container(
              alignment: Alignment.center,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                shape: BoxShape.rectangle,
              ),
              child: const Column(
                children: [
                  CircleAvatar(
                    radius: 80,
                    backgroundColor: Color.fromARGB(255, 175, 184, 175),
                    backgroundImage: AssetImage('assets/images/laptop.png'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: TextFormField(
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontFamily: 'playfair',
                ),
                cursorColor: Colors.white,
                decoration: const InputDecoration(
                  fillColor: Colors.white,
                  icon: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 50.0,
                    applyTextScaling: true,
                  ),
                  alignLabelWithHint: true,

                  border: UnderlineInputBorder(),
                  hintText: 'Enter your name',
                  hintStyle: TextStyle(
                    color: Color.fromARGB(255, 157, 208, 202),
                  ),
                  //labelText: 'Write a joke',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextFormField(
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontFamily: 'playfair',
                ),
                cursorColor: Colors.white,
                decoration: const InputDecoration(
                  fillColor: Colors.white,
                  icon: Icon(
                    Icons.lock,
                    color: Colors.white,
                    size: 50.0,
                    applyTextScaling: true,
                  ),
                  alignLabelWithHint: true,

                  border: UnderlineInputBorder(),
                  hintText: 'Password', suffixIcon: Icon(Icons.visibility),
                  suffixIconColor: Colors.blueGrey,
                  hintStyle: TextStyle(
                    color: Color.fromARGB(255, 157, 208, 202),
                  ),
                  //labelText: 'Write a joke',
                ),
              ),
            ),
            const SizedBox(height: 10),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.login,
                size: 50.0,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
