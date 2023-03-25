import 'package:flutter/material.dart';
import 'package:gorev/hermione_tanit.dart';
import 'package:gorev/kendini_tanit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HERMIONE GRANGER',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const HermioneTanit(),
    );
  }
}

