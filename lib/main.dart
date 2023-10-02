import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp( Mylogin());
}

class Mylogin extends StatelessWidget {
  const Mylogin({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner:false,
      home: MyScfold(),
    );
  }
}

class MyScfold extends StatefulWidget {
  const MyScfold({super.key});

  @override
  State<MyScfold> createState() => _MyScfoldState();
}

class _MyScfoldState extends State<MyScfold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text("Login"),),
      body: SafeArea(
        child: Center(
          child: Container(
            margin: EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlutterLogo(
                  size: 80,
                ),
                SizedBox(
                  height: 20,
                ),
                Text("LoginScreen"),
                SizedBox(
                  height: 50,
                ),
                TextField(
                    decoration:
                        InputDecoration(filled: true, labelText: "UserName")),
                SizedBox(height: 12.0),
                TextField(
                  decoration:
                      InputDecoration(filled: true, labelText: "PassWord"),
                  obscureText: true,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      child: Text('CANCEL'),
                      onPressed: () {
                        // TODO: Clear the text fields (101)
                      },
                    ),
                    // TODO: Add an elevation to NEXT (103)
                    // TODO: Add a beveled rectangular border to NEXT (103)
                    ElevatedButton(
                      child: Text('NEXT'),
                      onPressed: () {
                        // TODO: Show the next page (101)
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
