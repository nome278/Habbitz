import 'package:flutter/material.dart';

class AddHabitScreen extends StatefulWidget {
  @override
  _AddHabitScreenState createState() => _AddHabitScreenState();
}

class _AddHabitScreenState extends State<AddHabitScreen> {
  final _formKey = GlobalKey<FormState>();
  String _title = '';
  String _description = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add New Habit'),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.all(16.0),
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(labelText: 'Habit Title'),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              onSaved: (value) => _title = value,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Description'),
              onSaved: (value) => _description = value,
            ),
            RaisedButton(
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  _formKey.currentState.save();
                  // TODO: Save the habit to local storage or state management here
                  Navigator.pop(context); // Return to the home screen
                }
              },
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}