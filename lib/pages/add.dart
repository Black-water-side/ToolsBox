import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
  const AddPage({Key? key}) : super(key: key);

  @override
  State<AddPage> createState() => _AddPageState();
}

/// 添加工具页面
///

class _AddPageState extends State<AddPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('添加工具')),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                text: '日常工具',
              ),
              Tab(
                text: '开发工具',
              ),
              Tab(
                text: '设备工具',
              ),
              Tab(
                text: '设计工具',
              ),
              Tab(
                text: '图像工具',
              ),
              Tab(
                text: 'AI工具·',
              ),
              Tab(
                text: '其他工具',
              ),
            ],
            indicatorColor: Colors.red,
            isScrollable: true,
            labelColor: Colors.grey,
            indicatorPadding: EdgeInsets.all(0.0),
            unselectedLabelColor: Colors.grey,
          ),
          backgroundColor: Colors.black,
          toolbarHeight: 30,
          elevation: 0,
        ),
        body: const TabBarView(
            children: <Widget>[

            ]
        ),
      ),
    );
  }
}
