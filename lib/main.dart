import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'widgets/sidebar.dart';
import 'widgets/searchbar.dart' as searchbar;
import 'widgets/hugehomedisplay.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Musica',
      theme: ThemeData(
        primaryColor: const Color(0xFFFACD66),
        scaffoldBackgroundColor: const Color(0xFF1D2123),
        primaryColorDark: const Color(0xff1A1E1F),
        disabledColor: const Color(0x40EFEEE0),
        focusColor: const Color(0xFFFFFFFF),
        useMaterial3: true,
        fontFamily: 'SF-PRO-Text',
        textTheme: TextTheme(
          displayMedium: TextStyle(fontSize: 36, fontWeight: FontWeight.w700),
          bodyLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
          bodyMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,),
        )
      ),
      home: const MyHomePage(title: 'Listen To Your Favorite Music Anywhere'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColorDark,
        title:  Row(
          children: [
            Image.asset(
              'images/favicon.png',
              width: 24,
              height: 24,
              fit: BoxFit.cover,
            ),
            const SizedBox(width:100),
            const Expanded(child: searchbar.SearchBar()),
            const SizedBox(width: 124), // 24 + 100
          ],
        ),
      ),
      //SideBar
      body: Row(
        children: [
          Expanded(
            flex: 1, //sidebar width
            child: SideBar(),
          ), 
           Expanded(
            flex: 1, //sidebar width
            child: HugeDisplay(),
          ),
        ],
      )
    );
  }
}

