//code with added css property to it
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart'; // Import LatLng
import 'member.dart';
import 'location_screen.dart';
import 'attendance_screen.dart';  // Import the attendance screen

class MemberScreen extends StatelessWidget {
  // Example member data with LatLng and attendance list
  final List<Member> members = [
    Member(
      name: "SHIFA SHEIKH",
      currentLocation: const LatLng(37.42796133580664, -122.085749655962),
      attendance: [],  // Empty attendance list
    ),
    Member(
      name: "SUSEN JAYSWAL",
      currentLocation: const LatLng(37.42996133580664, -122.083749655962),
      attendance: [],  // Empty attendance list
    ),
    Member(
      name: "ADARSH GUPTA",
      currentLocation: const LatLng(37.42696133580664, -122.080749655962),
      attendance: [],  // Empty attendance list
    ),
  ];

  //const MemberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Member List",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white, // Text color in AppBar
          ),
        ),
        backgroundColor: Colors.blueAccent, // Background color for AppBar
      ),
      backgroundColor: Colors.grey[200], // Background color for the entire screen
      body: Padding(
        padding: const EdgeInsets.all(8.0), // Padding around the body
        child: ListView.builder(
          itemCount: members.length,
          itemBuilder: (context, index) {
            final member = members[index];
            return Card(
              elevation: 4, // Adds shadow to the card
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5), // Margin for the cards
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10), // Rounded corners for the card
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blueAccent, // Background color for avatar
                  child: Text(
                    member.name[0], // Display the first letter of the name
                    style: const TextStyle(color: Colors.white), // White text in avatar
                  ),
                ),
                title: Text(
                  member.name,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87, // Text color for member name
                  ),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.location_on),
                      color: Colors.blueAccent, // Color for location icon
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LocationScreen(member: member),
                          ),
                        );
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.check_circle),
                      color: Colors.green, // Color for attendance icon
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AttendanceScreen(member: member),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15), // Padding inside the ListTile
              ),
            );
          },
        ),
      ),
    );
  }
}