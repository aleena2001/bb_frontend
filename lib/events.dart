import 'package:flutter/material.dart';
class Events extends StatefulWidget {
  //const Homepage({ Key? key }) : super(key: key);

  @override
  State<Events> createState() => _EventsState();
}

class _EventsState extends State<Events> {  //const Events({ Key? key }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Events"),
        backgroundColor: Colors.pink,
        
      ),
      body: Column(
        children: [
          /*ListView.builder(
            itemCount: items.length,

          ),*/
          Positioned(
            right: 10,
            bottom: 10,
            child: Container(
              padding: EdgeInsets.only(bottom: 10,right: 10),
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(               
                child: Icon(Icons.add,
                color: Colors.white,
                size: 30,),
               backgroundColor: Colors.pink,
                onPressed: (){
                  
              },
             ),
            ),
          ),
        ],
      ),


    );
  }
}