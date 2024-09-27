import 'package:flutter/material.dart';

class MemberListScreen extends StatelessWidget {
  // Add the key parameter to the constructor
  const MemberListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Member List'),
      ),
      body: Center(
        child: const Text('List of Members will appear here'),
      ),
    );
  }
}
