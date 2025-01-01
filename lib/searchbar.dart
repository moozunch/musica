import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: TextField(
          style: const TextStyle(fontSize: 2),
          decoration: InputDecoration(
            hintText: 'Search',
            prefixIcon: Icon(
              Icons.search,
              color: Theme.of(context).disabledColor,
            ),
            hintStyle:Theme.of(context).
            textTheme.bodyMedium!.copyWith( fontSize: 16, color: Theme.of(context).disabledColor
            
            ),
          ),
        ),
      ),
    );
  }

}