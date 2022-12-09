import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive, overlays: []);
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 60,
            ),
            Text(
              'Welcome to the Application',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 35),
            ),
            SizedBox(
              height: 80,
            ),
            Text(
              'E M A I L',
              style: TextStyle(color: Colors.black),
            ),
            TextField(
              decoration: InputDecoration(hintText: "Put your email here !!"),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'P A S S W O R D',
              style: TextStyle(color: Colors.black),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "Put your password here !!",
                  suffixIcon: Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                    child: GestureDetector(
                      child: Container(
                          margin: EdgeInsets.only(top: 15),
                          child: Text(
                            "SHOW",
                            style: TextStyle(color: Colors.blueAccent),
                          )),
                    ),
                  )),
            ),
            Row(
              children: [
                Expanded(child: Container()),
                Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text(
                      "Forgot Password ?",
                      style: TextStyle(color: Colors.blue),
                    )),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 39,
              width: MediaQuery.of(context).size.width,
              child: Center(
                  child: Text(
                "L O G I N",
                style: TextStyle(color: Colors.white),
              )),
              decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.greenAccent.withOpacity(0.5),
                      blurRadius: 10,
                      offset: Offset(0, 10),
                    )
                  ]),
            ),
            SizedBox(
              height: 39,
            ),
            Center(
              child: Text(
                "Create New Account",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
