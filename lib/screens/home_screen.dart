import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => context.go('/firstscreen'),
              child: const Text('Go to first screen'),
            ),
            ElevatedButton(
              onPressed: () => context.go('/secondscreen'),
              child: const Text('Go to second screen'),
            ),
          ],
        ),
      ),
    );
  }
}
