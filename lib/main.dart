import 'package:flutter/material.dart';
import 'profile_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const ProfilePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Profile"),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            ProfileCard(
              imagePath: "assets/images/photo.png",
              name: "Kok Hao",
              description: "Mobile Development Student",
            ),
            ProfileCard(
              imagePath: "assets/images/photo2.png",
              name: "Zhang Rui Jie",
              description: "Computer Science Student",
            ),
          ],
        ),
      ),
    );
  }
}
