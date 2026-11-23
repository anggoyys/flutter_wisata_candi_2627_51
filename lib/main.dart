import 'package:flutter/material.dart';
import 'package:flutter_wisata_candi_2627_51/provider/auth_provider.dart';
import 'package:flutter_wisata_candi_2627_51/provider/favorit_provider.dart';
import 'package:flutter_wisata_candi_2627_51/screens/profile.screen.dart';
import 'package:flutter_wisata_candi_2627_51/screens/search_screen.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => FavoriteProvider()),
        ChangeNotifierProvider(create: (_) => AuthProvider()),
      ],
      child: const MyApp(),
    ),

  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Candi',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: SearchScreen(),
    );
  }
}
