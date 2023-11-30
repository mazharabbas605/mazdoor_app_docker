
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Login'),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(40, 200, 40, 80),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                color: const Color.fromARGB(255, 4, 255, 213),
                width: 100,
                height: 50,
                child: const Center(
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(height: 20),
              const SizedBox(height: 20),
              _buildTextField('Phone Number', keyboardType: TextInputType.phone),
              const SizedBox(height: 10),
              _buildTextField('ID Card Number'),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Navigate to the home page on successful login
                  Navigator.pushReplacementNamed(context, '/home');
                },
                child: const Text('Login'),
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
}

