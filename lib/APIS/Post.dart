class Post {
  final int userId;
  final int id;
  final String title;
  final String body;

  const Post(
      {required this.userId,
      required this.id,
      required this.title,
      required this.body});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
        userId: json['userId'],
        id: json['id'],
        title: json['title'],
        body: json['body']);
  }
}

//
// "userId": 2,
// "id": 12,
// "title": "in quibusdam tempore odit est dolorem",
// "body": "itaque id aut magnam\npraesentium quia et ea odit et ea voluptas et\nsapiente quia nihil amet occaecati quia id voluptatem\nincidunt ea est distinctio odio"
// },
// {
