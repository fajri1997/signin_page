import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  final String accountName;

  const SignInPage({
    Key? key,
    required this.accountName,
  }) : super(key: key);

  @override
  State<SignInPage> createState() => SignInPageState();
}

class SignInPageState extends State<SignInPage> {
  late String accountName;

  @override
  void initState() {
    super.initState();
    accountName = widget.accountName;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome Page"),
        backgroundColor: Color.fromRGBO(255, 64, 129, 1),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Welcome $accountName"),
            Image.asset(
              "assets/images/check-mark-computer-icons-royalty-free-clip-art-blue-check-mark.jpg",
              height: 150,
              width: 150,
            ),
          ],
        ),
      ),
    );
  }
}
