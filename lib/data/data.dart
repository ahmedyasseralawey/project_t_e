import 'package:flutter/material.dart';
import 'package:progect_t_e/model/post.dart';
import 'package:progect_t_e/model/user.dart';

const User currentUser =
    User(name: 'Adam Ahmed ', imageuser: ('view.jpeg'));

final List<User> onlineUser = [
  const User(name: 'soo', imageuser: ('view.jpeg')),
  const User(name: ' Ali ', imageuser: ('view.jpeg'))
];
final List<Post> posts = [
  const Post(
    user: currentUser,
    caption: 'Check out these cool puppers',
    timeAgo: '58m',
    imageUrl: ('view.jpeg'),
    likes: 1202,
    comments: 184,
    shares: 96,
  ),
  const Post(
    user: currentUser,
    caption: 'Check out these cool puppers',
    timeAgo: '58m',
    imageUrl: ('view.jpeg'),
    likes: 1202,
    comments: 184,
    shares: 96,
  )
];
