import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final accountNameEditor = TextEditingController();
  final accountPasswordEditor = TextEditingController();
  final correctPassword = "12345";
  String wrongPassword = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sign In Page",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(255, 64, 129, 1),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                TextField(
                  controller: accountNameEditor, // Use the controller
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(255, 64, 129, 0.5),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(90),
                    ),
                    hintStyle: TextStyle(color: Colors.black),
                    hintText: "Username",
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  controller: accountPasswordEditor,
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(255, 64, 129, 0.5),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(90),
                    ),
                    hintStyle: TextStyle(color: Colors.black),
                    hintText: "Password",
                  ),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    if (accountPasswordEditor.text == correctPassword) {
                      GoRouter.of(context).push('/details',
                          extra: {'username': accountNameEditor.text});
                    } else {
                      setState(() {
                        wrongPassword = "Unauthorized";
                      });
                    }
                  },
                  child: Text("Login"),
                ),
              ],
            ),
          ),
          Text("Password status: $wrongPassword"),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: HomeScreen(),
  ));
}
