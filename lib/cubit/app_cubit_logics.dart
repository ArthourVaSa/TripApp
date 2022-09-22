// ignore_for_file: prefer_const_constructors

import 'package:cubit_practice/cubit/app_cubit_states.dart';
import 'package:cubit_practice/cubit/app_cubits.dart';
import 'package:cubit_practice/pages/home_page.dart';
import 'package:cubit_practice/pages/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubitLogics extends StatefulWidget {
  AppCubitLogics({Key? key}) : super(key: key);

  @override
  State<AppCubitLogics> createState() => _AppCubitLogicsState();
}

class _AppCubitLogicsState extends State<AppCubitLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubits, CubitStates>(builder: (context, state) {
        if (state is WelcomeState) {
          return WelcomePage();
        }

        if (state is LoadingState) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        if (state is LoadedState) {
          return HomePage();
        }

        return Container();
      }),
    );
  }
}
