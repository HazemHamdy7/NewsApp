class Articles {
  final List<dynamic> articles;
  Articles({
    required this.articles,
  });

  factory Articles.fromJson(Map<String, dynamic> jsonData) {
    return Articles(articles: jsonData['articles']);
  }

  // Map<String, dynamic> toMap() {
  //   return <String, dynamic>{
  //     'aricles': aricles.map((x) => x.toMap()).toList(),
  //   };
  // }

  // factory Articles.fromMap(Map<String, dynamic> map) {
  //   return Articles(
  //     aricles: List<Article>.from(
  //       (map['aricles'] as List<int>).map<Article>(
  //         (x) => Article.fromMap(x as Map<String, dynamic>),
  //       ),
  //     ),
  //   );
  // }

  // String toJson() => json.encode(toMap());

  // factory Articles.fromJson(String source) =>
  //     Articles.fromMap(json.decode(source) as Map<String, dynamic>);
}
