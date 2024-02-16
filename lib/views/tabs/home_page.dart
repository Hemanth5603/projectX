import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  width: w * 0.94,
                  height: h * 0.05,
                  padding:const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color:const Color.fromARGB(255, 228, 228, 228),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child:const Row(
                      children: [
                        Icon(Icons.search,color: Color.fromARGB(255, 33, 33, 33),),
                        SizedBox(width: 10,),
                        Text("Search for Meat Items",style: TextStyle(fontFamily: 'poppins',fontSize: 14),)
                      ],
                    ),
                  ),
                  
                  
                                

              ],
            ),
          ),
        )
      ),
    );
  }
}