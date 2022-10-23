import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/pengaturan.dart';
import 'package:flutter_application_1/profile.dart';

class mydrawer extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<mydrawer> {
  int index = 0;
  List<Widget> list = [home(), profile(), pengaturan()];

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Navigation Drawer"),
        ),
        body: list[index],
        drawer: MyDrawer(
          onTap: (ctx, i) {
            setState(() {
              index = i;
              Navigator.pop(ctx);
            });
          },
        ),
      ),
    );
  }
}

class MyDrawer extends StatelessWidget {
  final Function onTap;

  MyDrawer({required this.onTap});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            DrawerHeader(
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 7, 163, 241)),
              child: Padding(
                padding: EdgeInsets.all(6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      width: 60,
                      height: 60,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/biru.jpg'),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Elisa Christian Alfrido Mantolas',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      '11edomantolas@gmail.com',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () => onTap(context, 0),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Pengaturan'),
              onTap: () => onTap(context, 2),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () => onTap(context, 1),
            ),
            Divider(
              height: 1,
            ),
            ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text('Log Out'),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => LoginForm(),
                    ))),
          ],
        ),
      ),
    );
  }
}
