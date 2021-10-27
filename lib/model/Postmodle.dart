//creat a postmodel cl
import 'package:flutter/cupertino.dart';

class PostModel {
  //creat a constractor
  PostModel({
    @required this.username,
    @required this.profileImageUrl,
    @required this.caption,
    @required this.postImageUrl,
    @required this.address,
    @required this.likes,
  });
  String username = "";
  String profileImageUrl = "";
  String caption = "";
  String postImageUrl = "";
  String address = "";
  dynamic likes = "";
}
