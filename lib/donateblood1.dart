
import 'package:flutter/material.dart';
import 'package:blood_donation/donateblood2.dart';
class Donate1 extends StatefulWidget {
  //const Homepage({ Key? key }) : super(key: key);

  @override
  State<Donate1> createState() => _DonateState();
}

class _DonateState extends State<Donate1> {  //const Donate1({ Key? key }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" "),
        backgroundColor: Colors.pink,
        
      ),
      body: DonateBlood(),


    );
  }
}
class DonateBlood extends StatefulWidget {
  //const DonateBlood({Key? key}) : super(key: key);

  @override
  State<DonateBlood> createState() => _DonateBloodState();
}

class _DonateBloodState extends State<DonateBlood> {
  TextEditingController nameController = TextEditingController();
  TextEditingController nameController1 = TextEditingController();
  TextEditingController nameController2 = TextEditingController();
  TextEditingController nameController3 = TextEditingController();
  TextEditingController nameController4 = TextEditingController();
  TextEditingController nameController5 = TextEditingController();
  TextEditingController nameController6 = TextEditingController();
  TextEditingController nameController7 = TextEditingController();
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(children: <Widget>[
          Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text(
                '',
                style: TextStyle(fontSize: 20, color: Colors.pink),
              )),
          Container(
            child: Text("   Date of last Donation?",
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
                labelText: 'DD|MM|YY',
              ),
            ),
          ),
          Container(
            child: Text("   Did you experience any difficulty or discomfort during previous donations?",
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
            child: Text("   Are you feeling well today?",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: nameController1,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                //labelText: 'Blood Group',
              ),
            ),
          ),
          Container(
            child: Text("   Time of last meal?",
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
              padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
              child: ElevatedButton(
                  child: const Text('Next'),
                  onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>Donate2()));
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.pink[400]))),
        ]));
  }
}