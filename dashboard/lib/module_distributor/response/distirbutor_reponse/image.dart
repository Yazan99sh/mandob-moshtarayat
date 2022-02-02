class Image {
  dynamic imageUrl;
  String? image;
  String? baseUrl;

  Image({this.imageUrl, this.image, this.baseUrl});

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        imageUrl: json['imageURL'] as dynamic?,
        image: json['image'] as String?,
        baseUrl: json['baseURL'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'imageURL': imageUrl,
        'image': image,
        'baseURL': baseUrl,
      };
}
