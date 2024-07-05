import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test/features/ui/pages/home_page_screen/cubit/home_page_cubit.dart';
import 'package:test/features/ui/pages/home_page_screen/home_page.dart';

Route onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomePage.routeName:
      return MaterialPageRoute(
        builder: (context) => BlocProvider(
          create: (context) => HomePageCubit(),
          child: const HomePage(),
        ),
      );
    default:
      return MaterialPageRoute(
          builder: (context) => const Text('Invalid route'));
  }

}