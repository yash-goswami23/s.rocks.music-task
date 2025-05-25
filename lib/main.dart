import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:music_services_module/core/theme/app_theme.dart';
import 'package:music_services_module/firebase_options.dart';
import 'package:music_services_module/view/screens/home_screen.dart';
import 'package:music_services_module/viewmodels/service_provder.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ServiceProvider()..fetchServiceData(),
        ),
      ],
      child: MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
