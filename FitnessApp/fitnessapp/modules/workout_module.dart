import 'package:flutter/material.dart';
import 'scaffold_module.dart';

class WorkoutDetailsModule extends StatelessWidget {
  // ... (same as before)

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Container(
      // ... (similar decoration and nested scroll view)
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        // ... (similar decoration)
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Container(
                      // ... (similar container for drag indicator)
                    ),
                    SizedBox(height: media.width * 0.05),
                    Row(
                      // ... (similar row for title and favorite button)
                    ),
                    SizedBox(height: media.width * 0.05),
                    IconTitleNextRow(
                      icon: "assets/icons/time_icon.png",
                      title: "Schedule Workout",
                      time: workoutData["time"].toString(),
                      color: AppColors.primaryColor2.withOpacity(0.3),
                      onPressed: () {
                        // Handle schedule workout functionality
                      },
                    ),
                    SizedBox(height: media.width * 0.02),
                    IconTitleNextRow(
                      icon: "assets/icons/difficulity_icon.png",
                      title: "Difficulity",
                      time: workoutData["difficulty"].toString(),
                      color: AppColors.secondaryColor2.withOpacity(0.3),
                      onPressed: () {},
                    ),
                    SizedBox(height: media.width * 0.05),
                    // ... (similar rows for "You'll Need" and equipment list)
                    SizedBox(height: media.width * 0.05),
                    Row(
                      // ... (similar row for "Exercises" and number of sets)
                    ),
                    ListView.builder(
                        padding: EdgeInsets.zero,
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: workoutData["exercises"].length,
                        itemBuilder: (context, index) {
                          var exercise = workoutData["exercises"][index];
                          return ExercisesSetSection(
                            sObj: exercise,
                            onPressed: onExercisePressed,
                          );
                        }),
                    SizedBox(height: media.width * 0.1),
                  ],
                ),