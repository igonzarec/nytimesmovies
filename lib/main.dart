import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ingenio_challenge/core/dio_client.dart';
import 'package:ingenio_challenge/data/movies_repository.dart';
import 'package:ingenio_challenge/ui/movies_bloc.dart';
import 'package:ingenio_challenge/ui/screens/movies_screen.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: BlocProvider(
        create: (context) => MoviesBloc(MoviesRepositoryImpl(DioClient())),
        child: const MoviesScreen(),
      ),
    );
  }
}
