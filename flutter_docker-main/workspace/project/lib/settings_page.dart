// settings_page.dart

import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Text('Notification Settings'),
              subtitle: Text('Manage your notification preferences'),
              onTap: () {
                // Navigate to notification settings
              },
            ),
            Divider(),
            ListTile(
              title: Text('Privacy Settings'),
              subtitle: Text('Adjust your privacy preferences'),
              onTap: () {
                // Navigate to privacy settings
              },
            ),
            Divider(),
            ListTile(
              title: Text('Theme Settings'),
              subtitle: Text('Change the app theme'),
              onTap: () {
                // Navigate to theme settings
              },
            ),
            Divider(),
            ElevatedButton(
              onPressed: () {
                // Handle logout
                Navigator.pushReplacementNamed(context, '/welcome');
              },
              child: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
