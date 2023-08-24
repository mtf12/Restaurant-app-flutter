import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import 'login_screen.dart';
import 'on_boarding3.dart';

class OnBoarding2 extends StatefulWidget {
  const OnBoarding2({super.key});

  @override
  State<OnBoarding2> createState() => _OnBoarding2State();
}

class _OnBoarding2State extends State<OnBoarding2> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:  Padding(
      padding: const EdgeInsets.only(bottom:20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child: Image.asset("assets/images/onboarding2.png",fit: BoxFit.cover,),),
          const SizedBox(height: 30,),
          Text("Deliver your order fast",style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 27,
          ),),
          const SizedBox(height: 25,),
          Text("Fast delivery of your order and available \ncash on delivry",textAlign: TextAlign.center,style: TextStyle(
            fontSize: 20,
            color: Colors.grey,
          ),),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.green.withOpacity(.5),
                radius: 5,
              ),
              SizedBox(width: 15,),
              CircleAvatar(
                backgroundColor: Colors.green,
                radius: 5,
              ),
              SizedBox(width: 15,),
              CircleAvatar(
                backgroundColor: Colors.green.withOpacity(.5),
                radius: 5,
              ),
            ],
          ),
          SizedBox(height: 15,),
          InkWell(
            onTap: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const OnBoarding3(),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(17)
              ),
              child: Center(
                child: Text("Next",style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                ),),
              ),
              width: 330,
              height: 60,
            ),
          ),
          SizedBox(height: 15,),
          InkWell(
            onTap: (){
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
                ),
              );
            },
            child: Text("Skip",style: TextStyle(
              color: Colors.grey,
              fontSize: 20,
            ),),
          ),
        ],
      ),
      ),
    );
  }
}
