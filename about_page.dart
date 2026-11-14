import 'package:flutter/material.dart';

import '../main.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('About')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.info, size: 48, color: Color(0xFF3F51B5)),
              const SizedBox(height: 8),
              const Text(
                'About Page',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 24),
              ElevatedButton.icon(
                onPressed: () =>
                    Navigator.pushNamed(context, MyApp.contactRoute),
                icon: const Icon(Icons.arrow_forward),
                label: const Text('Go to Contact'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
