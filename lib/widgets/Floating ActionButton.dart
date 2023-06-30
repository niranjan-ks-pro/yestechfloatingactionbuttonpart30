import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int indexNum = 0;
  int counter = 0;
  List tabWidgets = [
    Text("Home", style: TextStyle(fontSize: 40)),
    Text("PROFILE", style: TextStyle(fontSize: 40)),
    Text("Dashboard", style: TextStyle(fontSize: 40)),
    Text("Settings", style: TextStyle(fontSize: 40)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //app bar
        appBar: AppBar(
          //text
          title: const Text("BottomNavigation Bar"),
          centerTitle: true,
          //BG colour
          backgroundColor: const Color.fromARGB(255, 8, 153, 27),

          //leading
          leading: const Icon(Icons.home),
          //Actions
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],

          //elevation
          elevation: 30,
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "HOME",
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "PROFILE",
                backgroundColor: Colors.red),
            BottomNavigationBarItem(
                icon: Icon(Icons.dashboard),
                label: "Dashboard",
                backgroundColor: Colors.green),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "Settings",
                backgroundColor: Color.fromARGB(255, 123, 122, 122)),
          ],
          iconSize: 30,
          // selectedFontSize: 10,
          // showSelectedLabels: true,
          // showUnselectedLabels: true,
          currentIndex: indexNum,
          onTap: (int index) {
            setState(() {
              indexNum = index;
            });
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
        // floatingActionButton: FloatingActionButton.extended(
        // onPressed: () {},
        //label: Text("share"),
        //icon: const Icon(
        //Icons.share,
        //)),

        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              counter++;
            });
          },
          foregroundColor: Colors.white,
          backgroundColor: const Color.fromARGB(255, 4, 77, 6),
          mini: true,
          tooltip: 'share file',
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Icon(Icons.add),
        ),
        body: Center(
          child: Text(
            '$counter',
            style: TextStyle(fontSize: 40),
          ),
        ));
  }
}
