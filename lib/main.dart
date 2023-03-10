import 'package:flutter/material.dart';
import 'package:flutter_custom_paint/pages/circle_page.dart';
import 'package:flutter_custom_paint/pages/linepage.dart';
import 'package:flutter_custom_paint/pages/rectangle_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index=0;
  List<Widget>pages=[
    const Linepage(),
    const RectanglePage(),
    const CirclePage() 
  ];
  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Custom Paint"),
      ),
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(items:const [
        BottomNavigationBarItem(icon: Icon(Icons.line_axis,),label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.check_box_outline_blank,),label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.circle,),label: '') ,
        
        
      ],onTap: (value) {
        setState(() {
          index=value;
        });
      },
      currentIndex: index,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey, ),
    );
  }
}

