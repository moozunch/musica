import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'widgets/sidebar.dart';
import 'widgets/searchbar.dart' as searchbar;
// import 'widgets/hugehomedisplay.dart';

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
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox( //sizedbox macem container dengan ukuran fix 
            width: 80, // Sidebar width tetap
            child: SideBar(),
          ),
          Flexible( //expanded mengambil sisa ruang, jadi saran pakai widget lain seperti Flexible, spacer untuk ngasih ruang kosong
            flex: 1, //sidebar width
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Container(
                  width: constraints.maxWidth * 0.6,
                  child: Column( //wrape in column supaya bisa diatur posisinya, atas especially
                    crossAxisAlignment: CrossAxisAlignment.start, //supaya dia dikiri, nggak default tengah
                    children: [
                      HugeDisplay(),
                    ],
                  ),
                );
              },

            ),
          ),
        ],
      )
    );
  }
}


class HugeDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        color:Color.fromARGB(95, 99, 136, 209),
        height: 300,
        width: 600,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text('Current Playlist', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).focusColor) ?? TextStyle(color: Theme.of(context).focusColor),  ),


              Text('Current Playlist', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).focusColor) ?? TextStyle(color: Theme.of(context).focusColor),  ),
            ],
          ),
          

          
        ),
       
      ),
    );
  }
}
