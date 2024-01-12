class Vegetable {
  const Vegetable({
    required this.title,
    required this.price,
    required this.weight,
    required this.country,
    required this.description,
    required this.images,
  });

  final String title;
  final double price;
  final double weight;
  final String country;
  final String description;
  final List<String> images;
}
