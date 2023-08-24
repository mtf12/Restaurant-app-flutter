import 'package:flutter/material.dart';
import 'package:untitled1/screens/sign_up_screen.dart';


import 'login_screen.dart';
class OnBoarding3 extends StatefulWidget {
  const OnBoarding3({super.key});

  @override
  State<OnBoarding3> createState() => _OnBoarding3State();
}

class _OnBoarding3State extends State<OnBoarding3> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:  Padding(
      padding: const EdgeInsets.only(bottom:20),
      child: Column(
        children: [
          Expanded(
              child: Image.asset("assets/images/map.jpg",fit: BoxFit.cover,)),
          const SizedBox(height: 30,),
          Text("Free delivery offers",style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 25,
          ),),
          const SizedBox(height: 25,),
          Text("Get all your loved foods in one once place\nyou just place the order we do the rest",textAlign: TextAlign.center,style: TextStyle(
            fontSize: 15,
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
                backgroundColor: Colors.green.withOpacity(.5),
                radius: 5,
              ),
              SizedBox(width: 15,),
              CircleAvatar(
                backgroundColor: Colors.green,
                radius: 5,
              ),
            ],
          ),
          SizedBox(height: 15,),
          InkWell(
            onTap: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const SignUpScreen(),
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
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
                ),
              );
            },
            child: Text("Skip",style: TextStyle(
              color: Colors.grey,
              fontSize: 18,
            ),),
          ),
        ],
      ),
      )
    );
  }
}
