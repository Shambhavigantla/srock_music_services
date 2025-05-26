import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'view/home_screen.dart';
import 'package:srock_music_services/viewmodel/service_viewmodel.dart';
import 'repository/service_repository.dart';
import 'firebase_options.dart';
import 'repository/nav_repository.dart';
import 'viewmodel/nav_viewmodel.dart';
import 'view/widgets/custom_bottom_nav.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,);
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ServiceViewModel(ServiceRepository()),
        ),
        Provider<NavRepository>(create: (_) => NavRepository()),
        ChangeNotifierProvider(create: (ctx) => NavViewModel(ctx.read<NavRepository>())),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Music Services',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF181A20),
      ),
      home: Scaffold(
        body: const HomeScreen(),
        bottomNavigationBar: const CustomBottomNav(),
      ),
    );
  }
}
