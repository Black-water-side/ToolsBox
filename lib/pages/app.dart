import 'package:demo2/pages/more.dart';
import 'package:flutter/material.dart';
import 'PopupMenuApp.dart';

class MainAppPage extends StatefulWidget {
  const MainAppPage({Key? key}) : super(key: key);

  @override
  State<MainAppPage> createState() => _MainAppPageState();
}

class _MainAppPageState extends State<MainAppPage> {
  SampleItem? selectedMenu;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 10,
        child: Scaffold(
          /// 页首
          appBar: AppBar(
            title: Row(
              children: [
                const Text('移动工具箱', style: TextStyle(color: Colors.black)),
                IconButton(
                  icon: const Icon(Icons.filter_1_rounded,
                      color: Color.fromRGBO(244, 196, 15, 1)),
                  onPressed: () {},
                ),
              ],
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.add_circle_outlined, color: Colors.red),
                onPressed: () {
                  Navigator.pushNamed(context, '/add');
                },
              ),
              PopupMenuButton<SampleItem>(
                // onSelected: (SampleItem item) {
                //   setState(() {
                //     selectedMenu = item;
                //   });
                // },
                onSelected: (SampleItem item) {
                  setState(() {
                    selectedMenu = item;
                  });
                  switch (item) {
                    case SampleItem.itemOne:
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const MorePage()));
                      break;
                    case SampleItem.itemTwo:
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const MorePage()));
                      break;
                    case SampleItem.itemThree:
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const MorePage()));
                      break;
                    case SampleItem.itemFour:
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const MorePage()));
                      break;
                    case SampleItem.itemFive:
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const MorePage()));
                      break;
                    case SampleItem.itemSix:
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const MorePage()));
                      break;
                    case SampleItem.itemSeven:
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const MorePage()));
                      break;
                  }
                },
                itemBuilder: (BuildContext context) =>
                    <PopupMenuEntry<SampleItem>>[
                  const PopupMenuItem<SampleItem>(
                    value: SampleItem.itemOne,
                    child: Text('分组管理'),
                  ),
                  const PopupMenuItem<SampleItem>(
                    value: SampleItem.itemTwo,
                    child: Text('分组设置'),
                  ),
                  const PopupMenuItem<SampleItem>(
                    value: SampleItem.itemThree,
                    child: Text('应用评分'),
                  ),
                  const PopupMenuItem<SampleItem>(
                    value: SampleItem.itemFour,
                    child: Text('分享应用'),
                  ),
                  const PopupMenuItem<SampleItem>(
                    value: SampleItem.itemFive,
                    child: Text('关于应用'),
                  ),
                  const PopupMenuItem<SampleItem>(
                    value: SampleItem.itemSix,
                    child: Text('设置'),
                  ),
                  const PopupMenuItem<SampleItem>(
                    value: SampleItem.itemSeven,
                    child: Text('更多页面'),
                  ),
                ],
                icon: const Icon(
                  Icons.more_vert,
                  color: Colors.grey,
                ),
              ),
            ],
            bottom: AppBar(
              title: const Row(
                children: [
                  TabBar(
                    tabs: [
                      Tab(text: "全部"),
                      Tab(text: "日常"),
                      Tab(text: "日常"),
                      Tab(text: "日常")
                    ],
                    indicatorColor: Colors.red,
                    isScrollable: true,
                    labelColor: Colors.red,
                    indicatorPadding: EdgeInsets.all(0.0),
                    unselectedLabelColor: Colors.grey,
                  ),
                ],
              ),
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            backgroundColor: const Color.fromRGBO(254, 254, 254, 1),
            primary: true,
            elevation: 0,
          ),

          /// 内容
          body: const TabBarView(children: <Widget>[]),

          /// 页脚
          // bottomNavigationBar: const Row(
          //   children: [],
          // ),
        ));
  }
}
