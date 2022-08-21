import 'package:flutter/material.dart';

class ThemeBottonSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(onTap: (){},
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('light',
                    style: TextStyle(
                        fontSize: 18, color: Theme.of(context).primaryColor)),
                Icon(Icons.check)
              ],
            ),
          ),
        ),
        InkWell(onTap: (){},
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Text(
                  'dark',
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
