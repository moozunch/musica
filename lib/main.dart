import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

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
            const SizedBox(width:100),
            const Expanded(child: SearchBar()),
            const SizedBox(width: 124), // 24 + 100
          ],
        ),
      ),
      body: Center(
        child: Expanded(child: SideBar()),
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

class SideBar extends StatefulWidget {

  @override
  _SideBarState createState() => _SideBarState();

}

class _SideBarState extends State<SideBar> {
  int activeIndex = 0;
  //list untuk halaman berupa widget
  final List<Widget> pages = [
    Center(child: Text('Home', style: TextStyle(fontSize: 24),),),
    Center(child: Text('Favorites', style: TextStyle(fontSize: 24),),),

    Center(child: Text('Profile', style: TextStyle(fontSize: 24),),),
    Center(child: Text('Logout', style: TextStyle(fontSize: 24),),),
  ];

  //untuk object dan icon
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          //SideBar
          Container(
            width: 80,
            color: Theme.of(context).primaryColorDark,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildSideBarIcon( //kita buat di di function karena kita mau atur dia kalau ditekan kan aktif dan berubah warna atau bagaimana
                  CupertinoIcons.home, 0),
                  SizedBox(height: 20,),
                  buildSideBarIcon(CupertinoIcons.heart, 1),
                  SizedBox(height: 20,),
                  buildSideBarIcon(CupertinoIcons.person, 2),
                  SizedBox(height: 20,),
                  buildSideBarIcon(CupertinoIcons.square_arrow_right, 3),
                  SizedBox(height: 20,),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }


buildSideBarIcon(IconData icon, int index) {
  return GestureDetector(
    onTap: () {
      setState(() {
        activeIndex = index;
      });
    },
    child: Column(
      children: [
        Icon(icon, color: activeIndex == index 
        ? Theme.of(context).primaryColor
        : Theme.of(context).disabledColor)
      ],
    ),
  );
}}