import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


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
          style: TextStyle(fontSize: 16, color: Theme.of(context).focusColor, fontFamily: 'SF-PRO-Text'),
          decoration: InputDecoration(
            hintText: 'Search',
            prefixIcon: Icon(
                CupertinoIcons.search,
              ),
            hintStyle:Theme.of(context).
            textTheme.bodyMedium!.copyWith( fontSize: 16, color: Theme.of(context).disabledColor, fontFamily: 'SF-PRO-Text',),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Theme.of(context).primaryColorDark, width: 2.0  ),
            ),
          ),
        ),
      ),
    );
  }

}

