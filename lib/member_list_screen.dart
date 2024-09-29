import 'package:flutter/material.dart';

import 'location_screen.dart';
import 'member.dart';

class MemberListScreen extends StatelessWidget {
  final List<Member> members = [
    Member('John Doe'),
    Member('Jane Doe'),
    Member('Alice Smith'),
    Member('Bob Johnson'),
    Member('Charlie Brown'),
    Member('David Wilson'),
    Member('Emily Davis'),
    // Add as many members as you want here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Members'),
      ),
      body: ListView.builder(
        itemCount: members.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(members[index].name),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(Icons.location_on),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              LocationScreen(member: members[index])),
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
