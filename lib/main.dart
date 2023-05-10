import 'package:flutter/material.dart';

main() {
  runApp(App(title: 'Teste'));
}

class App extends StatelessWidget {
  final String title;

  const App({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData.dark(), home: Home());
  }
}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: GestureDetector(
        child: Text('Contador = $counter'),
        onTap: () {
          setState(() {
            counter++;
          });
        },
      )),
    );
  }
}
