import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amberAccent,
        appBar: AppBar(
          title: Text('I Am Rich'),
          backgroundColor: Colors.redAccent,
          leading: const IconButton(
            onPressed: null,
            icon: Icon(Icons.menu),
            tooltip: 'Menu',
          ),
        ),
        body: SafeArea(
            child: Column( //Row
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(radius: 80, backgroundColor: Colors.white, backgroundImage: NetworkImage("https://media-exp1.licdn.com/dms/image/C4D03AQEdHrby2IzlZg/profile-displayphoto-shrink_400_400/0/1516542582287?e=1634774400&v=beta&t=6greFQvped7cSa0ayFxSxPuAOKAmqV5xhfrdnKYOHI4"),),
                Text("Kai Zhang", style: TextStyle(letterSpacing: 3, fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                Text("Vanguard SRE", style: TextStyle(fontFamily: "Calibri", fontSize: 12, color: Colors.blue),),
                SizedBox(height: 20, width: 150, child: Divider(color: Colors.blue,),),
                Container(
                  color: Colors.black,
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.phone,
                        size: 10,
                        color: Colors.white,
                      ),
                      SizedBox(width: 20,),
                      Text("07972936406", style: TextStyle(color: Colors.white)),
                    ],
              )
                    
                ),
                Container(color: Colors.black,
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.email,
                        size: 10,
                        color: Colors.white,
                      ),
                      SizedBox(width: 18,),
                      Text("kaizhang@hotmail.com", style: TextStyle(color: Colors.white)),
                    ],
              )                 
                ),
                Card(
                  color: Colors.blueGrey,
                  child: ListTile(leading: Icon(Icons.web, size:25), title: Text("https://www.linkedin.com/in/kai-zhang-93488414/", style: TextStyle(color: Colors.white, fontSize: 12)),)
                ),
              ],
            ),
          ),
        
        floatingActionButton: FloatingActionButton(
          tooltip: 'Add',
          child: Icon(Icons.add_a_photo),
          onPressed: () {
            print("Pressed");
          }, // this only update in debug console
        ),
      ),
    );
  }
}
