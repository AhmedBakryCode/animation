import 'package:animation/fluter_page.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:page_transition/page_transition.dart';
import 'package:like_button/like_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  // double height =10;
  // double width =10;
  // Color color= Colors.blue;
  // var border=BorderRadius.circular(15);
  //
  // double dx=0;
  // double dy=0;
  //
   AnimationController? _animationController;
   // Animation<double> ?_animation; (for SizeTransition and FadeTransition and RotationTransition and ScaleTransition )
   // Animation<AlignmentGeometry> ?_animation; (for AlignTransition)
  // Animation<Offset> ?_animation;
   Animation<Decoration> ?_animation;

   @override
 void initState() {
    super.initState();
    _animationController=AnimationController(vsync: this,duration: Duration(seconds: 1),)..repeat(reverse: false);
    //for SizeTransition and FadeTransition and RotationTransition and ScaleTransition
    // _animation=CurvedAnimation(parent: _animationController!, curve: Curves.fastLinearToSlowEaseIn);
//for AlignTransition
//_animation =Tween<AlignmentGeometry>(begin: Alignment.bottomRight,end: Alignment.topLeft,).animate(CurvedAnimation(curve: Curves.linearToEaseOut, parent: _animationController!,));
   //for SlideTransition
    // _animation =Tween<Offset>(begin: Offset(0,0),end:Offset(1,1),).animate(CurvedAnimation(curve: Curves.linearToEaseOut, parent: _animationController!,));
    //for DecoratedBoxTransition
     _animation =DecorationTween(begin: BoxDecoration(color: Colors.red),end:BoxDecoration(color: Colors.deepPurpleAccent),).animate(CurvedAnimation(curve: Curves.linearToEaseOut, parent: _animationController!,));

   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  title: Text("ANIMATION"),
      ),
      // body: Center(
      //   // Center is a layout widget. It takes a single child and positions it
      //   // in the middle of the parent.
      //   child:AnimatedContainer(duration: Duration(seconds: 1),
      //     height: height.toDouble(),
      //     width: width.toDouble(),
      //     decoration: BoxDecoration(
      //       color: color,
      //       borderRadius: border,
      //     ),
      //
      //   ),
      // ),
      // body: AnimatedAlign(child: FlutterLogo(size: 150,),alignment: FractionalOffset(dx, dy),duration: Duration(seconds: 2),),
      body: Center(
        child:LikeButton(
          isLiked: false,

          size: 60,
          bubblesSize: 80,
          bubblesColor:BubblesColor(dotPrimaryColor:Colors.blueAccent ,dotSecondaryColor:Colors.grey ) ,
        ) ,
      ),
      // Page transition
      // Center(
      //   child: Builder(
      //     builder: (context) {
      //       return FlatButton(onPressed:(){
      //         Navigator.of(context).push(
      //        PageTransition(child: FlutterPage(), type: PageTransitionType.bottomToTop) );
      //
      //       } ,
      //         child: Hero(
      //             tag: "to_flutter",
      //             child: FlutterLogo(size: 50,)),
      //       );
      //     }
      //   ),
      // ),

          //Animated widget
      // Center(
      //   child: AnimatedBuilder(animation: _animationController!,
      //   builder: (BuildContext context, Widget? child)=>Transform.rotate(angle: _animationController!.value*2*pi,child: child,) ,
      //     child: OutlineButton(color: Colors.blue,onPressed: () {  },child: Text("Click here"),borderSide: BorderSide(width: _animationController!.value),),
      //   ),
      // ),
      // Column(
      //   children: [
      //     // Center(
      //     //   child: ScaleTransition(scale: _animation!,
      //     //       child: FlutterLogo(size: 120,)),
      //     // ),
      //     // Center(
      //     //   child: RotationTransition(turns: _animation!,
      //     //       child: FlutterLogo(size: 120,)),
      //     // ),
      //     // Center(
      //     //   child: FadeTransition(opacity: _animation!,
      //     //       child: FlutterLogo(size: 120,)),
      //     // ),
      //     // Center(
      //     //   child: SizeTransition(sizeFactor: _animation!,
      //     //       child: FlutterLogo(size: 120,)),
      //     // ),
      //     // Center(
      //     //   child: AlignTransition(alignment: _animation!,
      //     //       child: FlutterLogo(size: 120,)),
      //     // ),
      //     // Center(
      //     //   child: SlideTransition(position: _animation!,
      //     //       child: FlutterLogo(size: 120,)),
      //     // ),
      //     Center(
      //       child: DecoratedBoxTransition(decoration: _animation!,
      //           child: FlutterLogo(size: 120,)),
      //     ),
      //
      //   ],
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
           // dx= dx==0? 1:0;
           // dy= dy==0? 1:0;
           //
//              Random random =Random();
//             random.nextInt(100);
// dy=random.nextDouble();
//            dx=random.nextDouble();

//             width=random.nextInt(100).toDouble();
//             height =random.nextInt(100).toDouble();
// color=Color.fromRGBO(random.nextInt(256), random.nextInt(256), random.nextInt(256), 1);
// border=BorderRadius.circular(random.nextInt(100).toDouble());
          });
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
