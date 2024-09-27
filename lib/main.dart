import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Member List'),
      ),
      body: Center(
        child: Text('List of Members will appear here'),
      ),
    );
  }
}
