import '../../models/recipe.dart';
import 'package:flutter/material.dart';

class RecipeStepScreen extends StatefulWidget {
  final Recipe recipe;

  const RecipeStepScreen({Key? key, required this.recipe}) : super(key: key);

  @override
  _RecipeStepScreenState createState() => _RecipeStepScreenState();
}

class _RecipeStepScreenState extends State<RecipeStepScreen> {
  int currentStepIndex = 0;
  int score = 0;
  bool showScore = false;

  void showSubmitDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Congratulations!'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('You have completed the recipe!'),
              SizedBox(height: 16),
              Text('Your Score: $score'),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                // Navigate go to RecipeDetailsScreen
                Navigator.pushReplacementNamed(context, '/recipe_details',
                    arguments: widget.recipe);
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cooking Steps',
          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Color(0xffF7F6FF),
      ),
      body: Column(
        children: [
          Card(
            margin: EdgeInsets.only(top: 28.0),
            color: Colors.orange,
            elevation: 3,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Cooking Steps',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(height: 16),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.symmetric(horizontal: 16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Step ${currentStepIndex + 1}:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  widget.recipe.process[currentStepIndex].name,
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        if (currentStepIndex <
                            widget.recipe.process.length - 1) {
                          setState(() {
                            currentStepIndex++;
                          });
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey,
                        padding:
                            EdgeInsets.symmetric(horizontal: 35, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: Text(
                        'Skip',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                    Spacer(),
                    ElevatedButton(
                      onPressed: () {
                        if (currentStepIndex <
                            widget.recipe.process.length - 1) {
                          setState(() {
                            currentStepIndex++;
                            score += 100;
                          });
                        } else {
                          showSubmitDialog();
                          score += 100;
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        padding:
                            EdgeInsets.symmetric(horizontal: 35, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: Text(
                        'Next',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
