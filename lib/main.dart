import 'package:kindergarden/config/config.dart';
import 'package:kindergarden/dependencies.dart';
import 'package:kindergarden/features/app/presentation/ui/app.dart';
import 'package:flutter/material.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeConfig();
  await initializeDependencies();
  runApp(const App());
}