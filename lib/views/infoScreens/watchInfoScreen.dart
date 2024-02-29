import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:project_16/views/watchesView.dart';

class WatchInfoScreen extends StatefulWidget {
  static const String id = 'watch_info_screen';

  WatchInfoScreen({super.key});

  @override
  State<WatchInfoScreen> createState() => _WatchInfoScreenState();
}

class _WatchInfoScreenState extends State<WatchInfoScreen> {
  int count = 0;
  int productCount = 0;

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
            Navigator.pushReplacementNamed(context, WatchesView.id);
          },
        ),
        centerTitle: true,
        title: Text(
          "Top Watches".tr(),
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
                  image: AssetImage("assets/images/watches.png"),
                ),
              ),
            ),
            Row(children: [
              Text("Watch Casio Top".tr()),
              Expanded(child: SizedBox()),
              Text("\$96",style: TextStyle(color: Colors.orange.shade600),),
            ],),
            Row(children: [
              Icon(Icons.star,color: Colors.yellow,size: 18,),
              Icon(Icons.star,color: Colors.yellow,size: 18,),
              Icon(Icons.star,color: Colors.yellow,size: 18,),
              Icon(Icons.star,color: Colors.yellow,size: 18,),
              Icon(Icons.star,color: Colors.yellow,size: 18,),
              Text("5.0",style: TextStyle(color: Colors.grey.shade500),),
              Text("(55.3k)",style: TextStyle(color: Colors.grey.shade500),),
              Expanded(child: SizedBox()),
              Text("-40% Off (\$160)",style: TextStyle(color: Colors.grey.shade400),)
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
