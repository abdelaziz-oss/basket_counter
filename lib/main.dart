import 'package:basketball_counter/logic/counter_cubit.dart';
import 'package:basketball_counter/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp( PointsCounter());
}


class PointsCounter extends StatelessWidget {
  int teamAPoints = 0;

  int teamBPoints = 0;

  PointsCounter({super.key});

 

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterCubit(),
      child:  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
