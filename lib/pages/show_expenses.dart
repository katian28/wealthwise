import 'package:flutter/material.dart';
import 'package:wealthwise/expense.dart'; // Importing the Expense model
import 'view_expense.dart'; // Import the ViewExpenseScreen

class ShowExpensesScreen extends StatelessWidget {
  final List<Expense> expenses;

  ShowExpensesScreen({required this.expenses});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Show Expenses'),
        backgroundColor: Color.fromRGBO(19, 31, 36, 1),
      ),
      backgroundColor: Color.fromRGBO(19, 31, 36, 1), // Set background color
      body: expenses.isEmpty
          ? Center(
              child: Text(
                'No expenses added yet!',
                style: TextStyle(color: Color(0xFF6AB284), fontSize: 18), // Green text
              ),
            )
          : ListView.builder(
              itemCount: expenses.length,
              itemBuilder: (context, index) {
                final expense = expenses[index];
                return Card(
                  color: Colors.black12,
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  child: ListTile(
                    title: Text(
                      expense.name,
                      style: TextStyle(color: Colors.white, fontSize: 18), // White text
                    ),
                    subtitle: Text(
                      '\$${expense.amount.toStringAsFixed(2)}',
                      style: TextStyle(color: Color(0xFF6AB284)), // Green text
                    ),
                    trailing: Icon(
                      Icons.monetization_on,
                      color: Color(0xFF6AB284), // Green icon
                    ),
                    onTap: () {
                      // Debug print to check expense details
                      print("Navigating to ViewExpenseScreen with: ${expense.name}, \$${expense.amount}");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ViewExpenseScreen(expense: expense),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
    );
  }
}
