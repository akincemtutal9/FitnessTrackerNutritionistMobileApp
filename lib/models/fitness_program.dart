import 'package:flutter/material.dart';

enum ProgramType{
  cardio,
  lift,
}

class FitnessProgram{
final AssetImage image;
final String name;
final String cals;
final String time;
final ProgramType type;
FitnessProgram({
  required this.image,
  required this.cals,
  required this.name,
  required this.time,
  required this.type,
});

}
final List<FitnessProgram> fitnessPrograms = [
  FitnessProgram(
      image: AssetImage('../assets/running.jpg'),
      cals: '220kcal',
      name: 'Cardio',
      time: '20min',
      type: ProgramType.cardio
  ),

  FitnessProgram(
      image: AssetImage('../assets/weights.jpg'),
      cals: '220kcal',
      name: 'Arm Lift',
      time: '20min',
      type: ProgramType.lift,
  ),

];