import 'package:flutter/material.dart';
import 'package:matule_app/app.dart';
import 'package:matule_app/features/home/provider/product_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ProductProvider(),
      child: MatuleApp(),
    ),
  );
}