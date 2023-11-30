// profile_page.dart

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProfilePage extends StatelessWidget {
  // Simulated user data
  User user = User(
    'John Doe',
    'Plumber',
    '123-456-7890',
    'City A',
    'john.doe@email.com',
    '123 Main St, City A',
    'Male',
    DateTime(1990, 5, 15),
    'Company XYZ',
    'Software Engineer',
    ['Java', 'Flutter', 'Problem Solving'],
    'Available for part-time work on weekdays',
    'https://www.linkedin.com/in/johndoe',
  );

  ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/logo.png')
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Name: ${user.name}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('Occupation: ${user.occupation}'),
            SizedBox(height: 8),
            Text('Contact: ${user.contact}'),
            SizedBox(height: 8),
            Text('Location: ${user.location}'),
            SizedBox(height: 8),
            Text('Email: ${user.email}'),
            SizedBox(height: 8),
            Text('Address: ${user.address}'),
            SizedBox(height: 8),
            Text('Gender: ${user.gender}'),
            SizedBox(height: 8),
            Text('Date of Birth: ${user.dateOfBirth.toLocal()}'),
            SizedBox(height: 8),
            Text('Company: ${user.company}'),
            SizedBox(height: 8),
            Text('Job Title: ${user.jobTitle}'),
            SizedBox(height: 8),
            Text('Skills: ${user.skills.join(', ')}'),
            SizedBox(height: 8),
            Text('Availability: ${user.availability}'),
            SizedBox(height: 8),
            Text('LinkedIn: ${user.linkedin}'),
            // Add more details as needed
          ],
        ),
      ),
    );
  }
}

class User {
  final String name;
  final String occupation;
  final String contact;
  final String location;
  final String email;
  final String address;
  final String gender;
  final DateTime dateOfBirth;
  final String company;
  final String jobTitle;
  final List<String> skills;
  final String availability;
  final String linkedin;

  User(
    this.name,
    this.occupation,
    this.contact,
    this.location,
    this.email,
    this.address,
    this.gender,
    this.dateOfBirth,
    this.company,
    this.jobTitle,
    this.skills,
    this.availability,
    this.linkedin,
  );
}
