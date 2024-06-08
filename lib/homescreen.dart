import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(

        backgroundColor: Colors.white,
        title: Text("RnW",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 24),),
      ),
      drawer: Drawer(
        backgroundColor: Colors.black54,
      ),
    );
  }
}
