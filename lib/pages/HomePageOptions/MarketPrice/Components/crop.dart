class Crop {
  final String? cropname;
  final String? price;

  Crop({this.cropname, this.price});

  factory Crop.fromJson(Map<String, dynamic> json) {
    return Crop(
      cropname: json['cropname'],
      price: json['price'],
    );
  }
}
