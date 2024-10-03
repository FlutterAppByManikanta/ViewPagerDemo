import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ViewPagerDemo extends StatefulWidget {
  const ViewPagerDemo({super.key});

  @override
  State<ViewPagerDemo> createState() => _ViewPagerDemoState();
}

class _ViewPagerDemoState extends State<ViewPagerDemo> {
  PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("PageViewer"),),

     body: PageView(
       controller: pageController,
       children: [

         Container(color: Colors.greenAccent,child: Center(child: Text("Page One",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 22),),),),

         Container(color: Colors.redAccent,child: Center(child: Text("Page Two",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 22),),),),

         Container(color: Colors.brown,child: Center(child: Text("Page Three",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 22),),),),

       ],
       physics: BouncingScrollPhysics(),
       onPageChanged: (index) {
         print("Page is Changed to : $index");
       },
     ),
   );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pageController.dispose();
  }
}
