import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TarBarTool extends StatefulWidget {
  const TarBarTool({Key? key}) : super(key: key);

  @override
  State<TarBarTool> createState() => _TarBarToolState();
}

class _TarBarToolState extends State<TarBarTool> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.star_fill),
            label: 'Favourites',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.clock_solid),
            label: 'Recents',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_alt_circle_fill),
            label: 'Contacts',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.circle_grid_3x3_fill),
            label: 'Keypad',
          ),
        ],
        backgroundColor: Colors.transparent,
      ),
      tabBuilder: (BuildContext context, int index) {
        return CupertinoTabView(
          builder: (BuildContext context) {
            return Center(
              child: Text('Content of tab $index', style: const TextStyle(color: Colors.black, fontSize: 20)),
            );
          },
        );
      },
    );
  }
}
