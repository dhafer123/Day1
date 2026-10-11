import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // Challenge 1: new AppBar title + a backgroundColor
        appBar: AppBar(
          title: const Text('Playing with widgets'),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: Center(
          // Challenge 2: the body is now a Column (stacks widgets vertically)
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Challenge 3: an Icon above the texts
              const Icon(
                Icons.favorite,
                color: Colors.red,
                size: 64,
              ),
              const SizedBox(height: 16),

              const Text(
                'Hello Flutter!',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),

              // Challenge 4: a Text wrapped in a styled Container
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Text(
                  'This is my first Flutter app',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              const SizedBox(height: 24),

              // Challenge 5 (bonus): a button that prints in the console
              ElevatedButton(
                onPressed: () {
                  debugPrint('Button pressed!');
                },
                child: const Text('Press me'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}