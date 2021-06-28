import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Homepage());
  }
}

class Homepage extends StatelessWidget {
  // String title = 'Gridview(scroll)';
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(


      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              Icons.notifications,
              color: Colors.black,
            ),
          ),
        ],
        title: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Center(
            child: Text(
              'Ecommerce App',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
      ),


      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 20),
                  child: Container(
                    child: Text('Items',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15, top: 20),
                  child: Container(
                    child: Text(
                      'View More',
                      style: TextStyle(color: Colors.purple, fontSize: 15),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 20),




            CarouselSlider(
                items: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        image: DecorationImage(
                          image: AssetImage('assets/note.jpg'),
                          fit: BoxFit.cover,
                        )
                        ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        image: DecorationImage(
                          image: AssetImage('assets/ip12.jpg'),
                          fit: BoxFit.cover,
                        )),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        image: DecorationImage(
                          image: AssetImage('assets/mca.jpg'),
                          fit: BoxFit.cover,
                        )),
                  )
                ],
                options: CarouselOptions(
                  height: 220,
                  autoPlay: true,
                  viewportFraction: 0.7,
                  enlargeCenterPage: true,
                )),
            SizedBox(
              height: 20,
            ),
 



Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 20),
                  child: Container(
                    child: Text('Popular Items',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15, top: 20),
                  child: Container(
                    child: Text(
                      'View More',
                      style: TextStyle(color: Colors.purple, fontSize: 15),
                    ),
                  ),
                )
              ],
            ),

            
            
            
            Container(
              margin: EdgeInsets.only(top: 30),
              height: 1400,
              width: 400,
              child: GridView.count(
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              crossAxisCount: 2,
              children: [
                Card(child: Column(
                  children: [
                    SizedBox(
                      width: 335,
                      height: 120,
                      child: Image.asset('assets/note.jpg',fit: BoxFit.fill,),
                    ),

                    SizedBox(height: 14,),
                    Column(children:[
                       Text('Note 20', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), ),
                       Container(
                         padding: EdgeInsets.only(left: 10),
                         child: Row(children: [
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Text('5.0(23 reviews)')
                         ],),
                       )
                      ])
                  ],
                ),                    
                ),


                Card(child: Column(
                  children: [
                    SizedBox(
                      width: 335,
                      height: 120,
                      child: Image.asset('assets/s21.jpg',fit: BoxFit.fill,),
                    ),

                    SizedBox(height: 10,),
                    Column(children:[
                       Text('Galaxy S21', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), ),
                       Container(
                         padding: EdgeInsets.only(left: 10),
                         child: Row(children: [
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Text('5.0(33 reviews)')
                         ],),
                       )
                      ])
                  ],
                ),                    
                ),


                Card(child: Column(
                  children: [
                    SizedBox(
                      width: 335,
                      height: 120,
                      child: Image.asset('assets/kb.jpg',fit: BoxFit.fill,),
                    ),

                    SizedBox(height: 10,),
                    Column(children:[
                       Text('Keyboard', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), ),
                       Container(
                         padding: EdgeInsets.only(left: 10),
                         child: Row(children: [
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Text('5.0(23 reviews)')
                         ],),
                       )
                      ])
                  ],
                ),                    
                ),



                Card(child: Column(
                  children: [
                    SizedBox(
                      width: 335,
                      height: 120,
                      child: Image.asset('assets/pc.jpg',fit: BoxFit.fill,),
                    ),

                    SizedBox(height: 10,),
                    Column(children:[
                       Text('Gaming PC', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), ),
                       Container(
                         padding: EdgeInsets.only(left: 10),
                         child: Row(children: [
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Text('5.0(23 reviews)')
                         ],),
                       )
                      ])
                  ],
                ),                    
                ),


                Card(child: Column(
                  children: [
                    SizedBox(
                      width: 335,
                      height: 120,
                      child: Image.asset('assets/ip12.jpg',fit: BoxFit.fill,),
                    ),

                    SizedBox(height: 10,),
                    Column(children:[
                       Text('Iphone 12', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), ),
                       Container(
                         padding: EdgeInsets.only(left: 10),
                         child: Row(children: [
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Text('5.0(23 reviews)')
                         ],),
                       )
                      ])
                  ],
                ),                    
                ),


                Card(child: Column(
                  children: [
                    SizedBox(
                      width: 335,
                      height: 120,
                      child: Image.asset('assets/laptop.jpg',fit: BoxFit.fill,),
                    ),

                    SizedBox(height: 10,),
                    Column(children:[
                       Text('Hp Laptop', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), ),
                       Container(
                         padding: EdgeInsets.only(left: 10),
                         child: Row(children: [
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Text('5.0(23 reviews)')
                         ],),
                       )
                      ])
                  ],
                ),                    
                ),


                Card(child: Column(
                  children: [
                    SizedBox(
                      width: 335,
                      height: 120,
                      child: Image.asset('assets/camera.jpg',fit: BoxFit.fill,),
                    ),

                    SizedBox(height: 10,),
                    Column(children:[
                       Text('Canon Camera', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), ),
                       Container(
                         padding: EdgeInsets.only(left: 10),
                         child: Row(children: [
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Text('5.0(23 reviews)')
                         ],),
                       )
                      ])
                  ],
                ),                    
                ),
                Card(child: Column(
                  children: [
                    SizedBox(
                      width: 335,
                      height: 120,
                      child: Image.asset('assets/r8.jpg',fit: BoxFit.fill,),
                    ),

                    SizedBox(height: 10,),
                    Column(children:[
                       Text('Realme 8', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), ),
                       Container(
                         padding: EdgeInsets.only(left: 10),
                         child: Row(children: [
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Text('5.0(23 reviews)')
                         ],),
                       )
                      ])
                  ],
                ),                    
                ),
                Card(child: Column(
                  children: [
                    SizedBox(
                      width: 335,
                      height: 120,
                      child: Image.asset('assets/mouse.jpg',fit: BoxFit.fill,),
                    ),

                    SizedBox(height: 10,),
                    Column(children:[
                       Text('Mouse', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), ),
                       Container(
                         padding: EdgeInsets.only(left: 10),
                         child: Row(children: [
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Text('5.0(23 reviews)')
                         ],),
                       )
                      ])
                  ],
                ),                    
                ),
                Card(child: Column(
                  children: [
                    SizedBox(
                      width: 335,
                      height: 120,
                      child: Image.asset('assets/watch.jpg',fit: BoxFit.fill,),
                    ),

                    SizedBox(height: 10,),
                    Column(children:[
                       Text('Watch 3', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), ),
                       Container(
                         padding: EdgeInsets.only(left: 10),
                         child: Row(children: [
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Text('5.0(23 reviews)')
                         ],),
                       )
                      ])
                  ],
                ),                    
                ),

                Card(child: Column(
                  children: [
                    SizedBox(
                      width: 335,
                      height: 120,
                      child: Image.asset('assets/i11.jpg',fit: BoxFit.fill,),
                    ),

                    SizedBox(height: 10,),
                    Column(children:[
                       Text('Iphone 11', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), ),
                       Container(
                         padding: EdgeInsets.only(left: 10),
                         child: Row(children: [
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Text('5.0(23 reviews)')
                         ],),
                       )
                      ])
                  ],
                ),                    
                ),


                Card(child: Column(
                  children: [
                    SizedBox(
                      width: 335,
                      height: 120,
                      child: Image.asset('assets/mca.jpg',fit: BoxFit.fill,),
                    ),

                    SizedBox(height: 10,),
                    Column(children:[
                       Text('Macbook', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), ),
                       Container(
                         padding: EdgeInsets.only(left: 10),
                         child: Row(children: [
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Text('5.0(23 reviews)')
                         ],),
                       )
                      ])
                  ],
                ),                    
                ),


                Card(child: Column(
                  children: [
                    SizedBox(
                      width: 335,
                      height: 120,
                      child: Image.asset('assets/note.jpg',fit: BoxFit.fill,),
                    ),

                    SizedBox(height: 10,),
                    Column(children:[
                       Text('Note 20', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), ),
                       Container(
                         padding: EdgeInsets.only(left: 10),
                         child: Row(children: [
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Text('5.0(23 reviews)')
                         ],),
                       )
                      ])
                  ],
                ),                    
                ),


                Card(child: Column(
                  children: [
                    SizedBox(
                      width: 335,
                      height: 120,
                      child: Image.asset('assets/ps4.jpg',fit: BoxFit.fill,),
                    ),

                    SizedBox(height: 10,),
                    Column(children:[
                       Text('PlayStation 5', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), ),
                       Container(
                         padding: EdgeInsets.only(left: 10),
                         child: Row(children: [
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Icon(Icons.star_outlined,size: 15, color: Colors.yellow,),
                           Text('5.0(23 reviews)')
                         ],),
                       )
                      ])
                  ],
                ),                    
                ),
              ],
            ),
            ),

          
          ],
        ),
      ),







      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
            color: Colors.white,
            height: 80,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    Icons.home_rounded,
                    size: 30,
                    color: Colors.purple,
                  ),
                  Icon(
                    Icons.favorite_rounded,
                    size: 30,
                  ),
                  SizedBox.shrink(),
                  Icon(
                    Icons.add_shopping_cart_rounded,
                    size: 30,
                  ),
                  Icon(
                    Icons.account_circle_rounded,
                    size: 30,
                  ),
                ],
              ),
            )),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.search),
        backgroundColor: Colors.purple,
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
