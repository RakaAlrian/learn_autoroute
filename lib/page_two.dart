import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:learn_autoroute/auto_route.gr.dart';

class PageTwoScreen extends StatefulWidget {
  const PageTwoScreen({Key? key}) : super(key: key);

  @override
  _PageTwoScreenState createState() => _PageTwoScreenState();
}

class _PageTwoScreenState extends State<PageTwoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("TWO"),
              TextButton(
                onPressed: () {
                  context.router.push(PageThreeScreenRoute());
                },
                child: Container(
                  color: Colors.red,
                  child: Text("THREE"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
