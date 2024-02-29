import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:project_16/pages/home_page.dart';
import 'package:project_16/screens/home_screen.dart';

import 'infoScreens/electronicsInfoScreen.dart';
import 'infoScreens/watchInfoScreen.dart';
class ElectronicsView extends StatefulWidget {
  static const String id="electronics_view";
  const ElectronicsView({super.key});

  @override
  State<ElectronicsView> createState() => _ElectronicsViewState();
}

class _ElectronicsViewState extends State<ElectronicsView> {
  bool favorite1 = false;

  onPress() {
    setState(() {
      favorite1 = !favorite1;
    });
  }
  bool favorite2 = false;

  onPress2() {
    setState(() {
      favorite2 = !favorite2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: IconButton(onPressed: (){
              Navigator.pushReplacementNamed(context, HomePage.id);
            }, icon:Icon(Icons.arrow_back_ios_new,color: Colors.grey.shade400,)),
            title: Text(
              "Electronics for your home".tr(),style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),
            ),
            centerTitle: true,
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
                  (context, index) {
                return Container(
                  margin: EdgeInsets.only(left: 8,right: 8),
                  color: Colors.white,
                  child: _watches(imagePath: "assets/images/electronics.png", text:"Electronic name is \n#TV".tr(), price: 500, realPrice: 700, discount: 30, rating: 4.0, views: 54.3),
                );
              },
              childCount: 100,
            ),
            gridDelegate:const  SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 5,
              childAspectRatio: 0.8,
            ),
          ),

        ],
      ),
    );
  }
  Widget _watches({required String imagePath,required String text,required double price,required double realPrice,required int discount,required double rating,required double views}){
    return GestureDetector(
      onTap: (){
        Navigator.pushReplacementNamed(context, ElectronicsInfoScreen.id);
      },
      child: Column(
        children: [
          Container(
            height: 150,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage(imagePath),),),
            alignment: Alignment.topRight,
            child: IconButton(onPressed: (){
              onPress();
            }, icon:favorite1? Icon(
              Icons.favorite,color: Colors.red,

            ):Icon(Icons.favorite_border,color: Colors.red,),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Text(text),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20,left: 20),
            child: Row(children: [
              Text("\$$price"),
              Text("(\$$realPrice) -$discount% "),
            ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20,left: 18),
            child: Row(
              children: [
                Icon(Icons.star,color: Colors.yellow.shade800,size: 12,),
                Icon(Icons.star,color: Colors.yellow.shade800,size: 12,),
                Icon(Icons.star,color: Colors.yellow.shade800,size: 12,),
                Icon(Icons.star,color: Colors.yellow.shade800,size: 12,),
                Icon(Icons.star,color: Colors.yellow.shade800,size: 12,),
                SizedBox(width: 3.8,),
                Text("$rating"),
                SizedBox(width: 8,),
                Text("(${views}k)")
              ],
            ),
          ),


        ],

      ),
    );
  }
}
/* SliverToBoxAdapter(
            child: Container(
              color: Colors.yellow,
              padding: const EdgeInsets.all(8.0),
              child: Text('Grid Header', style: TextStyle(fontSize: 24)),
            ),
          ),
          SliverGrid.count(
            crossAxisCount: 3,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 4.0,
            children: <Widget>[
              Container(color: Colors.red),
              Container(color: Colors.green),
              Container(color: Colors.blue),
              Container(color: Colors.red),
              Container(color: Colors.green),
              Container(color: Colors.blue),
            ],
          ),
          SliverGrid.extent(
            maxCrossAxisExtent: 200,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 4.0,
            children: <Widget>[
              Container(color: Colors.pink),
              Container(color: Colors.indigo),
              Container(color: Colors.orange),
              Container(color: Colors.pink),
              Container(color: Colors.indigo),
              Container(color: Colors.orange),
            ],
          ),
*/
