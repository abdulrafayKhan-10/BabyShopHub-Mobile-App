import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return 
    Column(
        children: const [
          Image(
            image: AssetImage("assets/screens/SEARCH_1.png"),
          ),
          Image(
            image: AssetImage("assets/screens/Search_2.png"),
          ),
          Image(
            image: AssetImage("assets/screens/Search_3.png"),
          ),
          Image(
            image: AssetImage("assets/screens/Search_5.png"),
          ),
          Image(
            image: AssetImage("assets/screens/Search_5.png"),
          ),
          Image(
            image: AssetImage("assets/screens/Search_6.png"),
          ),
          Image(
            image: AssetImage("assets/screens/Search_7.png"),
          ),
          Image(
            image: AssetImage("assets/screens/Search_8.png"),
          ),
        ],
      );
  }
}
