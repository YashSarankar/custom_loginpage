import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
late bool ishover=false;
  @override
  Widget build(BuildContext context) {
    void ishover({required bool enabled}){
      setState(() {
        ishover=enabled;
      });
    }
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Center(
          child: Column(children: [
            Column(children: const [
              CircleAvatar(
                maxRadius: 50,
                backgroundColor: Colors.blueAccent,
              ),
              SizedBox(
                height: 25,
              ),
              Text("Welcome Back",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
              Text("Welcome Back! Please enter your details.",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
            ]),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: SizedBox(
                width: 250,
                child: TextFormField(
                    decoration: const InputDecoration(
                  labelText: "Email",
                  labelStyle: TextStyle(fontWeight: FontWeight.w500),
                  hintText: "Enter your email",
                  border: OutlineInputBorder(borderSide: BorderSide(width: 1.0)),
                  suffixIcon: Icon(Icons.alternate_email_rounded),
                )),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: SizedBox(
                width: 250,
                child: TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: "Password",
                      labelStyle: TextStyle(fontWeight: FontWeight.w500),
                      hintText: "Enter Password",
                      border:
                          OutlineInputBorder(borderSide: BorderSide(width: 1.0)),
                      suffixIcon: Icon(Icons.lock_outline_sharp),
                    )),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top:8,left: 150 ),
              child: Text.rich(TextSpan(
                  text: 'Forgot password'),style: TextStyle(decoration: ishover? TextDecoration.underline:TextDecoration.none,
                  color: Colors.blueAccent),),
            ),
            Container(
              width: 250,
              height: 50,
              padding: const EdgeInsets.only(top: 8.0),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Submit',
                  style: TextStyle(fontSize: 20),
                ),
            ),
            ),
          ]),
        ),
      ),
    );
  }
}
