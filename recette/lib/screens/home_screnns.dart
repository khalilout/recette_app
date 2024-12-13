import 'package:flutter/material.dart';
import 'package:recette_app/screens/views/favoris.dart';
import 'package:recette_app/screens/views/recherche.dart';

class HomeScrenns extends StatefulWidget {
  const HomeScrenns({super.key});

  @override
  State<HomeScrenns> createState() => _HomeScrennsState();
}

class _HomeScrennsState extends State<HomeScrenns> {
  final PageController _pageController= PageController(initialPage: 0);
  int _curentIndex= 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recette_APP'),
      ),

      body: PageView(
        controller: _pageController,
        children: [
          const Center(child: Text("Ici c'est l'acceuil")),
          Favoris(),
          Recherche(),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _curentIndex,
        onTap: (index){
          setState(() {
            _curentIndex= index;
          });
          _pageController.jumpToPage(_curentIndex);
        },
        items: const <BottomNavigationBarItem>[

          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Acceuil',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Recherche',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favoris',
          ),

        ],
      ),
    );
  }
}
