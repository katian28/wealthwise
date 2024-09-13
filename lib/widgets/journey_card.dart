import 'package:flutter/material.dart';

class JourneyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.green[800],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('assets/frog.png', height: 50),  // Replace with your frog image
          ElevatedButton(
            onPressed: () {},
            child: Text('See my journey'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green[700],
              textStyle: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}

