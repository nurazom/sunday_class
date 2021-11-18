import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';

class FollowerModel {
  FollowerModel({
    @required this.username,
    @required this.imageUrl,
    @required this.friends,
  });
  String username;
  String imageUrl;
  int friends;
}

List<FollowerModel> followermodel = [
  FollowerModel(
    username: "Afran Nisho",
    imageUrl:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Afran_Nisho.jpg/220px-Afran_Nisho.jpg",
    friends: 252653,
  ),
  FollowerModel(
    username: "Mashrafe Mortaza",
    imageUrl:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f2/Mashrafe_conference_1.jpg/260px-Mashrafe_conference_1.jpg",
    friends: 7483783,
  ),
  FollowerModel(
    username: "Liton Dus",
    imageUrl:
        "https://www.cricbuzz.com/a/img/v1/152x152/i1/c170914/liton-das.jpg",
    friends: 87384738,
  ),
  FollowerModel(
    username: "Shoaib Malik",
    imageUrl:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/Shoaib_Malik_answering_RAPID_FIRE_questions_%28PCB%29_01.jpg/260px-Shoaib_Malik_answering_RAPID_FIRE_questions_%28PCB%29_01.jpg",
    friends: 8278372,
  ),
  FollowerModel(
    username: "Zayn Malik",
    imageUrl:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/1/10/Zayn_Wiki_%28cropped%29.jpg/220px-Zayn_Wiki_%28cropped%29.jpg",
    friends: 8982827,
  ),
  FollowerModel(
    username: "Ed Sheeran",
    imageUrl:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Ed_Sheeran-6886_%28cropped%29.jpg/220px-Ed_Sheeran-6886_%28cropped%29.jpg",
    friends: 7837237,
  ),
  FollowerModel(
    username: "Azam Khan Pop Singer",
    imageUrl:
        "https://img.discogs.com/wItx_Mi0foGdF0LmuE1vGokVySI=/fit-in/300x300/filters:strip_icc():format(jpeg):mode_rgb():quality(40)/discogs-images/A-5795255-1514036769-1044.jpeg.jpg",
    friends: 72837283,
  ),
  FollowerModel(
    username: "Nusrat Fateh Ali Khan",
    imageUrl:
        "https://upload.wikimedia.org/wikipedia/en/thumb/5/59/Nusrat_Fateh_Ali_Khan_03_1987_Royal_Albert_Hall.jpg/220px-Nusrat_Fateh_Ali_Khan_03_1987_Royal_Albert_Hall.jpg",
    friends: 909777665,
  ),
  FollowerModel(
    username: "Cristiano Ronaldo",
    imageUrl:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8c/Cristiano_Ronaldo_2018.jpg/220px-Cristiano_Ronaldo_2018.jpg",
    friends: 723722,
  ),
  FollowerModel(
    username: "Lionel Messi",
    imageUrl:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Lionel_Messi_20180626.jpg/220px-Lionel_Messi_20180626.jpg",
    friends: 878766,
  ),
];
