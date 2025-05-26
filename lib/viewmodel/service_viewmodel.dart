import 'package:flutter/material.dart';
import '../model/service_model.dart';
import '../repository/service_repository.dart';

class ServiceViewModel extends ChangeNotifier {
  final ServiceRepository repository;
  List<ServiceModel> services = [];
  bool isLoading = false;
  String? error;

  ServiceViewModel(this.repository);

  Future<void> fetchServices() async {
    isLoading = true;
    error = null;
    notifyListeners();
    try {
      services = await repository.fetchServices();
    } catch (e) {
      error = 'Failed to load services';
    }
    isLoading = false;
    notifyListeners();
  }
}