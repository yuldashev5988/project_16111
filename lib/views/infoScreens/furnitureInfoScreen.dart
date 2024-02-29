import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:project_16/views/furnitureView.dart';

class FurnitureInfoScreen extends StatefulWidget {
  static const String id = 'orders_page';
  String imagePath;

  FurnitureInfoScreen({required this.imagePath,super.key});

  @override
  State<FurnitureInfoScreen> createState() => _FurnitureInfoScreenState();
}

class _FurnitureInfoScreenState extends State<FurnitureInfoScreen> {
  int page = 1;
  int circleIndex=0;
  int sizeIndex=0;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: false,
            leading: IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, FurnitureView.id);
              },
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.grey,
              ),
            ),
            centerTitle: true,
            title: Text(
              "Best Furnitures".tr(),
              maxLines: 2,
              style: TextStyle(color: Colors.grey, fontSize: 20,overflow: TextOverflow.ellipsis),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_border,
                  color: Colors.grey,
                ),
              ),
            ],
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration:  BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.imagePath),
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(

                          "Top furniture brand is EuroLux".tr(),
                          maxLines: 1,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            overflow: TextOverflow.ellipsis,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "\$489",
                          maxLines: 1,
                          style: TextStyle(color: Colors.orange, fontSize: 18,overflow: TextOverflow.ellipsis),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "4.3",
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Expanded(child: SizedBox()),
                      Text(
                        "27% Off, \$700",
                        maxLines: 1,
                        style: TextStyle(color: Colors.grey,overflow: TextOverflow.ellipsis),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Color:".tr(),
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                circleIndex=0;
                              });
                            },
                            child: Container(
                              height: 30,
                              width: 30,
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(width: 2.5,color: circleIndex==0?Colors.orange:Colors.grey),
                              ),
                              child: CircleAvatar(
                                backgroundColor: Colors.orange,
                                radius: 10,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                circleIndex=1;
                              });
                            },
                            child: Container(
                              height: 30,
                              width: 30,
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(width: 2.5,color: circleIndex==1?Colors.blue:Colors.grey,)
                              ),
                              child: CircleAvatar(
                                backgroundColor: Colors.blue,
                                radius: 10,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              setState(() {

                                circleIndex=2;
                              });
                            },
                            child: Container(
                              height: 30,
                              width: 30,
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(width: 2.5,color: circleIndex==2?Colors.teal:Colors.grey),
                              ),
                              child: CircleAvatar(
                                backgroundColor: Colors.teal,
                                radius: 10,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                circleIndex=3;
                              });
                            },
                            child: Container(
                              height: 30,
                              width: 30,
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(width: 2.5,color: circleIndex==3?Colors.blueGrey:Colors.grey,),
                              ),
                              child: CircleAvatar(
                                backgroundColor: Colors.blueGrey,
                                radius: 10,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: (){setState(() {
                              circleIndex=4;
                            });},
                            child: Container(
                              height: 30,
                              width: 30,
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(width: 2.5,color: circleIndex==4?Colors.pink:Colors.grey),
                              ),
                              child: CircleAvatar(
                                backgroundColor: Colors.pink,
                                radius: 10,
                              ),
                            ),
                          ),
                          ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Size:".tr(),
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                sizeIndex=0;
                              });
                            },
                            child: Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                color: sizeIndex==0?Colors.orange:Colors.white,
                                borderRadius: BorderRadius.circular(5),
                                  border: Border(
                                      top: BorderSide(
                                        color: Colors.orange,
                                        width: 1,
                                      ),
                                      bottom: BorderSide(
                                        color: Colors.orange,
                                        width: 1,
                                      ),
                                      left: BorderSide(
                                        color: Colors.orange,
                                        width: 1,
                                      ),
                                      right: BorderSide(
                                        color: Colors.orange,
                                        width: 1,
                                      ))),
                              child: Center(
                                child: Text(
                                  "S",
                                  style: TextStyle(color: sizeIndex==0?Colors.white:Colors.grey),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                sizeIndex=1;
                              });
                            },
                            child: Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),

                                  color: sizeIndex==1?Colors.orange:Colors.white,

                                  border: Border(
                                      top: BorderSide(
                                        color: Colors.orange,
                                        width: 1,
                                      ),
                                      bottom: BorderSide(
                                        color: Colors.orange,
                                        width: 1,
                                      ),
                                      left: BorderSide(
                                        color: Colors.orange,
                                        width: 1,
                                      ),
                                      right: BorderSide(
                                        color: Colors.orange,
                                        width: 1,
                                      ))),
                              child: Center(
                                child: Text(
                                  "M",
                                  style: TextStyle(color: sizeIndex==1?Colors.white:Colors.grey),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                sizeIndex=2;
                              });
                            },
                            child: Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                  color: sizeIndex==2?Colors.orange:Colors.white,
                                  borderRadius: BorderRadius.circular(5),

                                  border: Border(
                                      top: BorderSide(
                                        color: Colors.orange,
                                        width: 1,
                                      ),
                                      bottom: BorderSide(
                                        color: Colors.orange,
                                        width: 1,
                                      ),
                                      left: BorderSide(
                                        color: Colors.orange,
                                        width: 1,
                                      ),
                                      right: BorderSide(
                                        color: Colors.orange,
                                        width: 1,
                                      ))),
                              child: Center(
                                child: Text(
                                  "X",
                                  style: TextStyle(color: sizeIndex==2?Colors.white:Colors.grey),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                sizeIndex=3;
                              });
                            },
                            child: Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                  color: sizeIndex==3?Colors.orange:Colors.white,
                                  borderRadius: BorderRadius.circular(5),

                                  border: Border(
                                      top: BorderSide(
                                        color: Colors.orange,
                                        width: 1,
                                      ),
                                      bottom: BorderSide(
                                        color: Colors.orange,
                                        width: 1,
                                      ),
                                      left: BorderSide(
                                        color: Colors.orange,
                                        width: 1,
                                      ),
                                      right: BorderSide(
                                        color: Colors.orange,
                                        width: 1,
                                      ))),
                              child: Center(
                                child: Text(
                                  "XL",
                                  style: TextStyle(color: sizeIndex==3?Colors.white:Colors.grey),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 70,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          page = 1;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.only(
                            top: 8.0, left: 20, right: 20, bottom: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xffF3F8FE)),
                        child: Text(
                          "Description".tr(),
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          page = 2;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.only(
                            top: 8.0, left: 15, right: 15, bottom: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xffF3F8FE)),
                        child:Text(
                          "Specification".tr(),
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          page = 3;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.only(
                            top: 8.0, left: 15, right: 15, bottom: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xffF3F8FE)),
                        child:  Text(
                          "Details".tr(),
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                            overflow: TextOverflow.ellipsis
                          ),
                        ),
                      ),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                ),
              ),
            ),
          ),
          //order page == 1
          if (page == 1)
            SliverToBoxAdapter(
              child: _page1(),
            ),
          // review page ==2
          if (page == 2)
            SliverToBoxAdapter(
              child: _page2(),
            ),
          // information page == 3
          if (page == 3)
            SliverToBoxAdapter(
              child: _page3(),
            ),

        ],
      ),
      bottomNavigationBar: Container(
        height: 90,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width*0.4,

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border(
                    top: BorderSide(
                      color: Colors.orange,
                      width: 1,
                    ),
                    bottom: BorderSide(
                      color: Colors.orange,
                      width: 1,
                    ),
                    left: BorderSide(
                      color: Colors.orange,
                      width: 1,
                    ),
                    right: BorderSide(
                      color: Colors.orange,
                      width: 1,
                    ),
                  )),
              child: Center(
                child: Text(
                  "ADD TO CART".tr(),
                  maxLines: 1,
                  style: TextStyle(color: Colors.orange,fontWeight: FontWeight.w600,overflow: TextOverflow.ellipsis),
                ),
              ),
            ),
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width*0.4,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.orange),
              child: Center(
                child: Text(
                  "BUY NOW".tr(),

                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }

  Widget _page1() {
    return Padding(
      padding: EdgeInsets.only(right: 20, left: 20, top: 10),
      child: Column(
        children: [
          Text(
            "Folding tops for your home.They will be suitable for your family members.".tr(),
            style: TextStyle(color: Colors.grey, fontSize: 18),
          ),
          Text(
            "Folding tops for your home.They will be suitable for your family members.".tr(),
            style: TextStyle(color: Colors.grey, fontSize: 18),
          ),
          Text(
            "Folding tops for your home.They will be suitable for your family members.".tr(),
            style: TextStyle(color: Colors.grey, fontSize: 18),
          ),
          Text(
            "Folding tops for your home.They will be suitable for your family members.".tr(),
            style: TextStyle(color: Colors.grey, fontSize: 18),
          ),
          Text(
            "Folding tops for your home.They will be suitable for your family members.".tr(),
            style: TextStyle(color: Colors.grey, fontSize: 18),
          ),
          Text(
            "Folding tops for your home.They will be suitable for your family members.".tr(),
            style: TextStyle(color: Colors.grey, fontSize: 18),
          ),

        ],
      ),
    );
  }

  Widget _page2() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      child:  Row(
        children: [
          Image(
            height: 60,
            width: 60,
            image: AssetImage("assets/images/furniture.png"),
          ),
          SizedBox(
            width: 40,
          ),
          Column(
            children: [
              Text("Avesome  Restaurant".tr()),
              SizedBox(
                height: 5,
              ),
              Text("Delivery is free for you".tr()),
            ],
          )
        ],
      ),
    );
  }

  Widget _page3() {
    return const Text("lsbhvifrgevbi vievievvvnsvieevbevibeievivbv revive ev");
  }
}
/*ListView(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/images/burgerKing.jpg"),
              fit: BoxFit.cover,
            )),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, FoodsPage.id);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                    )),
                Expanded(child: Container()),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.share,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25),
            child: Text(
              "Food Order Restaurant",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 28,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25),
            child: Row(
              children: [
                Icon(
                  IconlyBold.location,
                  color: Colors.grey,
                  size: 17,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  "78th Street. 88 W 21th,NY",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25),
            child: Row(
              children: [
                Icon(
                  IconlyLight.time_circle,
                  color: Colors.grey,
                  size: 17,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  "Open  7:00-21:00",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                )
              ],
            ),
          ),
           Padding(
            padding: EdgeInsets.only(left: 25),
            child: Row(
              children: [
               const  Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
              const   Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
              const   Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
               const  Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
               const  Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
              const   SizedBox(
                  width: 4,
                ),
                Text(
                  "(${widget.rating}) - 1220 Reviews",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                )
              ],
            ),
          ),
          Container(
            height: 70,
            padding: EdgeInsets.only(left: 25),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                GestureDetector(
                  onTap: (){
                    setState(() {
                      log(" one pressed");
                      page == 1;
                    });
                  },
                  child: Container(
                    padding:const  EdgeInsets.only(top: 8.0,left: 15,right: 15,bottom: 8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffF3F8FE)
                    ),
                    child: const Text(
                      "Order",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      log(" two pressed");

                      page = 2;
                    });
                  },
                  child: Container(
                    padding:const  EdgeInsets.only(top: 8.0,left: 15,right: 15,bottom: 8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffF3F8FE)
                    ),
                    child: const Text(
                      "Review",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      log(" third pressed");

                      page = 3;
                    });
                  }

                  ,
                  child: Container(
                    padding:const  EdgeInsets.only(top: 8.0,left: 15,right: 15,bottom: 8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffF3F8FE)
                    ),
                    child: const Text(
                      "Information",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),
               ],
            ),
          ),
          if(page == 1 )
            _page1(imageUrl1: 'assets/images/pizza.png'),
          if(page == 2 )
            _page2(),
          if(page == 3 )
            _page3(imageUrl3: 'assets/images/burger.png'),
        ],
      )*/
