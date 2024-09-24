import "package:flutter/material.dart";
import 'package:work/search_result_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SearchResultsScreen();
  }
}



