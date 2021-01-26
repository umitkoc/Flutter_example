import 'package:flutter/material.dart';
import 'package:shopmarketting/menu.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> _wigets;
  int index;
  @override
  void initState() {
    super.initState();
    _wigets = [
      Text("home", style: TextStyle(color: Colors.grey)),
      Text("category", style: TextStyle(color: Colors.grey)),
      Text("basket", style: TextStyle(color: Colors.grey)),
      Text("about", style: TextStyle(color: Colors.grey)),
      Text("settings", style: TextStyle(color: Colors.grey)),
      Text("close", style: TextStyle(color: Colors.grey)),
    ];
    index = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appbars(),
      drawer: Drawer(
        elevation: 0,
        child: Column(
          children: [header(), body(context)],
        ),
      ),
      body: Center(child: _wigets[index]),
      bottomNavigationBar: navigatorbottom(),
    );
  }

  Expanded body(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        color: Colors.black,
        child: Column(
          children: List.generate(Menu.menu.length, (int select) {
            return ListTile(
              selectedTileColor: Colors.amber,
              selected: index == select,
              leading: Menu.menu[select].icon,
              title: Center(
                  child: Text(Menu.menu[select].name,
                      style: TextStyle(color: Colors.white))),
              trailing: Icon(Icons.navigate_next_outlined, color: Colors.white),
              onTap: () {
                setState(() {
                  index = select;
                  Navigator.pop(context);
                });
              },
            );
          }),
        ),
      ),
    );
  }

  Expanded header() {
    return Expanded(
      child: Container(
        color: Colors.black,
        child: DrawerHeader(
          duration: Duration(milliseconds: 300),
          child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
                "https://images2.alphacoders.com/300/thumb-1920-3002.jpg"),
          ))),
        ),
      ),
    );
  }

  BottomNavigationBar navigatorbottom() {
    return BottomNavigationBar(
      selectedItemColor: Colors.amber,
      unselectedItemColor: Colors.white,
      currentIndex: index < 3 ? index : 0,
      onTap: (int _index) {
        setState(() {
          index = _index;
        });
      },
      backgroundColor: Colors.black,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.category_rounded), label: "category"),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket_rounded), label: "basket")
      ],
    );
  }

  AppBar appbars() {
    return AppBar(
      title: Text("Shop Marketting", style: TextStyle(color: Colors.grey)),
      centerTitle: true,
      backgroundColor: Colors.black,
    );
  }
}
