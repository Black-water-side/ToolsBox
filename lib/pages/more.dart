import 'package:flutter/material.dart';

class MorePage extends StatefulWidget {
  const MorePage({Key? key}) : super(key: key);

  @override
  State<MorePage> createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          children: [
            IconButton(
              icon: const Icon(Icons.filter_1_rounded,
                  color: Color.fromRGBO(244, 196, 15, 1)),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.filter_1_rounded,
                  color: Color.fromRGBO(244, 196, 15, 1)),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.filter_1_rounded,
                  color: Color.fromRGBO(244, 196, 15, 1)),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
