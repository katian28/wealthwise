import 'package:flutter/material.dart';
import 'package:wealthwise/expense.dart'; // Importing the Expense model

class ViewExpenseScreen extends StatelessWidget {
  final Expense expense;

  ViewExpenseScreen({required this.expense});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('View Expense'),
        backgroundColor: Color.fromRGBO(19, 31, 36, 1), // Set the background color
      ),
      backgroundColor: Color.fromRGBO(19, 31, 36, 1), // Set the background color
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Expense Details',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF6AB284), // Green color for text
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Name: ${expense.name}',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white, // White text
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Amount: \$${expense.amount.toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: 18,
                color: Color(0xFF6AB284), // Green text
              ),
            ),
          ],
        ),
      ),
    );
  }
}
