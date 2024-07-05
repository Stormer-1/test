import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test/app_router/router.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:test/features/ui/pages/emotions_page/cubit/emotions_page_cubit.dart';

void main() {
  initializeDateFormatting().then((_) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EmotionsPageCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Test',
        onGenerateRoute: onGenerateRoute,
        theme: ThemeData(
          primarySwatch: Colors.orange,
        ),
      ),
    );
  }
}
