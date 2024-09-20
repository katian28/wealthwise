import 'package:flutter/material.dart';
import '../widgets/financial_goal_card.dart';
import '../widgets/journey_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(19, 31, 36, 1),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Welcome', style: TextStyle(fontSize: 22, color: Colors.white)),
                  Text('Guyen', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.green)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text('Financial Goal', style: TextStyle(fontSize: 18, color: Colors.white)),
            ),
            FinancialGoalCard(),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text('Journey', style: TextStyle(fontSize: 18, color: Colors.white)),
            ),
            JourneyCard(),
          ],
        ),
      ),
    );
  }
}
