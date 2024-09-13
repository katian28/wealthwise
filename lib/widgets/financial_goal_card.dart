import 'package:flutter/material.dart';

class FinancialGoalCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.green[800],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'This month',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          SizedBox(height: 10),
          Text(
            'Save \$1000 dollars',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('1 year', style: TextStyle(color: Colors.white)),
              Text('5 years', style: TextStyle(color: Colors.white)),
              Text('10 years', style: TextStyle(color: Colors.white)),
              Text('Customize', style: TextStyle(color: Colors.white)),
            ],
          ),
        ],
      ),
    );
  }
}
