import 'package:flutter/material.dart';


class ActivityModule extends StatelessWidget {
  final String title;
  final List<Map<String, dynamic>> upcomingWorkouts;
  final List<Map<String, dynamic>> whatToTrainList;
  final Function(Map<String, dynamic> workoutData)? onWorkoutSelected;

  const ActivityModule({
    Key? key,
    required this.title,
    required this.upcomingWorkouts,
    required this.whatToTrainList,
    this.onWorkoutSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ... build the widget tree for the activity screen using the provided data
    // ...
  }
}