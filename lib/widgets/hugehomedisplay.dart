import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

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
          padding: const EdgeInsets.all(20.20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Current Playlist', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).focusColor) ?? TextStyle(color: Theme.of(context).focusColor)),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('R&B Hits', style: Theme.of(context).textTheme.displayMedium?.copyWith(color: Theme.of(context).focusColor) ?? TextStyle(color: Theme.of(context).focusColor)),
                  Container(constraints: BoxConstraints(minWidth: 100, maxWidth: 300),
                  child: Text('All mine, Lie again, Petty call me everyday, Out of time, No love, Bad habit, and so much more', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).focusColor) ?? TextStyle(color: Theme.of(context).focusColor))),                  
                ],
              ),
              Spacer(), //spacer akan mengambil ruang kosong yang tersisa, sehingga menyeimbangkan posisi vertikalnya.
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('8k Likes', style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).focusColor) ?? TextStyle(color: Theme.of(context).focusColor)),
                ],
              ),
              SizedBox(height: 20) //space dengan height terkontrol
            ],
          ),
        ),
      ),
    );
  }
}