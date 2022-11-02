class Article {
  final String title;
  final String description;
  final String url;
  final String urlToImage;

  Article({
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
  });
  factory Article.fromJason(Map<String, dynamic> jsonData) {
    return Article(
      title: jsonData['title'],
      description: jsonData['description'],
      url: jsonData['url'],
      urlToImage: jsonData['urlToImage'],
    );
  }

  static fromMap(Map<String, dynamic> x) {}
}
