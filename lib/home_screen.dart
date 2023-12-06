import 'package:flutter/material.dart';
import 'package:customized_dialogs/customized_dialog.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Customized Dialogs'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(36.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(width: 1000),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AppDialogs.androidDialog(
                      context,
                      'Delete Account',
                      'Are you sure you want to delete your account? This action cannot be undone!',
                    );
                  },
                );
              },
              child: const Text('Material Dialog'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('Cupertino Dialog'),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AppDialogs.iosDialog(
                      context,
                      'Delete Account',
                      'Are you sure you want to delete your account? This action cannot be undone!',
                    );
                  },
                );
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AppDialogs.customizedDialog(
                          context,
                          'Delete Account',
                          'Are you sure you want to delete your account? This action cannot be undone!',
                        );
                      });
                },
                child: const Text('Customized As Platform')),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('Animated Dialog'),
              onPressed: () {
                AppDialogs.animateDialog(
                  context,
                  AppDialogs.customizedDialog(
                    context,
                    'Animated Dialog',
                    'Are you sure you want to delete your account? This action cannot be undone.',
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
