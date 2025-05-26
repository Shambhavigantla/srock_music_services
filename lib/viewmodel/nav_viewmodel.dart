import 'package:flutter/material.dart';
import '../model/nav_item.dart';
import '../repository/nav_repository.dart';

class NavViewModel with ChangeNotifier {
  final NavRepository _repository;
  int _currentIndex = 0;

  NavViewModel(this._repository);

  List<NavItem> get navItems => _repository.getNavItems();
  int get currentIndex => _currentIndex;

  void changeIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}