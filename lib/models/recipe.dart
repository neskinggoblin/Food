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
  Process({
    required this.name,
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
