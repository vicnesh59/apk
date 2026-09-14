class RecipeItems {
  final String image, name, owner, ownerName, reviews;
  final int carb;

  final double rate;
  final int calorie, fat, protein, weight;
  final bool fav;

  RecipeItems({
    required this.weight,
    required this.image,
    required this.name,
    required this.owner,
    required this.ownerName,
    required this.reviews,
    required this.carb,
    required this.rate,
    required this.calorie,
    required this.fat,
    required this.protein,
    required this.fav,
  });
}

List<RecipeItems> items = [
  RecipeItems(
      weight: 200,
      image: "assets/food1.jpg",
      name: 'Food 1',
      owner: 'owner',
      ownerName: '',
      reviews: "24",
      carb: 12,
      rate: 4.0,
      calorie: 100,
      fat: 50,
      protein: 20,
      fav: true),
  RecipeItems(
      weight: 200,
      image: "assets/food2.jpg",
      name: 'Food 1',
      owner: 'owner',
      ownerName: '',
      reviews: "24",
      carb: 12,
      rate: 3.0,
      calorie: 100,
      fat: 50,
      protein: 20,
      fav: false),
  RecipeItems(
      weight: 200,
      image: "assets/food3.jpg",
      name: 'Food 1',
      owner: 'owner',
      ownerName: '',
      reviews: "24",
      carb: 12,
      rate: 4.8,
      calorie: 100,
      fat: 50,
      protein: 20,
      fav: false),
  RecipeItems(
      weight: 200,
      image: "assets/food4.jpg",
      name: 'Food 1',
      owner: 'owner',
      ownerName: '',
      reviews: "24",
      carb: 12,
      rate: 3.8,
      calorie: 100,
      fat: 50,
      protein: 20,
      fav: false),
  RecipeItems(
      weight: 200,
      image: "assets/food5.jpg",
      name: 'Food 1',
      owner: 'owner',
      ownerName: '',
      reviews: "24",
      carb: 12,
      rate: 4.4,
      calorie: 100,
      fat: 50,
      protein: 20,
      fav: false)
];
