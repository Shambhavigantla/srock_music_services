import 'package:flutter/material.dart';

class ServiceDetailScreen extends StatelessWidget {
  final String serviceName;
  const ServiceDetailScreen({super.key, required this.serviceName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(serviceName),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Text(
          'You tapped on: $serviceName',
          style: const TextStyle(fontSize: 22, color: Colors.white),
        ),
      ),
      backgroundColor: const Color(0xFF181A20),
    );
  }
}