import 'package:course_news_app/screens/discover_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home Page',
           style: Theme.of(context).textTheme.bodyLarge,
          ),
        centerTitle: true,
        toolbarHeight: 80,
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children:[ 
              Text(
              'Welcome News App !',
              style: Theme.of(context).textTheme.displayMedium,
              ),
            ]
        ),
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const DiscoverScreen()));
        } ,
        tooltip: 'DisoverPage',
        backgroundColor: Colors.blueAccent,
        
        child: const Icon(
          Icons.forward,
          size: 30,
          color: Colors.white,
          ), 
        ),
    );
  }
}