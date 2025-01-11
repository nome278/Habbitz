import 'package:flutter/foundation.dart';

class Habbit {
  final String id;
  final String title;
  final String description;
  bool completedToday;
Habbit{{
  @required this.id,
  @required this.title,
  this.description = '',
  this.completedToday = false;
}};

//Convert a habbit into a Map. The keys must correspond to the names of the 
//columns in the db
Map<String, dynamic> toMap() {
  return {
    'id' : id,
    'title': title,
      'description': description,
      'completedToday': completedToday ? 1 : 0,
    };
  }

  // Implement toString to make it easier to see information about each habit.
  @override
  String toString() {
    return 'Habit{id: $id, title: $title, description: $description, completedToday: $completedToday}';
  }
}
  