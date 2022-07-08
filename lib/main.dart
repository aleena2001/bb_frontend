//import 'package:blood_donation/personalinfo.dart';
import 'package:blood_donation/SignUp.dart';
import 'package:flutter/material.dart';
import 'package:blood_donation/home.dart';

void main() => runApp(new MyApp());
 
class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);
  //static const String _title = 'Sample App';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     // title: _title,
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
  TextEditingController passwordController = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            
            
                Column(
                   children: [
                        Image.asset('assets/images/images.png'), // <-- SEE HERE
                         ],
                  ),
                  Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Sign in',
                  style: TextStyle(fontSize: 30,
                  color: Colors.pink),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email ',
                ),
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
            TextButton(
              onPressed: () {
                //forgot password screen
              },
              //child: const Text('Forgot Password',),
              child:const Text(
                'Forgot Password?',
                textAlign:TextAlign.right,
                
                style: TextStyle(
                  color: Colors.pink,
                  
                ),
              )
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Login'),
                  onPressed: () {
                    print("Login button pressed");
                    print(nameController.text);
                    print(passwordController.text);
                    Navigator.pushReplacement(
                      context,
                       MaterialPageRoute(builder: (context) => Homepage(),
                   ));
                                   
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.pink[400],
                  )
                )
            ),
            Row(
              children: <Widget>[
                const Text('Do not have account? '),
                TextButton(
                  child: const Text(
                    'Sign up',
                    style: TextStyle(fontSize: 15,
                    
                       color: Colors.pink),
                
                  ),
                  onPressed: () {
                    //signup screen
                   Navigator.pushReplacement(
                    context,MaterialPageRoute(builder: (context) => SignUp()),);

                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.end,
              
            ),
          ],
        ));
  }
}