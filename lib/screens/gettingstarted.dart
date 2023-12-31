import 'package:flutterverse/screens/mainpage.dart';
import 'package:flutter/material.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/firstpage.jpg'),
          fit: BoxFit.cover,
          opacity: 0.5,
        )),
        child: const Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              bottom: 40,
              child: Center(
                child: SizedBox(
                  width: 250,
                  child: Button1(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Button1 extends StatelessWidget {
  const Button1({super.key});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Mainpage()));
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.red,
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Get Started",
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Icon(
            Icons.restaurant,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
