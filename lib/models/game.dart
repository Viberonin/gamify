import 'package:flutter/material.dart';

class Game {
  final String name;
  final String pics;
  final String desc;
  final String genre;
  final double rating;
  final DateTime releaseDate;

  Game({
  required this.name,
  required this.pics,
  required this.desc,
  required this.genre,
  required this.rating,
  required this.releaseDate,
});
}