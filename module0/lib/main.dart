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
            content: Text("Do you want to delete ?"),
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

  var MyItems = [
    {
      "img":
          "https://webdesignur.com/wp-content/uploads/2024/05/IMG_3938-1-1.jpeg",
      "title": "Nur"
    },
    {
      "img":
          "https://webdesignur.com/wp-content/uploads/2024/05/IMG_3938-1-1.jpeg",
      "title": "Adib"
    },
    {
      "img":
          "https://webdesignur.com/wp-content/uploads/2024/05/IMG_3938-1-1.jpeg",
      "title": "Sami"
    },
  ];

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          Activity1("Activity 1 msg received")),
                );
              },
              child: Text("Go to Activity 1"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Activity2()),
                );
              },
              child: Text("Go to Activity 2"),
            ),
          ],
        ),
      ),
    );

    //
    // return Scaffold(
    //   appBar: AppBar(
    //     backgroundColor: Colors.amberAccent,
    //     title: Text("My App"),
    //     titleSpacing: 10,
    //     toolbarHeight: 60,
    //     elevation: 5,
    //     actions: [
    //       IconButton(
    //           onPressed: () {
    //             MySnackBar("Product Added", context);
    //           },
    //           icon: Icon(Icons.add)),
    //     ],
    //   ),
    //   floatingActionButton: FloatingActionButton(
    //     elevation: 10,
    //     child: Icon(Icons.add),
    //     backgroundColor: Colors.blue,
    //     onPressed: () {
    //       MySnackBar("Hi Clicked Add Button", context);
    //     },
    //   ),
    //   bottomNavigationBar: BottomNavigationBar(
    //     currentIndex: 2,
    //     items: [
    //       BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
    //       BottomNavigationBarItem(icon: Icon(Icons.comment), label: "Contact"),
    //       BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
    //     ],
    //     onTap: (int index) {
    //       if (index == 2) {
    //         MySnackBar("I am profile", context);
    //       }
    //     },
    //   ),
    //   drawer: Drawer(
    //     child: ListView(
    //       children: [
    //         DrawerHeader(
    //           padding: EdgeInsets.all(0),
    //           child: UserAccountsDrawerHeader(
    //             decoration: BoxDecoration(color: Colors.blue),
    //             accountName: Text('MD.Adib Khan'),
    //             accountEmail: Text("Webadib@gmail.com"),
    //           ),
    //         ),
    //         ListTile(
    //           leading: Icon(Icons.home),
    //           title: Text("Home"),
    //           onTap: () {
    //             MySnackBar("Home Button Clicked", context);
    //           },
    //         ),
    //         ListTile(leading: Icon(Icons.home), title: Text("About Us")),
    //         ListTile(leading: Icon(Icons.home), title: Text("Profile")),
    //         ListTile(leading: Icon(Icons.home), title: Text("Service")),
    //         ListTile(leading: Icon(Icons.home), title: Text("Contact Us")),
    //         ListTile(leading: Icon(Icons.home), title: Text("Phone")),
    //       ],
    //     ),
    //   ),
    //   endDrawer: Drawer(
    //     child: ListView(
    //       children: [
    //         DrawerHeader(
    //           padding: EdgeInsets.all(0),
    //           child: UserAccountsDrawerHeader(
    //             decoration: BoxDecoration(color: Colors.blue),
    //             accountName: Text('MD.Adib Khan'),
    //             accountEmail: Text("Webadib@gmail.com"),
    //           ),
    //         ),
    //         ListTile(
    //           leading: Icon(Icons.home),
    //           title: Text("Home"),
    //           onTap: () {
    //             MySnackBar("Home Button Clicked", context);
    //           },
    //         ),
    //         ListTile(leading: Icon(Icons.home), title: Text("About Us")),
    //         ListTile(leading: Icon(Icons.home), title: Text("Profile")),
    //         ListTile(leading: Icon(Icons.home), title: Text("Service")),
    //         ListTile(leading: Icon(Icons.home), title: Text("Contact Us")),
    //         ListTile(leading: Icon(Icons.home), title: Text("Phone")),
    //       ],
    //     ),
    //   ),
    //   //body container
    //   // body: Row(
    //   //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //   //   children: [
    //   //     Container(
    //   //       width: 100,
    //   //       height: 100,
    //   //       decoration: BoxDecoration(
    //   //         color: Colors.blue,
    //   //         border: Border.all(color: Colors.black, width: 2),
    //   //       ),
    //   //       alignment: Alignment.center,
    //   //       margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
    //   //       padding: EdgeInsets.all(10),
    //   //       child: Text("Adib Khan"),
    //   //     ),
    //   //     Container(
    //   //       width: 100,
    //   //       height: 100,
    //   //       decoration: BoxDecoration(
    //   //         color: Colors.blue,
    //   //         border: Border.all(color: Colors.black, width: 2),
    //   //       ),
    //   //       alignment: Alignment.center,
    //   //       margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
    //   //       padding: EdgeInsets.all(10),
    //   //       child: Text("Adib Khan"),
    //   //     ),
    //   //   ],
    //   // ),
    //
    //   //button alert dialog
    //   // body: Row(
    //   //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //   //   children: [
    //   //     TextButton(
    //   //       onPressed: () {
    //   //         MySnackBar("This is Text Button", context);
    //   //       },
    //   //       child: Text("Text Button"),
    //   //     ),
    //   //     ElevatedButton(
    //   //       onPressed: () {
    //   //         MyAlertDialog(context);
    //   //       },
    //   //       child: Text(
    //   //         "Eleveted Buttoon",
    //   //         style: TextStyle(color: Colors.white),
    //   //       ),
    //   //       style: buttonStyle,
    //   //     ),
    //   //     OutlinedButton(
    //   //       onPressed: () {
    //   //         MySnackBar("This is elevated button", context);
    //   //       },
    //   //       child: Text("Outline Button"),
    //   //     ),
    //   //   ],
    //   // ),
    //
    //   //form
    //   // body: Padding(
    //   //   padding: const EdgeInsets.all(10.0),
    //   //   child: Column(
    //   //     mainAxisAlignment: MainAxisAlignment.start,
    //   //     children: [
    //   //       Padding(
    //   //         padding: const EdgeInsets.only(bottom: 5),
    //   //         child: TextField(
    //   //           decoration: InputDecoration(
    //   //               border: OutlineInputBorder(), label: Text("First Name")),
    //   //         ),
    //   //       ),
    //   //       Padding(
    //   //         padding: const EdgeInsets.only(bottom: 5),
    //   //         child: TextField(
    //   //           decoration: InputDecoration(
    //   //               border: OutlineInputBorder(), label: Text("Last Name")),
    //   //         ),
    //   //       ),
    //   //       Padding(
    //   //         padding: const EdgeInsets.only(bottom: 5),
    //   //         child: TextField(
    //   //           decoration: InputDecoration(
    //   //               border: OutlineInputBorder(), label: Text("Email")),
    //   //         ),
    //   //       ),
    //   //       Padding(
    //   //         padding: const EdgeInsets.only(bottom: 5),
    //   //         child: ElevatedButton(onPressed: () {}, child: Text("Submit")),
    //   //       ),
    //   //     ],
    //   //   ),
    //   // ),
    //
    //   //list and grid view
    //   // body: GridView.builder(
    //   //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //   //       crossAxisCount: 2, crossAxisSpacing: 0, childAspectRatio: 1),
    //   //   itemCount: MyItems.length,
    //   //   itemBuilder: (context, index) {
    //   //     return GestureDetector(
    //   //       onTap: () {
    //   //         MySnackBar(MyItems[index]['title'], context);
    //   //       },
    //   //       child: Container(
    //   //         margin: EdgeInsets.all(10),
    //   //         width: double.infinity,
    //   //         child: Image.network(
    //   //           MyItems[index]['img']!,
    //   //           fit: BoxFit.fill,
    //   //         ),
    //   //       ),
    //   //     );
    //   //   },
    //   // ),
    //
    //
    // );
  }
}

class Activity1 extends StatelessWidget {
  String msg;
  Activity1(this.msg, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Activity 1")),
      body: Center(child: Text(msg)),
    );
  }
}

class Activity2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Activity 2")),
      body: Center(child: Text("Welcome to Activity 2")),
    );
  }
}
