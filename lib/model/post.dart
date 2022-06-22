import 'package:social_media_app/model/friends.dart';

class Post {
  final Friend friend;
  final String imageUrl;
  final String timePosted;
  final String description;
  final String comments;
  final String shared;
  final String like;

  Post({
    required this.imageUrl,
    required this.description,
    required this.friend,
    required this.timePosted,
    required this.comments,
    required this.shared,
    required this.like,
});
}

final Friend ahmed = Friend(
    name: 'Ahmed',
    imageUrl:'assets/images/profile/01.jpg',

);
final Friend saly = Friend(
    name: 'Saly',
    imageUrl:'assets/images/profile/02.jpg',

);
final Friend alexis = Friend(
    name: 'Alexis',
    imageUrl:'assets/images/profile/03.jpg',

);
final Friend stephan = Friend(
    name: 'Stephan',
    imageUrl:'assets/images/profile/04.jpg',

);
final Friend sebastien = Friend(
    name: 'Sebastien',
    imageUrl:'assets/images/profile/05.jpg',

);
final Friend nancy = Friend(
    name: 'Nancy',
    imageUrl:'assets/images/profile/06.jpg',

);
final Friend jack = Friend(
    name: 'Jack',
    imageUrl:'assets/images/profile/07.jpg',

);
final Friend ghandi = Friend(
    name: 'Ghandi',
    imageUrl:'assets/images/profile/08.jpg',

);
final Friend samuel = Friend(
    name: 'Samuel',
    imageUrl:'assets/images/profile/09.jpg',

);

List<Post> posts = [
  Post(
    friend: ahmed,
    imageUrl: 'assets/images/posts/1.jpg',
    timePosted: '3 hours ago',
    shared: '28',
    comments: '18',
    like: '50',
    description: 'I love doing this',
  ),
  Post(
    friend: samuel,
    imageUrl: 'assets/images/posts/2.jpg',
    timePosted: '18 hours ago',
    shared: '33',
    comments: '10',
    like: '210',
    description: 'just wow',
  ),
  Post(
    friend: nancy,
    imageUrl: 'assets/images/posts/3.jpg',
    timePosted: '10 hours ago',
    shared: '12',
    comments: '19',
    like: '22',
    description: 'wonderful day',
  ),
  Post(
    friend: sebastien,
    imageUrl: 'assets/images/posts/4.jpg',
    timePosted: '16 hours ago',
    shared: '14',
    comments: '31',
    like: '32',
    description: 'spending amazing time',
  ),
  Post(
    friend: jack,
    imageUrl: 'assets/images/posts/5.jpg',
    timePosted: '2 hours ago',
    shared: '17',
    comments: '47',
    like: '30',
    description: 'come and spend the day with jack',
  ),
];