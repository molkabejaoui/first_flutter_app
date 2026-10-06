import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

final couleurs = ColorScheme.fromSeed(seedColor: Colors.green);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  ColorScheme? get couleurs => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorScheme: couleurs),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(children: [
          DrawerHeader(

            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [

                CircleAvatar(

                  backgroundImage: AssetImage("image/pro_pic.jpeg"),
                  radius: 100,

                ),

              ],

            ),

            decoration: BoxDecoration(

              gradient: LinearGradient(

                colors: [Colors.white, Theme.of(context).primaryColor],

              ),

            ),

          ),
          ListTile(
            leading:Icon(Icons.home) ,
            title: Text("Home"),
            trailing: Icon(Icons.arrow_forward),
            onTap: (){},
          ),
          Divider(height: 1,color:couleurs.outline),
          Divider(height: 1, color: Theme.of(context).primaryColor),
          ListTile(
            leading: Icon(Icons.ac_unit),
            trailing: Icon(Icons.arrow_forward),
            title: Text("Counter"),
            onTap: () {},
          ),
          Divider(height: 1, color: Colors.red),
          ListTile(
            leading: Icon(Icons.ac_unit),
            trailing: Icon(Icons.arrow_forward),
            title: Text("Chat"),
            onTap: () {},
          )

        ],),
      ),
      backgroundColor: couleurs.surface,
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: couleurs.primary,
        foregroundColor: couleurs.onPrimary,
      ),
      body: Center(
        child: Text(
          'Home Page',
          style: TextStyle(fontSize: 33, color: couleurs.secondary),
        ),
      ),
    );
  }
}
