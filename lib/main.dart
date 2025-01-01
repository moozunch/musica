import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  // void _incrementCounter() {
  //   setState(() {
  //     // This call to setState tells the Flutter framework that something has
  //     // changed in this State, which causes it to rerun the build method below
  //     // so that the display can reflect the updated values. If we changed
  //     // _counter without calling setState(), then the build method would not be
  //     // called again, and so nothing would appear to happen.
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
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
            const SizedBox(width: 8),
            const Expanded(child: SearchBar()),
          ],
        ),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
      ),
    );
  }
}

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
              Icons.search,
              color: Theme.of(context).disabledColor,
            ),
            hintStyle:Theme.of(context).
            textTheme.bodyMedium!.copyWith( fontSize: 16, color: Theme.of(context).disabledColor, fontFamily: 'SF-PRO-Text'
            ),
          ),
        ),
      ),
    );
  }

}