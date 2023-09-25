import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NavigationExample(),
    );
  }
}

class NavigationExample extends StatefulWidget {
  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          selectedIndex: currentPageIndex,
          backgroundColor: Colors.orange[800],
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
              selectedIcon: Icon(Icons.home),
            ),
            NavigationDestination(
              icon: Icon(Icons.school_outlined),
              label: 'School',
              selectedIcon: Icon(Icons.school),
            ),
            NavigationDestination(
              icon: Icon(Icons.business_outlined),
              label: 'Business',
              selectedIcon: Icon(Icons.business),
            ),
          ],
        ),
        body: <Widget>[
          Container(
            color: Colors.red,
            alignment: Alignment.center,
            child: Column(
              children: [
            Text(" Page1 SignUp Form"),

                Padding(padding: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Please Enter Name"
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Please Enter Number"
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Please Enter Mailid"
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Please Enter Password"
                    ),
                  ),
                ),

              ],
            ),

          ),
          Container(
            color: Colors.yellow,
            alignment: Alignment.center,
            child: Column(
                children: [
                Text(" Page2 SignIn Form"),

            Padding(padding: EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Please Enter Mailid/Phone number"
                ),
              ),
            ),
                  Padding(padding: EdgeInsets.all(10),
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "Please Enter Password"
                      ),
                    ),
                  ),
  ],
          ),
    ),
          Container(
            color: Colors.blue,
            alignment: Alignment.center,
            child: Text('Page 3'),
          ),
        ][currentPageIndex]

    );
  }
}