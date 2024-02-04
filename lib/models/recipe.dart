class Recipe {
  final String title;
  final String description;
  final String imageUrl;
  final List<Ingredient> ingredients;
  final List<Process> process;

  Recipe({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.ingredients,
    required this.process,
  });
}

class Process {
  final String name;
<<<<<<< HEAD
  final int timer;
  Process({
    required this.name,
    required this.timer,
=======
  Process({
    required this.name,
>>>>>>> 0a6c9ea3c534797cb63b55880fecade289457ceb
  });
}

class Ingredient {
  final String name;
  final String quantity;

  Ingredient({
    required this.name,
    required this.quantity,
  });
}

// Dummy data for testing
// Dummy data for testing
