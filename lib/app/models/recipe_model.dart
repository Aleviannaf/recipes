import 'package:recipes/app/models/ingredient_model.dart';

class Recipe {
  String label;
  String imageUrl;

  int servings;
  List<Ingredient> ingredients;
  Recipe(
    this.label,
    this.imageUrl,
    this.servings,
    this.ingredients,
  );
}
