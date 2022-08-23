import 'package:flutter/material.dart';

class RadioTap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 12),
      child: Column(
        children: [
          Image.asset('assets/images/radio_fm.png'),
          Padding(
            padding: const EdgeInsets.all(22.0),
            child: Text(
              'اذاعه القران الكريم',
              style: TextStyle(fontSize: 28),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(42.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.arrow_back_ios_new,
                  size: 25,
                  color: Color(0xffB7935F),
                ),
                Icon(Icons.arrow_right, size: 65, color: Color(0xffB7935F)),
                Icon(Icons.arrow_forward_ios_rounded,
                    size: 25, color: Color(0xffB7935F))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
