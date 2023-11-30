// lib/screens/registration_page.dart
import 'package:flutter/material.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Registration'),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Registration',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 20),
              _buildTextField('Name'),
              SizedBox(height: 10),
              _buildTextField('Phone Number', keyboardType: TextInputType.phone),
              SizedBox(height: 10),
              _buildTextField('Location'),
              SizedBox(height: 10),
              _buildTextField('Skills'),
              SizedBox(height: 10),
              _buildTextField('ID Card Number'),
              SizedBox(height: 20),
              _buildRadioButtons(),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                   Navigator.pushReplacementNamed(context, '/home');
                  // Handle registration logic here
                },
                child: Text('Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String label, {TextInputType? keyboardType}) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(),
      ),
      keyboardType: keyboardType,
    );
  }

  Widget _buildRadioButtons() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Select Role:', style: TextStyle(fontSize: 16)),
        Row(
          children: [
            Radio(value: 'mazdoor', groupValue: null, onChanged: null),
            Text('Mazdoor'),
          ],
        ),
        Row(
          children: [
            Radio(value: 'job_provider', groupValue: null, onChanged: null),
            Text('Job Provider'),
          ],
        ),
      ],
    );
  }
}