class Job {
  final int id;
  final String title;
  final String author;
  final String data;
  final int groupUser;
  final String urlImage;

  const Job({
    required this.id,
    required this.groupUser,
    required this.author,
    required this.data,
    required this.title,
    required this.urlImage,
  });

  factory Job.fromJson(Map<String, dynamic> json) => Job(
        id: json['id'],
        author: json['author'],
        data: json['data'],
    groupUser: json['groupUser'],
        title: json['title'],
        urlImage: json['urlImage'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'author': author,
        'groupUser': groupUser,
        'data': data,
        'urlImage': urlImage,
      };
}
