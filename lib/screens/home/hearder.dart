import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/screens/home/chatboat.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          // Logo
          Image.asset(
            'assets/logo.png',
            width: 50, // Adjust width as needed
            height: 70, // Adjust height as needed
          ),
           // Spacer to push other items to the right
          Container(width: 40,)   ,  // Spacer to push other items to the right
          Center(child: Text("e-stemps",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.amber)))
          ,Expanded(
              child: Container()),
          IconButton(
            icon: Image.asset('assets/img_2.png'),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (c)=>ChatScreen()));
            },
          ),

        ],
      ),
    );
  }
}
