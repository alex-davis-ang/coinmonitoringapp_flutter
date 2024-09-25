// import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'dart:async';  
// A simple function that simulates fetching data from a remote source  class ApiService {  class ApiService {  

class ApiService {  
  void fetchData() {  
    // Simulate an API call  
    print("Fetching data from API...");  
  }  
}  

class Repository {  
  final ApiService apiService;  

  Repository({required this.apiService});  

  void getData() {  
    apiService.fetchData();  
  }  
}

void main() {  
  runApp(  
    MultiProvider(  
      providers: [  
        Provider<ApiService>(create: (_) => ApiService()),  
        ProxyProvider<ApiService, Repository>(  
          update: (context, apiService, repository) => Repository(apiService: apiService),  
        ),  
      ],  
      child: MyApp(),  
    ),  
  );  
}  

class MyApp extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
      home: HomePage(),  
    );  
  }  
}  

class HomePage extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    final repository = Provider.of<Repository>(context, listen: false);  

    return Scaffold(  
      appBar: AppBar(title: Text('ProxyProvider Example')),  
      body: Center(  
        child: ElevatedButton(  
          onPressed: () {  
            repository.getData();  
          },  
          child: Text('Get Data'),  
        ),  
      ),  
    );  
  }  
}  