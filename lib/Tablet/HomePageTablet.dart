import 'package:flutter/material.dart';
import '../SubPages.dart';

class HomePageTablet extends StatefulWidget {
  const HomePageTablet({Key? key}) : super(key: key);

  @override
  _HomePageTabletState createState() => _HomePageTabletState();
}

class _HomePageTabletState extends State<HomePageTablet> {
  late SubPage _currSubPage;

  @override
  void initState() {
    super.initState();

    _currSubPage = appSubPages.first;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _currSubPage.title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        backgroundColor: Colors.deepPurpleAccent[200],
      ),
      body: _currSubPage.builder(context),
      drawer: buildDrawer(context),
    );
  }

  Widget buildDrawer(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurpleAccent[200],
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 120,
                backgroundColor: Colors.indigoAccent[100],
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 2.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                    child: Material(
                      elevation: 20,
                      shadowColor: Colors.black,
                      child: Image.asset(
                        'images/profile_pic.jpg',
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Kunal Diwakar',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                'kunaldiwakar31@gmail.com',
                style: TextStyle(color: Colors.white70, fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Divider(
                color: Colors.black38,
                thickness: 1.5,
                height: 20,
              ),
            ),
            for(int i = 0; i < 4; i++)
              buildMenuItem(
                  text: appSubPages[i].title,
                  icon: appSubPages[i].icon,
                  onTap: () {
                    setState(() {
                      Navigator.pop(context);
                      _currSubPage = appSubPages[i];
                    });
                  }),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem(
      {required String text,
      required IconData icon,
      required VoidCallback onTap}) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
        child: ListTile(
          leading: Icon(icon, color: Colors.white),
          title: Text(
            text,
            style: TextStyle(fontSize: 18.0, color: Colors.white),
          ),
          hoverColor: Colors.white70,
          onTap: onTap,
        ),
      ),
    );
  }
}
