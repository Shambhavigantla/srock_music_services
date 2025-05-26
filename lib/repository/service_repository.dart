import 'package:cloud_firestore/cloud_firestore.dart';
import '../model/service_model.dart';

class ServiceRepository {
  final _collection = FirebaseFirestore.instance.collection('services');

  Future<List<ServiceModel>> fetchServices() async {
    final snapshot = await _collection.get();
    return snapshot.docs
        .map((doc) => ServiceModel.fromMap(doc.data(), doc.id))
        .toList();
  }
}