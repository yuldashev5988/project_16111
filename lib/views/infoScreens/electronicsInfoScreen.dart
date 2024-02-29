import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:project_16/views/electronicsView.dart';
class ElectronicsInfoScreen extends StatefulWidget {
  static const String id="electronics_screen";
  const ElectronicsInfoScreen({super.key});

  @override
  State<ElectronicsInfoScreen> createState() => _ElectronicsInfoScreenState();
}

class _ElectronicsInfoScreenState extends State<ElectronicsInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.grey.shade400,
          ),
          onPressed: () {
            Navigator.pushReplacementNamed(context,ElectronicsView .id);
          },
        ),
        centerTitle: true,
        title: Text(
          "Electronics for your home".tr(),
          style: TextStyle(color: Colors.grey.shade500),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              Icons.favorite,
              color: Colors.grey.shade500,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/electronics.png"),
                ),
              ),
            ),
            Row(children: [
              Text("TV"),
              Expanded(child: SizedBox()),
              Text("\$500",style: TextStyle(color: Colors.orange.shade600),),
            ],),
            Row(children: [
              Icon(Icons.star,color: Colors.yellow,size: 18,),
              Icon(Icons.star,color: Colors.yellow,size: 18,),
              Icon(Icons.star,color: Colors.yellow,size: 18,),
              Icon(Icons.star,color: Colors.yellow,size: 18,),
              Icon(Icons.star,color: Colors.yellow,size: 18,),
              Text("4.0",style: TextStyle(color: Colors.grey.shade500),),
              Text("(54.3k)",style: TextStyle(color: Colors.grey.shade500),),
              Expanded(child: SizedBox()),
              Text("-30% Off (\$700)",style: TextStyle(color: Colors.grey.shade400),)
            ],),
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Color:".tr(),style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
                CircleAvatar(backgroundColor: Colors.grey,radius: 12,),
                CircleAvatar(backgroundColor: Colors.black,radius: 12,),

                CircleAvatar(backgroundColor: Colors.red,radius: 12,),
                CircleAvatar(backgroundColor: Colors.pink,radius: 12,),
                CircleAvatar(backgroundColor: Colors.teal,radius: 12,),



              ],
            ),
            SizedBox(height: 40,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Text("Size:".tr(),style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
                Container(
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.orange,width: 1.0),
                  ),
                  child: Center(
                    child: Text(
                      "S",style: TextStyle(color: Colors.grey.shade400),
                    ),
                  ),
                ),
                Container(
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.orange,width: 1.0),
                  ),
                  child: Center(
                    child: Text(
                      "M",style: TextStyle(color: Colors.grey.shade400),
                    ),
                  ),
                ),
                Container(
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.orange,width: 1.0),
                  ),
                  child: Center(
                    child: Text(
                      "L",style: TextStyle(color: Colors.grey.shade400),
                    ),
                  ),
                ),
                Container(
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.orange,width: 1.0),
                  ),
                  child: Center(
                    child: Text(
                      "XL",style: TextStyle(color: Colors.grey.shade400),
                    ),
                  ),
                ),
                TextButton(onPressed: (){}, child:Text("Chart".tr(),style: TextStyle(color: Colors.blue,
                ),),),


              ],
            ),
          ],
        ),
      ),


    );
  }
}
