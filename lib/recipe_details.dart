// recipe_details.dart
import 'package:flutter/material.dart';
import 'recipe.dart';

class RecipeDetailsScreen extends StatelessWidget {
  final Recipe recipe;

  const RecipeDetailsScreen({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(
              recipe.imageUrl,
              height: 300, // Adjust the height as needed
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Details',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    recipe.description,
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 16),
                  _buildCard('เเสกนวัตถุดิบ', Icons.check_box),
                  SizedBox(height: 16),
                  _buildCard('ขั้นตอนการทำอาหาร', Icons.check_box),
                  SizedBox(height: 16),
                  _buildThirdCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildCard(String title, IconData icon) {
  return Card(
    elevation: 3,
    child: ListTile(
      contentPadding: EdgeInsets.symmetric(
          horizontal: 30.0, vertical: 8.0), // ปรับระยะห่างตามที่ต้องการ
      title: Row(
        children: [
          Expanded(
            child: Text(title),
          ),
          Icon(icon, size: 24.0), // ปรับขนาดของ Icon ตามที่ต้องการ
        ],
      ),
      onTap: () {
        // Handle card tap if needed
      },
    ),
  );
}

Widget _buildThirdCard() {
  return Card(
    elevation: 3,
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: () {
              // Handle start button tap
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xffFF9900),
              // เพิ่มขนาดของปุ่มที่นี่
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(8.0), // ปรับความโค้งมนตามที่ต้องการ
              ),
            ),
            child: Text(
              'Start Cooking',
              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
            ),
          ),
          Image.asset(
            'assets/img/scan_icon.png',
            width: 60,
            height: 60,
          ),
          Image.asset(
            'assets/img/score_icon.png',
            width: 60,
            height: 60,
          ),
        ],
      ),
    ),
  );
}
