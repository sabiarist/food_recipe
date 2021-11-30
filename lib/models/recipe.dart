class Recipe {
  final String name;
  final double rating;
  final String totalTime;
  final String images;

  Recipe(this.name, this.rating, this.totalTime, this.images);

  factory Recipe.fromJson(dynamic json){
    return Recipe(
        json['name'] as String,
        json['rating'] as double,
        json['totalTime'] as String,
        json['images'][0]['hostedLargeUrl'] as String
    );
  }

  static List<Recipe> recipesFromSnapshot(List snapshot) {
    return snapshot.map((data) {
      return Recipe.fromJson(data);
    }).toList();
  }

  @override
  String toString(){
    return 'Recipe {name: $name, rating: $rating,totalTime: $totalTime,  image: $images}';
  }
}