import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool CheckBox = false;

  String OAO = "OAO";

  final Block1 = Container(
    width: 100.0,
    height: 100.0,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20.0),
      color: Colors.green,
    ),
    child: Text("Pick Me",
      style: TextStyle(
        fontSize: 20.0,
        color: Colors.brown,
        decoration: TextDecoration.none,
      ),
    ),
  );
  final Block2 = Container(
    width: 100.0,
    height: 100.0,
    alignment: Alignment.center,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.green,
    ),
    child: Text("Wow >w<",style: TextStyle(
      fontSize: 20.0,
      color: Colors.brown,
      decoration: TextDecoration.none,
    ),
    ),
  );
  final Block3 = Container(
    width: 100.0,
    height: 100.0,
  );
  final BlockPicked = Container(
    width: 100.0,
    height: 100.0,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20.0),
      color: Colors.green,
    ),
    child: Text("Picked",
      style: TextStyle(
        fontSize: 20.0,
        color: Colors.brown,
        decoration: TextDecoration.none,
      ),
    ),
  );

  final cancelX = Container(
    width: 20.0,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.red,
    ),
    child: Icon(Icons.cancel,color: Colors.black54,),
  );

  final GetBox = Container(
    height: 100.0,
    width: 100.0,
    color: Colors.lightBlueAccent,
  );


  @override
  Widget build(BuildContext context) {

    // final ScreenW = MediaQuery.of(context).size.width;
    // final ScreenH = MediaQuery.of(context).size.height;

    final cancelXX = IconButton(
      onPressed: (){
        print("OuO");
        setState(() {
          CheckBox = false;
        });
      },
      icon: Icon(Icons.cancel,color: Colors.black54,),
    );

    final BlockShow1 = Stack(
      alignment: Alignment.topRight,
      children: [
        BlockPicked,
        cancelXX,
      ],
    );

    final Try = Draggable<String>(
      data: "KKKKK",
      child: Block1,
      feedback: Block2,
      childWhenDragging: Block3,
    );
    final TryTry = DragTarget<String>(
      builder: (BuildContext context, List<dynamic> accepted, List<dynamic> rejected,) {return GetBox;},
      onAccept: (String data) {
        setState(() {
          CheckBox = true;
        });
      },
    );

    final BoxPick = Stack(
      alignment: Alignment.topRight,
      children: [
        Block3,
        Visibility(
          visible: !CheckBox,
          child: Try,
        ),
      ],
    );
    final Box = Stack(
      alignment: Alignment.center,
      children: [
        TryTry,
        Visibility(
          visible: CheckBox,
          child: BlockShow1,
        ),
      ],
    );


    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: Icon(Icons.grade),
        title: Text("Flutter Widget"),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          SizedBox(height: 20.0,),
          Center(child: BoxPick),
          SizedBox(height: 200.0,),
          Center(child: Box),
          SizedBox(height: 20.0,),
        ],
      ),
    );
  }
}
