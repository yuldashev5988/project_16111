import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:project_16/pages/home_page.dart';
import 'package:project_16/screens/home_screen.dart';

import 'infoScreens/laptopInfoScreen.dart';
import 'infoScreens/manInfoScreen.dart';
class LaptopView extends StatefulWidget {
  static const String id="laptop_view";
  const LaptopView({super.key});

  @override
  State<LaptopView> createState() => _LaptopViewState();
}

class _LaptopViewState extends State<LaptopView> {
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
              "Laptop and Notebooks".tr(),style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),
            ),
            centerTitle: true,
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
                  (context, index) {
                return Container(
                  margin: EdgeInsets.only(left: 8,right: 8),
                  color: Colors.white,
                  child: _men(imagePath: "assets/images/laptop.png", text:"Brand name is \n#Asus".tr(), price: 1799.99, realPrice: 2009.99, discount: 27, rating: 4.9, views: 90.2),
                );
              },
              childCount: 4,
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
  Widget _men({required String imagePath,required String text,required double price,required double realPrice,required int discount,required double rating,required double views}){
    return GestureDetector(
      onTap: (){
        Navigator.pushReplacementNamed(context, LaptopInfoScreen.id);
      },
      child: Column(
        children: [
          Container(
            height: 140,
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
            padding: const EdgeInsets.only(right: 82),
            child: Text(text),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 0,left: 0),
            child: Row(children: [
              Text("\$$price"),
              Text("(\$$realPrice) -$discount% "),
            ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 0,left: 0),
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
