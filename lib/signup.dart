import 'package:blood_donation/main.dart';
import 'package:flutter/material.dart';
import 'package:blood_donation/personalinfo.dart';
//void main() => runApp(new SignUp());

class SignUp extends StatelessWidget {
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
  TextEditingController nameControler = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(children: <Widget>[
          Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Sign up',
                style: TextStyle(fontSize: 20, color: Colors.pink),
              )),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Name',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              controller: nameControler,
              decoration: const InputDecoration(border: OutlineInputBorder(), labelText: 'Email'),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              obscureText: true,
              controller: passwordController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              obscureText: true,
              controller: passwordControler,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Confirm Password',
              ),
            ),
          ),
          Container(
              height: 80,
              padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
              child: ElevatedButton(
                  child: const Text('Sign up'),
                  onPressed: () {
                    print(nameController.text);
                    print(passwordController.text);
                    Navigator.pushReplacement(
                    context,MaterialPageRoute(builder: (context) => Info()),);  
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.pink[400]))),
          Row(
            children: <Widget>[
              const Text('Already  have an account?'),
              TextButton(
                child: const Text(
                  'Sign in',
                  style: TextStyle(fontSize: 20, color: Colors.pink),
                ),
                onPressed: () {
                  //signup screen
                  Navigator.pushReplacement(
                      context,
                       MaterialPageRoute(builder: (context) => MyApp(),
                   ));
                },
              )
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ]));
  }
}
