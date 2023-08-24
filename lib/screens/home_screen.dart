import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled1/screens/sign_up_screen.dart';

import 'category.dart';
import 'item_details.dart';
import 'login_screen.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
      drawer: Container(
          color: Colors.white,
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                color: Colors.green,
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 15),
                      height: 70,
                      decoration: const BoxDecoration(
                        color:  Colors.green,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/images/user2.png',),
                        ),
                      ),
                    ),
                    const Text ("My Account ", style: TextStyle(color: Colors.white, fontSize: 20),),
                    const SizedBox(height: 30,),

                  ],
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                    padding: const EdgeInsets. only (top: 25,left: 110, right: 110,bottom: 25)
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpScreen(),));
                },
                child: const Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                    padding: const EdgeInsets. only (top:25,bottom: 25,left: 110, right: 110)
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen(),));

                },
                child: const Text(
                  'Sign In',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              )
            ],
          )),
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context){
            return IconButton(
                onPressed: (){Scaffold.of(context).openDrawer();},
                icon:Image.asset("assets/images/menu2.png",width: 28,)

            );
          },
        ),

       backgroundColor: Colors.green,
        toolbarHeight: 80,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "OREGANO",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                width: double.infinity,
                height: 145,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 19, left: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Buy 2 Get 1 Free",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "275 L.E",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: InkWell(
                              onTap: () {

                              },
                              child: Container(
                                width: 110,
                                height: 38,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                        20)),
                                child: const Center(
                                    child: Text(
                                      "Order now",
                                      style: TextStyle(
                                        color:Colors.green,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    )),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 222,
                      child: Image.asset(
                          "assets/images/threeburgeres2.png"),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  categoryHomeBuilder(
                      name: "Burger", image: "assets/images/bur1.png"),
                  categoryHomeBuilder(
                      name: "Pizza", image: "assets/images/pizza2.png"),
                  categoryHomeBuilder(
                      name: "Creap", image: "assets/images/crepe.png"),
                  categoryHomeBuilder(
                      name: "Meals", image: "assets/images/meal.png"),

                ],

              ),
            ),
            const SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 20,),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                            DetailsPage(name: "Beef Burger",
                              image: "assets/images/beefburger.png",
                              price: "138 L.E",
                              details: "classic double cheese burger with beef patty,pickles, chesse,tomato,onion,ketchup and,mustard",
                            ),
                      ),
                    );
                  },
                  child: itemHomeBuild(
                      itemName: "Beef Burger",
                      itemDetails: "Double \nbeef+cheese",
                      itemPrice: "138 L.E",
                      itemImage: "assets/images/beefburger.png"),
                ),
                const SizedBox(width: 25,),

                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                            DetailsPage(name: "Chicken Burger",
                              image: "assets/images/chickenburger.png",
                              price: "125 L.E",
                              details: "classic cheese burger with Chicken chesse,tomato,onion,ketchup and,mustard",
                            ),
                      ),
                    );
                  },
                  child: itemHomeBuild(
                      itemName: "Chicken Burger",
                      itemDetails: "Double chicken+cheese",
                      itemPrice: "125 L.E",
                      itemImage: "assets/images/chickenburger.png"),
                ),

              ],
            ),
            const SizedBox(height: 20,),
            //POPULAR NOW ROW
            Row(
              children: [
                const SizedBox(width: 15,),
                const Text("Popular Now", style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16
                ),),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: InkWell(
                    onTap: () {

                    },
                    child: const Text("See All", style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                    ),),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20,),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        DetailsPage(name: "Sausage Pizza",
                          image: "assets/images/pizza5.png",
                          price: "140",
                          details: "classic Pizza with sausage and mushroom and Ranch sause on top",
                        ),
                  ),
                );
              },

              child: Container(
                width: 360,
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Row(
                  children: [
                    Image.asset("assets/images/pizza5.png"),
                    const SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 15,),
                        const Text("Pizza with sausages\n and mushroom",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                          ),),
                        const SizedBox(height: 10,),
                        Text(" with Ranch sause", style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.black.withOpacity(.5)
                        ),)
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
//CATEGORY
  Widget categoryHomeBuilder({required String name,required String image}) {
    return InkWell(
      onTap: (){
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context)=>const CategoryPage()));
      },
      child: Container(
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Column(
                      children: [
                        Container(
                            height: 68,
                            width: 80,
                            child: Image.asset(image)),
                        Text(name,style: const TextStyle(
                          fontWeight:FontWeight.bold,
                          fontSize: 17
                        ),)
                      ],
                    ),
                  ),
    );
  }

  Widget itemHomeBuild({
    required String itemName,
    required String itemDetails,
    required String itemPrice,
    required String itemImage
}) {
    return Container(
                width: 165,
                height: 220,
                decoration:BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
                ) ,
                child: Column(
                  children: [
                    Container(
                        width:140,
                          child: Image.asset(itemImage)),
                        const SizedBox(height: 6,),
                    Padding(
                      padding: const EdgeInsets.only(left: 9),
                      child: Row(children: [Expanded(
                        child: Text(itemName,style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17
                        ),),
                      )],),
                    ),
                    const SizedBox(height:5,),
                    Padding(
                      padding: const EdgeInsets.only(left:9),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(itemDetails,style: TextStyle(
                              color: Colors.black.withOpacity(.5),
                            ),),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 12),
                    Padding(
                      padding: const EdgeInsets.only(left: 9.0),
                      child: Row(children: [
                        Text(itemPrice,style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: InkWell(
                            onTap: (){

                            },
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: const Icon(Icons.add,color: Colors.white,size: 25,),
                            ),
                          ),
                        )
                      ],),
                    )
                  ],
                ),
              );
  }

}

