import 'package:appfoodpad/views/widgets/recipe_card.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'models/recipe.dart';

class Display extends StatefulWidget {
  const Display({super.key});

  @override
  State<Display> createState() => _DisplayState();
}

class _DisplayState extends State<Display> {
  Query refQ = FirebaseDatabase.instance.ref().child('recipes');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FirebaseAnimatedList(
          query: refQ,
          itemBuilder: (context, snapshot, animation, index) {
            Map recipeMap = snapshot.value as Map;
            Recipe recipe = Recipe(
              title: recipeMap['title'],
              description: recipeMap['description'],
              imageUrl: recipeMap['imageUrl'],
              ingredients: List<Ingredient>.from(
                (recipeMap['ingredients'] as List).map(
                      (ingredient) => Ingredient(
                    name: ingredient['name'],
                    quantity: ingredient['quantity'],
                  ),
                ),
              ),
              process: List<Process>.from(
                (recipeMap['process'] as List).map(
                      (process) => Process(
                    name: process['name'],
                  ),
                ),
              ),
            );

            return RecipeCard(recipe: recipe);
          },
        ),
      ),
    );
  }
}

