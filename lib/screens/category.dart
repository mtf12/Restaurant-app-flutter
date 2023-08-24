import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class DataModel{
  String ?name;
  String?image;
  DataModel({required this.image,required this.name});
}
class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  List<DataModel> data=[
    DataModel(image: "assets/images/pizza.png", name: 'Pizza'),
    DataModel(image: "assets/images/pasta.png", name: 'Pasta'),
    DataModel(image: "assets/images/Panzenella.png", name: 'Panzenella'),
    DataModel(image: "assets/images/crepe.jpg", name: 'Crepe'),
    DataModel(image: "assets/images/meals.png", name: 'Chicken'),
    DataModel(image: "assets/images/Fettuccine.png", name: 'Fettuccine'),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        toolbarHeight: 80,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.white
        ),
        title: const Text("Category",style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.white,
            fontSize: 30,
          ),
        ),centerTitle: true,
      leading: Padding(
        padding: const EdgeInsets.only(left: 12.0),
        child: InkWell(
          onTap: (){
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_back_ios,size: 30,
            color: Colors.white,
          ),
        ),
      ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: ListView.separated(
          separatorBuilder: (context, index) => SizedBox(height: 10,),
          itemBuilder: (context, index) => Container(
          width: double.infinity,
          height: 120,
          child: Stack(
            alignment: AlignmentDirectional.topStart,
            children:
            [
              Row(
                children: [
                  Image.asset(data[index].image!,width: 120,height: 120,),
                  Expanded
                    (child: Text(data[index].name!,textAlign: TextAlign.center,style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold),)),
                ],
              ),

            ],
          ),
        ),itemCount: data.length,),
      ),

    );
  }

}
