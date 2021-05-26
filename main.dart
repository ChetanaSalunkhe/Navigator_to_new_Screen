import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterapp/static_listview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  var txtController = TextEditingController();

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("Delivery Details"),
        actions: [
          IconButton(icon: Icon(Icons.map,color: Colors.white,), onPressed: null)
        ],

        //home, navigationdrawer
        leading: IconButton(icon: Icon(Icons.home,color: Colors.white,), onPressed: null)
        //leading: Image.asset("assets/vrittilogo.png")
      ),
      body: Container(
          margin: EdgeInsets.all(10),
        child:SingleChildScrollView(
          child: Center(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [

                Column(
                  children: [

                    new TextField(decoration: InputDecoration(labelText: 'Invoice No.'),
                      style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal),),
                    new TextField(decoration: InputDecoration(labelText: 'Name'),
                    style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal),),
                    new TextField(decoration: InputDecoration(labelText: 'Address'),
                    style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal),),
                    new TextField(decoration: InputDecoration(labelText: 'Mobile'),
                    style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal),),
                    new TextField(decoration: InputDecoration(labelText: 'Warehouse Address'),
                    style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal),),

                    //container
                    /*Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 70,
                          child:new TextField(decoration: InputDecoration(labelText: 'Amount'),),
                        ),
                        Container(
                          width: 70,
                          child:new TextField(decoration: InputDecoration(labelText: 'Paid'),),
                        ),
                        Container(
                          width: 70,
                          child:new TextField(decoration: InputDecoration(labelText: 'Balance'),),
                        ),
                      ],
                    ),*/

                    //sizebox
                    /*Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 70,
                          child:new TextField(decoration: InputDecoration(labelText: 'Amount'),),
                        ),
                        SizedBox(
                          width: 70,
                          child:new TextField(decoration: InputDecoration(labelText: 'Paid'),),
                        ),
                        SizedBox(
                          width: 70,
                          child:new TextField(decoration: InputDecoration(labelText: 'Balance'),),
                        ),
                      ],
                    ),*/

                    //flexible
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          flex: 1,fit: FlexFit.loose,
                          child:Padding(
                            padding: EdgeInsets.only(right: 10),
                            child:  new TextField(decoration: InputDecoration(labelText: 'Amount'),
                            style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal),),
                          ),
                        ),
                        Flexible(
                          flex: 1,fit: FlexFit.loose,
                          child:Padding(
                            padding: EdgeInsets.all(10),
                            child:  new TextField(decoration: InputDecoration(labelText: 'Paid',
                            labelStyle: TextStyle(color: Colors.green)),
                            style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal,
                            color: Colors.green),),
                          ),
                        ),
                        Flexible(
                          flex: 1,fit: FlexFit.loose,
                          child:Padding(
                            padding: EdgeInsets.only(left: 10),
                            child:  new TextField(decoration: InputDecoration(labelText: 'Balance',
                            labelStyle: TextStyle(color: Colors.red)),
                            style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal,
                            color: Colors.red),),
                          ),
                        ),
                      ],
                    ),

                    Row(
                      children: [
                        Flexible(
                            flex: 1,fit: FlexFit.loose,
                            child: Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: new TextField(decoration: InputDecoration(labelText: 'Date',
                              suffixIcon: IconButton(
                                icon: Icon(Icons.date_range),
                              )),
                                style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal),),
                            )
                        ),

                        Flexible(
                            flex: 1,fit: FlexFit.loose,
                            child: Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: new TextField(decoration: InputDecoration(labelText: 'Time',
                                 // icon: Icon(Icons.access_time),  //icon to left of textfield

                                //icon to right of textfield
                                suffixIcon: IconButton(
                                  icon: Icon(Icons.access_time),
                                ),),
                                style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal),),
                            )
                        )

                      ],
                    ),
                  ],
                ),

                Row(
                  children: [
                    new Radio(value: 0, groupValue: true, onChanged: null),
                    new Text("Cash",style: TextStyle(fontSize: 13,fontWeight:FontWeight.bold),),
                    new Radio(value: 1, groupValue: false, onChanged: null),
                    new Text("Online Payment",style: TextStyle(fontSize: 13,fontWeight:FontWeight.bold),),
                    new Radio(value: 2, groupValue: false, onChanged: null),
                    new Text("Paid",style: TextStyle(fontSize: 13,fontWeight:FontWeight.bold),),
                  ],
                ),

                Container(
                  height: 35,
                  width: 150,
                  //color: Colors.indigo,   //gives color to background(whole container)
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.indigo   //gives color to border shape
                  ),
                  child:  RaisedButton(
                    color: Colors.indigo,
                    //button click
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> StaticListView()));
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Text("Delivery",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),),
                ),

                Padding(
                 padding: EdgeInsets.all(10),
                 child: new Text("Reschedule",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,
                 color: Colors.indigo),),),

              ],
            ),
          ),

        )
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
