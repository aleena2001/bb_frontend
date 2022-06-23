import 'package:blood_donation/faq.dart';
import 'package:flutter/material.dart';
class Homepage  extends StatelessWidget {
  //const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.pink[400],
        
      ),
      body:
      
      
      Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: Column(
          children:[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
               
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 250,
                  decoration: BoxDecoration(
                  image:DecorationImage(
                  image:AssetImage('assets/images/home.jpeg',
                  ),
                            fit:BoxFit.fill,)
                    
                  ),
                  
                      /* child: 
                       
                            Image.asset('assets/images/home.jpeg',
                            width:410.5,
                            height: 450,), // <-- SEE HERE*/
                             
                )
              ] 
            ),

             Row(
            //mainAxisAlignment: MainAxisAlignment.center,
            
            children: [
              
              Column(
              
                children:[
                  
                  Container(
                    padding: const EdgeInsets.fromLTRB(7,80, 10, 0),
                    child: ElevatedButton(
                    onPressed: () {
                      //forgot password screen
                    },
                    //child: const Text('Forgot Password',),
                    child:const Text(
                      'Donate Blood',
                      textAlign:TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                      ),
                      
                      style:ElevatedButton.styleFrom(
                        primary: Colors.pink[400],
                        padding: EdgeInsets.all(30),
                        alignment: Alignment.center
                      ) ,
                    
                ),
                  ),
                 ]
              ),
              
              Container(
                padding: const EdgeInsets.fromLTRB(7, 80, 10, 0),    
                child: Column(
                        
                          children:[
                    ElevatedButton(
                    onPressed: () {
                      //forgot password screen
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.pink[400],
                      padding: EdgeInsets.all(30),
                      alignment: Alignment.center
                      
                    ),
                    //child: const Text('Forgot Password',),
                    
                    child:const Text(
                      'Request Blood',
                      textAlign:TextAlign.right,
                      
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                      
                        
                      ),
                      
                    )
                  ),
                   ]
                ),
              ),
              
              
            ]
                  
              
            ,),
             Row(
            //mainAxisAlignment: MainAxisAlignment.center,
            
            children: [
              
              Column(
              
                children:[
                  
                  Container(
                    padding: const EdgeInsets.fromLTRB(7,30, 10, 0),
                    child: ElevatedButton(
                    onPressed: () {
                      //forgot password screen
                    },
                    //child: const Text('Forgot Password',),
                    child:const Text(
                      ' Events            ',
                      textAlign:TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                      ),
                      
                      style:ElevatedButton.styleFrom(
                        primary: Colors.pink[400],
                        padding: EdgeInsets.all(30),
                        alignment: Alignment.center
                      ) ,
                    
                ),
                  ),
                 ]
              ),
              
              Container(
                padding: const EdgeInsets.fromLTRB(7, 30, 10, 0),    
                child: Column(
                        
                          children:[
                    ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Faq()));
                    },
                    style: ElevatedButton.styleFrom(
                      
                      primary: Colors.pink[400],
                      padding: EdgeInsets.all(30),
                      alignment: Alignment.center
                      
                    ),
                    //child: const Text('Forgot Password',),
                    
                    child:const Text(
                        " FAQ                 " ,
                      textAlign:TextAlign.center,
                      
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                      
                        
                      ),
                      
                    )
                  ),
                   ]
                ),
              ),
              
              
            ]
                  
              
            ,),
            ]
            
        ),
      ),
    
        
    )
      
    ;
  }
}
