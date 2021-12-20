import 'package:flutter/material.dart';
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
                child: buildRecipeCard(recipes[index]),);
            }),
      ),
    );
  }

  Widget buildRecipeCard(Recipe recipe) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image(image: AssetImage(recipe.imageUrl)),
            const SizedBox(
              height: 14.0,
            ),
            Text(
              recipe.label,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'Palatino'
              ),
            ),
          ],
        ),
      ),
    );
  }
}
