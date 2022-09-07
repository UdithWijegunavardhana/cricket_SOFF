import 'package:flutter/material.dart';

void _onItemTapped(int index) {
  print("Done");
}

bottomNavigationBar() {
  BottomNavigationBar(
    items: const [
      BottomNavigationBarItem(
          icon: Icon(Icons.qr_code),
          label: "QR Code"
      ),
      BottomNavigationBarItem(
          icon: Icon(Icons.sticky_note_2_sharp),
          label: "Machine Time"
      ),
      BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "Profile"
      ),
    ],
    currentIndex: 0,
    selectedItemColor: Colors.amber[800],
    onTap: _onItemTapped,
  );
}