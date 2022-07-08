
import 'package:flutter/material.dart';

//import 'package:blood_donation/donateblood3.dart';
class Donate3 extends StatefulWidget {
  //const Homepage({ Key? key }) : super(key: key);

  @override
  State<Donate3> createState() => _Donate3State();
}

class _Donate3State extends State<Donate3> {  //const Donate3({ Key? key }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" "),
        backgroundColor: Colors.pink,
        
      ),
      body: Donate3Blood(),


    );
  }
}
class Donate3Blood extends StatefulWidget {
  //const Donate3Blood({Key? key}) : super(key: key);

  @override
  State<Donate3Blood> createState() => _Donate3BloodState();
}

class _Donate3BloodState extends State<Donate3Blood> {
  TextEditingController nameController = TextEditingController();
  TextEditingController nameController1 = TextEditingController();
  TextEditingController nameController2 = TextEditingController();
  TextEditingController nameController3 = TextEditingController();
  TextEditingController nameController4 = TextEditingController();
  TextEditingController nameController5 = TextEditingController();
  TextEditingController nameController6 = TextEditingController();
  TextEditingController nameController7 = TextEditingController();
  int _value = 1;
   bool a = false;  
  bool  b= false; 
  bool c = false; 
  bool d = false; 
  bool e = false; 
  bool f = false; 
  bool g = false; 
  bool h = false; 
  bool i = false; 
  bool j = false; 
  bool k = false; 


  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(children: <Widget>[
          Container(
              //alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text(
                '',
                style: TextStyle(fontSize: 20, color: Colors.black,
                fontWeight: FontWeight.bold),
              )),
          Container(
            child: Text("   Have you taken any medicines in the last 14 days esp. aspirin or antibiotics?",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                //labelText: 'DD|MM|YY',
              ),
            ),
          ),
          Container(
            child: Text("   Do you have a habit of consuming liquor or tobacco ?",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                //labelText: 'DD|MM|YY',
              ),
            ),
          ),
          Container(
            child: Text("   Have you had any of the following?",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
          ),
              Row(children: [
                Checkbox(  
                      checkColor: Colors.greenAccent,  
                      activeColor: Colors.pink.shade300,  
                      value: this.a,  
                      onChanged: (bool value) {  
                        setState(() {  
                          this.a = value;  
                        });  
                      },  
                    ),  
                    Text('Jaundice',style: TextStyle(fontSize: 17.0), ),  

                    Checkbox(  
                      value: this.b,  
                      onChanged: (bool value) {  
                        setState(() {  
                          this.b = value;  
                        });  
                      },  
                    ), 
                    Text('Cancer',style: TextStyle(fontSize: 17.0), ),
                    Checkbox(  
                      value: this.c,  
                      onChanged: (bool value) {  
                        setState(() {  
                          this.c = value;  
                        });  
                      },  
                    ), 
                    Text('Hepatitis B or C',style: TextStyle(fontSize: 17.0), ),
              ],),
              Row(children: [
                Checkbox(  
                      checkColor: Colors.greenAccent,  
                      activeColor: Colors.pink.shade300,  
                      value: this.d,  
                      onChanged: (bool value) {  
                        setState(() {  
                          this.d = value;  
                        });  
                      },  
                    ),  
                    Text('Heart/Lung Disease',style: TextStyle(fontSize: 17.0), ),  

                    Checkbox(  
                      value: this.e,  
                      onChanged: (bool value) {  
                        setState(() {  
                          this.e = value;  
                        });  
                      },  
                    ), 
                    Text('Diabetes',style: TextStyle(fontSize: 17.0), ),
                   
              ],),
              Row(children: [
                Checkbox(  
                      checkColor: Colors.greenAccent,  
                      activeColor: Colors.pink.shade300,  
                      value: this.f,  
                      onChanged: (bool value) {  
                        setState(() {  
                          this.f = value;  
                        });  
                      },  
                    ),  
                    Text('Leprosy',style: TextStyle(fontSize: 17.0), ),  

                    Checkbox(  
                      value: this.g,  
                      onChanged: (bool value) {  
                        setState(() {  
                          this.g = value;  
                        });  
                      },  
                    ), 
                    Text('Tuberculosis',style: TextStyle(fontSize: 17.0), ),
                    Checkbox(  
                      value: this.h,  
                      onChanged: (bool value) {  
                        setState(() {  
                          this.h = value;  
                        });  
                      },  
                    ), 
                    Text('Asthma',style: TextStyle(fontSize: 17.0), ),
              ],),
              Row(children: [
                Checkbox(  
                      checkColor: Colors.greenAccent,  
                      activeColor: Colors.red,  
                      value: this.i,  
                      onChanged: (bool value) {  
                        setState(() {  
                          this.i = value;  
                        });  
                      },  
                    ),  
                    Text('Gonorhoea',style: TextStyle(fontSize: 17.0), ),  

                    Checkbox(  
                      value: this.j,  
                      onChanged: (bool value) {  
                        setState(() {  
                          this.j = value;  
                        });  
                      },  
                    ), 
                    Text('Syphilis',style: TextStyle(fontSize: 17.0), ),
                    Checkbox(  
                      value: this.k,  
                      onChanged: (bool value) {  
                        setState(() {  
                          this.k = value;  
                        });  
                      },  
                    ), 
                    Text('Amoebiasis',style: TextStyle(fontSize: 17.0), ),
              ],),
              
              
          /*Container(
            child: Text("   Jaundice, Hepatitis B or C, Cancer, Asthma ,Heart/Lung Disease, Tuberculosis, Diabetes, Leprosy, Gonorhoea, Syphilis",
            style: TextStyle(
              fontSize: 20,
              //fontWeight: FontWeight.bold,
            )),
            ),
          */
          /*Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: nameController1,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                //labelText: 'Blood Group',
              ),
            ),
          ),*/
         /* Container(
            child: Text("   Bitten by animal?",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                //labelText: 'DD|MM|YY',
              ),
            ),
          ),*/
          
         /* Container(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Sex'),
                SizedBox(
                  width: 20,
                ),
                DropdownButton(
                    value: _value,
                    items: [
                      DropdownMenuItem(
                        child: Text("F"),
                        value: 1,
                      ),
                      DropdownMenuItem(
                        child: Text("M"),
                        value: 2,
                      )
                      ,
                      DropdownMenuItem(
                        child: Text("Other"),
                        value: 2,
                      )
                    ],
                    onChanged: (value) {
                      setState(() {
                        _value = value as int;
                      });
                    },
                    hint: Text("Sex")),
              ],
            ),
          ),*/
          /*Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              controller: nameController2,
              decoration: const InputDecoration(border: OutlineInputBorder(), labelText: 'Phone Number'),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              //obscureText: true,
              controller: nameController3,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Address',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              //obscureText: true,
              controller: nameController4,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Height',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              //obscureText: true,
              controller: nameController5,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Weight',
              ),
            ),
          ),*/
          
          Container(
              height: 80,
              padding: const EdgeInsets.fromLTRB(10, 25, 10, 0),
              child: ElevatedButton(
                  child: const Text('Next'),
                  onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>Donate3()));
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.pink[400]))),
        ]));
  }
}