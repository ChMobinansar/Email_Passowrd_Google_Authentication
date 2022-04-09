import 'package:emailpasswordauthentication/services/auth_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyFirst extends StatelessWidget {
  const MyFirst({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('first'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("EmailPasswordAuthentication",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'login');
                },
                child: Text('Login')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'register');
                },
                child: Text('Register')),
            SizedBox(
              height: 30,
            ),
            Text("GoogleAuthentication",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 30,
            ),
            Center(
              child: RaisedButton(
                onPressed: () async {
                  await AuthServices.signInWithGoogleAccount();
                },
                color: Colors.blue,
                child: Text("Sign in", style: TextStyle(color: Colors.white)),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: RaisedButton(
                onPressed: () async {
                  await AuthServices.signOutFromGoogle();
                },
                color: Colors.blue,
                child: Text("Sign out", style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
