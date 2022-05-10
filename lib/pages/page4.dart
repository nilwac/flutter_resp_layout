import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  const Page4({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 250,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
