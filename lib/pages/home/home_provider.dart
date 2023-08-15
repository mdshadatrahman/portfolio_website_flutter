import 'package:flutter/material.dart';

class HomeProvider with ChangeNotifier {
  List<String> pageNames = ['Home', 'About', 'Projects', 'Blogs', 'Contact'];
  int _currentPageIndex = 0;

  int get currentPageIndex => _currentPageIndex;

  void changeCurrentPageIndex(int index) {
    _currentPageIndex = index;
    notifyListeners();
  }
}
