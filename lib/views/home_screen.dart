// home_screen.dart
import 'package:flutter/material.dart';
import 'widgets/recipe_card.dart';
import '../models/recipe.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();
  List<Recipe> filteredRecipes = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            // Handle hamburger menu
          },
        ),
        actions: [
          Container(
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://cdn-icons-png.flaticon.com/512/10337/10337609.png',
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Choose the ',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF8A8A8A),
              ),
            ),
            Text(
              'recipe you love',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF4F4F4F),
              ),
            ),
            SizedBox(height: 16),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.grey[200],
              ),
              child: TextField(
                controller: searchController,
                onChanged: (query) {
                  setState(() {
                    filteredRecipes = recipes
                        .where((recipe) => recipe.title
                            .toLowerCase()
                            .contains(query.toLowerCase()))
                        .toList();
                  });
                },
                decoration: InputDecoration(
                  hintText: 'Search recipes...',
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: filteredRecipes.isNotEmpty
                    ? filteredRecipes.length
                    : recipes.length,
                itemBuilder: (context, index) {
                  return RecipeCard(
                    recipe: filteredRecipes.isNotEmpty
                        ? filteredRecipes[index]
                        : recipes[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
