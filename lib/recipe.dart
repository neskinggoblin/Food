class Recipe {
  final String title;
  final String description;
  final String imageUrl; // เพิ่ม imageUrl ใน Recipe

  Recipe({
    required this.title,
    required this.description,
    required this.imageUrl,
  });
}

// Dummy data for testing
// Dummy data for testing
List<Recipe> recipes = [
  Recipe(
    title: 'ส้มตำเเซ่บๆเด้อ',
    description:
        'methionylglutaminylarginyltyrosylglutamylserylleucyl phenylalanylalanylglutaminylleucyllysylglutamylarginyl methionylglutaminylarginyltyrosylglutamylserylleucyl phenylalanylalanylglutaminylleucyllysylglutamylarginyl lysylglutamylglycylamethionylglutaminylarginyltyrosylglutamylserylleucyl phenylalanylalanylglutaminylleucyllysylglutamylarginyl lysylglutamylglycylamethionylglutaminylarginyltyrosylglutamylserylleucyl phenylalanylalanylglutaminylleucyllysylglutamylarginyl lysylglutamylglycylalysylglutamylglycylalanylphenylalanylvalylprolylphenyl alanylvalylthreonylleucylglycylaspartylprolylglycylisol eucylglutamylglutaminylserylleucyllysylisoleucylaspartyl threonylleucylisoleucylglutamylalanylglycylalanylaspartyl',
    imageUrl:
        'https://img.freepik.com/free-photo/stir-fried-kale-spicy-crispy-pork-wooden-table-thai-food-concept_1150-26544.jpg?w=1380&t=st=1706038205~exp=1706038805~hmac=7da31bc1ad545d6b7a9c0f43aadf7bc83bf5e04fb91131365b20692fd321b6fc',
  ),
  Recipe(
    title: 'Chicken Stir-Fry',
    description: 'Healthy and delicious',
    imageUrl:
        'https://img.freepik.com/free-photo/american-shrimp-fried-rice-served-with-chili-fish-sauce-thai-food_1150-26576.jpg?w=1380&t=st=1706038215~exp=1706038815~hmac=3b99f155ef68826d2c9cdf92d121ea42743500e3e520ef04c5a25eb8dfe69014',
  ),
  Recipe(
    title: 'Vegetarian Pizza',
    description: 'Delicious pizza with assorted vegetables',
    imageUrl:
        'https://img.freepik.com/premium-photo/pad-thai-stir-fried-rice-noodles-with-shrimp_1339-129036.jpg?w=1380',
  ),
  Recipe(
    title: 'Grilled Salmon',
    description: 'Grilled salmon with lemon and herbs',
    imageUrl:
        'https://img.freepik.com/free-photo/chicken-larb-plate-with-dried-chilies-tomatoes-spring-onions-lettuce_1150-27080.jpg?w=740&t=st=1706038245~exp=1706038845~hmac=f01b9b675694fd59c7550b53c6959a8ac54229dd2c2b6b4d658c64bbc13f6b63',
  ),
  Recipe(
    title: 'Chocolate Cake',
    description: 'Decadent chocolate cake with frosting',
    imageUrl:
        'https://img.freepik.com/free-photo/spicy-mixed-seafood-salad-with-thai-food-ingredients_1150-26434.jpg?w=740&t=st=1706038259~exp=1706038859~hmac=96bb91d05df5b5597e93a4baa0ca6790eb29f9ec2563e2ccac97b582359f2ca5',
  ),
  Recipe(
    title: 'Caprese Salad',
    description: 'Fresh and simple salad with tomatoes and mozzarella',
    imageUrl:
        'https://img.freepik.com/free-photo/close-up-pasta-with-mussels-dish_23-2148375696.jpg?w=1380&t=st=1706038275~exp=1706038875~hmac=6147550fb9cd66612faee21f3edffa8a26933dec5de754b64ffe1425b7c748ee',
  ),
];
