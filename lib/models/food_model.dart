class FoodModel {
  final int? id;
  final String? name;
  final String? description;
  int? quantity;
  final double? price;
  final String? image;
  FoodModel(
      {this.image,
      this.id,
      this.name,
      this.description,
      this.quantity,
      this.price});
}

List foods = [
  FoodModel(
      id: 1,
      image: 'assets/images/Food_1.png',
      name: 'Fried Chicken',
      price: 20.0,
      quantity: 2,
      description: 'Golden browse fried chicken'),
  FoodModel(
      id: 2,
      image: 'assets/images/Food_2.png',
      name: 'Cheese Sandwich',
      price: 18.0,
      quantity: 3,
      description: 'Grilled Cheese Sandwich'),
  FoodModel(
      id: 3,
      image: 'assets/images/Food_3.png',
      name: 'Egg Pasta',
      price: 15.0,
      quantity: 1,
      description: 'Spicy Chicken Pasta'),
  FoodModel(
      id: 4,
      image: 'assets/images/Food_1.png',
      name: 'Fried Chicken',
      price: 20.0,
      quantity: 2,
      description: 'Golden browse fried chicken'),
  FoodModel(
      id: 5,
      image: 'assets/images/Food_2.png',
      name: 'Cheese Sandwich',
      price: 18.0,
      quantity: 3,
      description: 'Grilled Cheese Sandwich'),
  FoodModel(
      id: 6,
      image: 'assets/images/Food_3.png',
      name: 'Egg Pasta',
      price: 15.0,
      quantity: 1,
      description: 'Spicy Chicken Pasta'),
  FoodModel(
      id: 7,
      image: 'assets/images/Food_1.png',
      name: 'Fried Chicken',
      price: 20.0,
      quantity: 2,
      description: 'Golden browse fried chicken'),
  FoodModel(
      id: 8,
      image: 'assets/images/Food_2.png',
      name: 'Cheese Sandwich',
      price: 18.0,
      quantity: 3,
      description: 'Grilled Cheese Sandwich'),
  FoodModel(
      id: 9,
      image: 'assets/images/Food_3.png',
      name: 'Egg Pasta',
      price: 15.0,
      quantity: 1,
      description: 'Spicy Chicken Pasta'),
  FoodModel(
      id: 10,
      image: 'assets/images/Food_1.png',
      name: 'Fried Chicken',
      price: 20.0,
      quantity: 2,
      description: 'Golden browse fried chicken'),
  FoodModel(
      id: 11,
      image: 'assets/images/Food_2.png',
      name: 'Cheese Sandwich',
      price: 18.0,
      quantity: 3,
      description: 'Grilled Cheese Sandwich'),
  FoodModel(
      id: 12,
      image: 'assets/images/Food_3.png',
      name: 'Egg Pasta',
      price: 15.0,
      quantity: 1,
      description: 'Spicy Chicken Pasta'),
];
