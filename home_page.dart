import 'package:flutter/material.dart';

import '../main.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  'assets/images/home.png',
                  width: 300,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 24),
              const Icon(Icons.home, size: 48, color: Color(0xFF3F51B5)),
              const SizedBox(height: 8),
              const Text(
                'Home Page',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 24),
              ElevatedButton.icon(
                onPressed: () => Navigator.pushNamed(context, MyApp.aboutRoute),
                icon: const Icon(Icons.arrow_forward),
                label: const Text('Go to About'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
