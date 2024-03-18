class Clothings {
  String? id;
  String? title;
  String? price;
  Clothings({required this.id, required this.title, required this.price});
  factory Clothings.fromJson(Map<String, dynamic> json) {
    return Clothings(
        id: json['id'], title: json['title'], price: json['price']);
  }
}
