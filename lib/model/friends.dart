import 'package:flutter/material.dart';
class Friend {
  String name;
  String imageUrl;


  Friend({
    required this.name,
    required this.imageUrl,

});
}

List<Friend> favorite = [
  Friend(name: 'Ahmed',
      imageUrl:'assets/images/profile/01.jpg',
  ),
  Friend(name: 'Saly',
      imageUrl:'assets/images/profile/02.jpg',
  ),
  Friend(name: 'Alexis',
      imageUrl:'assets/images/profile/03.jpg',
  ),
  Friend(name: 'Stephan',
      imageUrl:'assets/images/profile/04.jpg',
  ),
  Friend(name: 'Sebastien',
      imageUrl:'assets/images/profile/05.jpg',
  ),
];
