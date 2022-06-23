import 'package:flutter/material.dart';
import 'package:blood_donation/home.dart';
//void main() => runApp(new Info());

class Info extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  //static const String _title = 'Sample App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: _title,
      home: Scaffold(
        //appBar: AppBar(title: const Text(_title)),
        body: new MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  //const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
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
                'Personal Information',
                style: TextStyle(fontSize: 20, color: Colors.pink),
              )),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Age',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: nameController1,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Blood Group',
              ),
            ),
          ),
          Container(
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
          ),
          Container(
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
          ),
          
          Container(
              height: 80,
              padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
              child: ElevatedButton(
                  child: const Text('Next'),
                  onPressed: () {
                    print(nameController.text);
                    Navigator.pushReplacement(
                      context,
                       MaterialPageRoute(builder: (context) => Homepage(),
                   ));
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.pink[400]))),
        ]));
  }
}