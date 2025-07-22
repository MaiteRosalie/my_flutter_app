import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './widgets/navigation_widget.dart';
import './app_state.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppState(),
      child: MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        ),
        home: Navigation(),
      ),
    );
  }
}