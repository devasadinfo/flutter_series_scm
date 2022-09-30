// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class AppbarTapbar extends StatefulWidget {
  const AppbarTapbar({Key? key}) : super(key: key);

  @override
  State<AppbarTapbar> createState() => _AppbarTapbarState();
}

class _AppbarTapbarState extends State<AppbarTapbar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _tabBar = TabBar(
      controller: _tabController,
      tabs: [
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
    );
    return Scaffold(
      //AppBar Property
      appBar: AppBar(
        // elevation: 20,
        // shadowColor: Colors.blue,
        centerTitle: true,
        title: const Text("FoodCare"),
        backgroundColor: Colors.blue,
        // toolbarHeight: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.search),
          Icon(Icons.more_vert),
        ],
        bottom: _tabBar,
      ),
      //Body Property
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
      bottomNavigationBar: Material(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        color: Colors.blue,
        child: _tabBar,
      ),
    );
  }
}
