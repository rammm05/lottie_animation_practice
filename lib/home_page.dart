import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{

  AnimationController? mController;

  @override
  void initState() {
    super.initState();
    mController = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    mController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(title: Text('Home'),),
      body: Column(
        children: [
          Center(
              child: Lottie.asset("assets/lottie/rabbit_in_hat.lottie",
                  height: 300,
                  width: 300,
                controller: mController,
                onLoaded: (lottie){
                    mController!.duration = lottie.duration;
                }
              )),
          ElevatedButton(onPressed: (){
            mController!.repeat(
                //reverse: true
            );
          }, child: Text("Start"))
        ],
      ),
    );
  }
}