import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Member App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MemberListScreen(), // Make sure this name matches the widget below
    );
  }
}

class MemberListScreen extends StatelessWidget {
  const MemberListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Member List'),
      ),
      body: const Center(
        child: Text('List of Members will appear here'),
      ),
    );
  }
}
