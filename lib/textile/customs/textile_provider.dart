import 'package:flutter/material.dart';

class TextileProvider extends ChangeNotifier {
  bool _isFavorite = false;

  bool get getFavorite => _isFavorite;
  set setFavorite(bool fav) => _isFavorite = fav;
}
