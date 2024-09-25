// import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:async';  
// A simple function that simulates fetching data from a remote source  
Future<String> fetchData() async {  
  await Future.delayed(Duration(seconds: 20));  // Simulating network latency  
  return 'Hello from FutureProvider!';  
}  
void main() {  
  runApp(  
    FutureProvider<String>(  
      create: (context) => fetchData(),  
      initialData: 'Loading...',  // Optional: Provide initial data while the future is being resolved  
      child: MyApp(),  
    ),  
  );  
}  

class MyApp extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
      title: 'FutureProvider Example',  
      theme: ThemeData(  
        primarySwatch: Colors.blue,  
      ),  
      home: MyHomePage(),  
    );  
  }  
}  

class MyHomePage extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    final futureData = Provider.of<String>(context);  
    
    return Scaffold(  
      appBar: AppBar(  
        title: Text('FutureProvider Example'),  
      ),  
      body: Center(  
        child: Text(  
          futureData,  // Display the data provided by FutureProvider  
          style: TextStyle(fontSize: 24),  
        ),  
      ),  
    );  
  }  
}  