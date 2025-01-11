import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Habit Tracker'),
      ),
      body: Center(
        child: Text('List of Habits will go here'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // This will open the screen to add a new habit
          Navigator.push(context, MaterialPageRoute(builder: (context) => AddHabitScreen()));
        },
        tooltip: 'Add Habit',
        child: Icon(Icons.add),
      ),
    );
  }
}