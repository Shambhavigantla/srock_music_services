class ServiceModel {
  final String id;
  final String title;
  final String description;
  final String icon;

  ServiceModel({
    required this.id,
    required this.title,
    required this.description,
    required this.icon,
  });

  factory ServiceModel.fromMap(Map<String, dynamic> data, String id) {
    return ServiceModel(
      id: id,
      title: data['title'] ?? '',
      description: data['description'] ?? '',
      icon: data['icon'] ?? '',
    );
  }
}