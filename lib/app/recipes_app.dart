import 'package:flutter/material.dart';
import 'pages/my_home_page.dart';

class RecipesApp extends StatelessWidget {
  const RecipesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();

    return MaterialApp(
      title: 'Calcular Receitas',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme
            .copyWith(primary: Colors.grey, secondary: Colors.black,),
      ),
      home: const MyHomePage(title: 'Calculador Receita'),
    );
  }
}
