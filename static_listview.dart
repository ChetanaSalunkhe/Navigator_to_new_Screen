import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StaticListView extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    //throw UnimplementedError();
    return StaticList();
  }

}

class StaticList extends State {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("List View"),
        backgroundColor: Colors.indigo,

      ),
      body: Container(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [

                SizedBox(height: 50,),

                Padding(padding: EdgeInsets.all(10),
                child: new Text("Welcome to the Second screen in flutter",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,
                    color: Colors.indigo),),),

                Container(
                  width: 150,
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.indigo,
                  ),
                  child:  RaisedButton(
                      color: Colors.indigo,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      onPressed: (){
                        Navigator.pop(context);
                      },
                  child: Text("Go Back",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),)
                )

              ],
            ),
          ),
        ),
      ),
    );
    //throw UnimplementedError();
  }
}