part of 'models.dart';

enum FoodType { new_food, popular, recommended }

class Food extends Equatable {
  final int id;
  final String picturePath;
  final String name;
  final String description;
  final String ingredients;
  final int price;
  final double rate;
  final List<FoodType> types;

  Food(
      {this.id,
      this.picturePath,
      this.name,
      this.description,
      this.ingredients,
      this.price,
      this.rate,
      this.types = const []});

  factory Food.fromJson(Map<String, dynamic> data) => Food(
      id: data['id'],
      picturePath: data['picturePath'],
      name: data['name'],
      description: data['description'],
      ingredients: data['ingredients'],
      price: data['price'],
      // rate: (data['rate'] as num).toDouble(),
      rate: (data['rate'] as num).toDouble(),
      types: data['types'].toString().split(',').map((e) {
        switch (e) {
          case 'recommended':
            return FoodType.recommended;
            break;
          case 'popular':
            return FoodType.popular;
            break;
          default:
            return FoodType.new_food;
        }
      }).toList());

  @override
  List<Object> get props =>
      [id, picturePath, name, description, ingredients, price, rate];
}

List<Food> mockFoods = [
  Food(
      id: 4,
      picturePath: 'https://foodmarket.univanindonesia.co.id/storage/',
      name: "Ayam Bakar",
      description:
          "Ayam bakar potongan 8 ( 1 Ekor Besar), fresh langsung diolah dan dibakar. Siap Saji.",
      ingredients: "ayam, sambal",
      price: 75000,
      rate: 4,
      types: [FoodType.popular]),
  Food(
      id: 5,
      picturePath: 'https://foodmarket.univanindonesia.co.id/storage/',
      name: "Ayam Serundeng",
      description:
          "Nasi ayam + taburan serundeng kelapa + sambal korek atau ijo + tempe",
      ingredients: "Ayam, kelapa, sambal",
      price: 30000,
      rate: 5,
      types: [FoodType.recommended]),
  Food(
      id: 6,
      picturePath: 'https://foodmarket.univanindonesia.co.id/storage/',
      name: "Ayam Geprek",
      description: "Nasi + Ayam Geprek serta lalapan yang fresh",
      ingredients: "ayam, nasi",
      price: 30000,
      rate: 4,
      types: [FoodType.new_food]),
];
