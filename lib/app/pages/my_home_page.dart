import 'package:flutter/material.dart';
import 'package:recipes/app/components/recipe_card.dart';
import 'package:recipes/app/models/recipe_model.dart';
import 'package:recipes/app/pages/recipes_detail_page.dart';
import 'package:recipes/app/repository/recipes_repository.dart';

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Recipe> recipes = samples;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: ListView.builder(
            itemCount: recipes.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(context,
                   MaterialPageRoute(
                     builder: (context){
                       return RecipeDetail(recipe: recipes[index]);
                     }
                   ));
                },
                child: RecipeCard(recipe: recipes[index]),);
            }),
      ),
    );
  }
}
