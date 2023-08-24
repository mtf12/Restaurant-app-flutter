import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'login_screen.dart';
import 'on_boarding2.dart';

class onBoarding1 extends StatefulWidget {
  const onBoarding1({super.key});

  @override
  State<onBoarding1> createState() => _onBoarding1State();
}
class _onBoarding1State extends State<onBoarding1> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: Column(
          children: [
            Expanded(child: Image.asset("assets/images/onboadring1.jpg",fit: BoxFit.cover,)),
            const SizedBox(height: 30,),
            const Text("Choose Your Favourite Meal",style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 25,
            ),),
            const SizedBox(height: 15,),
            const Text("Choose your favourite meal and explore\nour daily offers",textAlign: TextAlign.center,style: TextStyle(
              fontSize: 18,
              color: Colors.grey,
            ),),
            const SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 5,
                ),
                const SizedBox(width: 15,),
                CircleAvatar(
                  backgroundColor: Colors.green.withOpacity(.5),
                  radius: 5,
                ),
                const SizedBox(width: 15,),
                CircleAvatar(
                  backgroundColor: Colors.green.withOpacity(.5),
                  radius: 5,
                ),
              ],
            ),
            const SizedBox(height: 15,),
            InkWell(
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const OnBoarding2(),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(17)
                ),
                width: 330,
                height: 60,
                child: const Center(
                  child: Text("Next",style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                  ),),
                ),
              ),
            ),
            const SizedBox(height: 10,),
            InkWell(
              onTap: (){
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                );
              },
              child: const Text("Skip",style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
              ),),
            ),
          ],
        ),
      )
    );
  }
}
