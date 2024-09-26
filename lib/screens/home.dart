import 'package:crypto_prices_monitor/models/trending_coins.dart';  
import 'package:crypto_prices_monitor/screens/coins_list.dart';  
import 'package:crypto_prices_monitor/screens/search_screen.dart';  
import 'package:flutter/material.dart';  

import 'trending.dart';  

class Home extends StatefulWidget {  
  const Home({super.key});  

  @override  
  State<Home> createState() => _HomeState();  
}  

class _HomeState extends State<Home> {  
  @override  
  Widget build(BuildContext context) {  
    Size size = MediaQuery.of(context).size;  

    return DefaultTabController(  
      length: 2,  
      child: Scaffold(  
        appBar: AppBar(  
          backgroundColor: const Color.fromARGB(255, 7, 7, 7),  
          leading: IconButton(  
              padding: const EdgeInsets.all(8.0),  
              onPressed: () {  
                Navigator.push(context, MaterialPageRoute(builder: (context) {  
                  return const SearchScreen();  
                }));  
              },  
              icon: const Icon(  
                Icons.wallet,  
                color: Colors.white60,  
              ),  
            ),
          actions: [  
            Padding(  
              padding: const EdgeInsets.all(8.0),  
              child: IconButton(  
                onPressed: () {  
                  Navigator.push(context, MaterialPageRoute(builder: (context) {  
                    return const SearchScreen();  
                  }));  
                },  
                icon: const Icon(  
                  Icons.search,  
                  color: Colors.white60,  
                ),  
              ),  
            ),  
          // SizedBox(height: 10,)  
          ], 
          bottom: TabBar(  
            dividerColor: Colors.grey[600],  
            indicatorColor: Colors.amber[900],  
            indicatorSize: TabBarIndicatorSize.label,  
            labelColor: Colors.amber[900],  
            tabs: const [  
              Tab(  
                icon: Icon(Icons.monetization_on, color: Colors.white),  
                text: "Coins list",  
              ),  
              Tab(  
                icon: Icon(Icons.trending_up, color: Colors.white),  
                text: "Trending",  
              ),  
            ],  
          ),  
        ),  
        body: Padding(  
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.05), // Example usage of size  
          child: const TabBarView(  
            children: [  
              CoinsList(),  
              Trending(),  
            ],  
          ),  
        ),  
        bottomNavigationBar: BottomAppBar(
          color: const Color.fromARGB(255, 7, 7, 7),    
        child: Container(  
          height: 50.0,  
          decoration: BoxDecoration(  
            color: const Color.fromARGB(255, 7, 7, 7),  
            border: Border(top: BorderSide(color: Colors.grey, width: 0.5)),  
          ),  
          padding: EdgeInsets.symmetric(horizontal: 100.0),  
          child: Row(  
            mainAxisAlignment: MainAxisAlignment.spaceBetween,  
            children: [  
              Container(  
                padding: EdgeInsets.all(8.0), // Custom padding inside the container  
                decoration: BoxDecoration(  
                  color: const Color.fromARGB(255, 206, 208, 212), // Background color for the container  
                  shape: BoxShape.circle, // Making the container circular  
                ),  
                child: Icon(  
                  Icons.navigate_before,  
                  color: const Color.fromARGB(255, 206, 208, 212), // Background color for the container  / Custom icon color  
                ),  
              ),  
              SizedBox(width: 5),
              Container(  
                padding: EdgeInsets.all(8.0),  
                decoration: BoxDecoration(  
                  color: const Color.fromARGB(255, 206, 208, 212), // Background color for the container    
                  borderRadius: BorderRadius.circular(8.0),  
                ),  
                child: Text(  
                  '1',  
                  style: TextStyle(  
                    height: 1,
                    color: Colors.white,  
                    fontWeight: FontWeight.bold,  
                    fontSize: 18.0,  
                  ),  
                ),  
              ),  
              SizedBox(width: 5),
              Container(  
                padding: EdgeInsets.all(8.0),  
                decoration: BoxDecoration(  
                  color: Colors.white,   
                  borderRadius: BorderRadius.circular(8.0),  
                ),  
                child: Text(  
                  '2',  
                  style: TextStyle(  
                    height: 1,
                    color: Colors.white,  
                    fontWeight: FontWeight.bold,  
                    fontSize: 18.0,  
                  ),  
                ),  
              ), 
              Container(  
                padding: EdgeInsets.all(8.0),  
                decoration: BoxDecoration(  
                  color: Colors.white,    
                  shape: BoxShape.circle, // Making the container circular  
                ),  
                child: Icon(  
                  Icons.navigate_next,  
                  color: Colors.white, // Custom icon color  
                ),  
              ),  
            ],  
          ),  
        ),
      ),  
      )
    );  
  }  
}