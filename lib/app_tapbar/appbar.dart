import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class appbarTapbar extends StatefulWidget {
  const appbarTapbar({Key? key}) : super(key: key);

  @override
  State<appbarTapbar> createState() => _appbarTapbarState();
}

class _appbarTapbarState extends State<appbarTapbar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // elevation: 20,
        // shadowColor: Colors.blue,
        centerTitle: true,
        title: const Text("AppBar"),
        backgroundColor: Colors.orange,
        // toolbarHeight: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        leading: Icon(Icons.menu),
        actions: const [
          Icon(Icons.search),
          Icon(Icons.more_vert),
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(
              icon: Icon(Icons.home),
              text: 'Home',
            ),
            Tab(
              icon: Icon(Icons.list),
              text: 'Menu',
            ),
            Tab(
              icon: Icon(Icons.food_bank),
              text: 'Food',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Center(
            child: Text("Home"),
          ),
          Center(
            child: Text("Menu"),
          ),
          Center(
            child: Text("Food"),
          ),
        ],
      ),
    );
  }
}
