import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.grey),
        darkTheme: ThemeData(primarySwatch: Colors.blue),
        color: Colors.blue,
        debugShowCheckedModeBanner: false,
        home: HomeActivity());
  }
}

class HomeActivity extends StatelessWidget {
  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  MyAlertDialog(context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Expanded(
          child: AlertDialog(
            title: Text("Alert"),
            content: Text("Do you wabt to delete ?"),
            actions: [
              TextButton(onPressed: () {}, child: Text("Yes")),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("No")),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      backgroundColor: Colors.blue,
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text("My App"),
        titleSpacing: 10,
        toolbarHeight: 60,
        elevation: 5,
        actions: [
          IconButton(
              onPressed: () {
                MySnackBar("Product Added", context);
              },
              icon: Icon(Icons.add)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
        onPressed: () {
          MySnackBar("Hi Clicked Add Button", context);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.comment), label: "Contact"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        onTap: (int index) {
          if (index == 2) {
            MySnackBar("I am profile", context);
          }
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                accountName: Text('MD.Adib Khan'),
                accountEmail: Text("Webadib@gmail.com"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                MySnackBar("Home Button Clicked", context);
              },
            ),
            ListTile(leading: Icon(Icons.home), title: Text("About Us")),
            ListTile(leading: Icon(Icons.home), title: Text("Profile")),
            ListTile(leading: Icon(Icons.home), title: Text("Service")),
            ListTile(leading: Icon(Icons.home), title: Text("Contact Us")),
            ListTile(leading: Icon(Icons.home), title: Text("Phone")),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                accountName: Text('MD.Adib Khan'),
                accountEmail: Text("Webadib@gmail.com"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                MySnackBar("Home Button Clicked", context);
              },
            ),
            ListTile(leading: Icon(Icons.home), title: Text("About Us")),
            ListTile(leading: Icon(Icons.home), title: Text("Profile")),
            ListTile(leading: Icon(Icons.home), title: Text("Service")),
            ListTile(leading: Icon(Icons.home), title: Text("Contact Us")),
            ListTile(leading: Icon(Icons.home), title: Text("Phone")),
          ],
        ),
      ),
      //body container
      // body: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   children: [
      //     Container(
      //       width: 100,
      //       height: 100,
      //       decoration: BoxDecoration(
      //         color: Colors.blue,
      //         border: Border.all(color: Colors.black, width: 2),
      //       ),
      //       alignment: Alignment.center,
      //       margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
      //       padding: EdgeInsets.all(10),
      //       child: Text("Adib Khan"),
      //     ),
      //     Container(
      //       width: 100,
      //       height: 100,
      //       decoration: BoxDecoration(
      //         color: Colors.blue,
      //         border: Border.all(color: Colors.black, width: 2),
      //       ),
      //       alignment: Alignment.center,
      //       margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
      //       padding: EdgeInsets.all(10),
      //       child: Text("Adib Khan"),
      //     ),
      //   ],
      // ),

      //button alert dialog
      // body: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   children: [
      //     TextButton(
      //       onPressed: () {
      //         MySnackBar("This is Text Button", context);
      //       },
      //       child: Text("Text Button"),
      //     ),
      //     ElevatedButton(
      //       onPressed: () {
      //         MyAlertDialog(context);
      //       },
      //       child: Text(
      //         "Eleveted Buttoon",
      //         style: TextStyle(color: Colors.white),
      //       ),
      //       style: buttonStyle,
      //     ),
      //     OutlinedButton(
      //       onPressed: () {
      //         MySnackBar("This is elevated button", context);
      //       },
      //       child: Text("Outline Button"),
      //     ),
      //   ],
      // ),

      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), label: Text("First Name")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), label: Text("Last Name")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), label: Text("Email")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: ElevatedButton(onPressed: () {}, child: Text("Submit")),
            ),
          ],
        ),
      ),
    );
  }
}
