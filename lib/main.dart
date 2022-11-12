import 'package:easy_recording/view/recording_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);
  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     title: 'Flutter Demo',
  //     theme: ThemeData(

  //       primarySwatch: Colors.blue,
  //     ),
  //     home: ,
  //   );
  // }
  final _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const RecordingWidget()
      ),
    ]
  );

  @override
  Widget build(BuildContext context){
    return MaterialApp.router(
      routeInformationParser: _router.routeInformationParser, 
      routerDelegate: _router.routerDelegate
    );
  }
}
