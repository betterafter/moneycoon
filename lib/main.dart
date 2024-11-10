import 'package:flutter/material.dart';
import 'package:moneycoon/di.dart';
import 'package:presentation/main.app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Di.initializeApp();

  runApp(const MainApp());
}
