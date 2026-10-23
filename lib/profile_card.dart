import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {

  final String imagePath;
  final String name;
  final String description;

  const ProfileCard({
    super.key,
    required this.imagePath,
    required this.name,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 2,
          )
        ],
      ),
      child: Column(
        children: [
          CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage(imagePath),
          ),
          const SizedBox(height: 15),
          Text(
            name,
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            description,
            style: const TextStyle(fontSize: 16, color: Colors.grey),
          )
        ],
      ),
    );
  }
}
