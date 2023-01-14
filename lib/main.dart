import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:suitmedia_kampusmerdeka_tkd/cubit/get_name_cubit.dart';
import 'package:suitmedia_kampusmerdeka_tkd/cubit/get_selected_user.dart';
import 'package:suitmedia_kampusmerdeka_tkd/cubit/get_user/get_user_cubit.dart';
import 'package:suitmedia_kampusmerdeka_tkd/pages/home_page.dart';
import 'package:suitmedia_kampusmerdeka_tkd/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => GetNameCubit()),
        BlocProvider(create: (_) => GetUserCubit()),
        BlocProvider(create: (_) => GetSelectedUserCubit()),
      ],
      child: MaterialApp(
        title: 'Suitmedia Test x Kampus Merdeka',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: MyRouter.home,
        onGenerateRoute: (settings) => MyRouter.onGenerateRoute(settings),
      ),
    );
  }
}
