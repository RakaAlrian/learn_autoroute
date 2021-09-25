import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:learn_autoroute/auto_route.gr.dart';
import 'package:learn_autoroute/user_model.dart';

class PageOneScreen extends StatefulWidget {
  const PageOneScreen({Key? key}) : super(key: key);

  @override
  _PageOneScreenState createState() => _PageOneScreenState();
}

class _PageOneScreenState extends State<PageOneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Center(
              child: Text("ONE"),
            ),
          ),
          TextButton(
            onPressed: () {
              context.router.push(PageTwoScreenRoute());
            },
            child: Text("PAGE TWO"),
          ),
          ElevatedButton(
            onPressed: () {
              context.router.pushNamed(PageThreeScreenRoute().path);
            },
            child: Text("PAGE THREE"),
          ),
          OutlinedButton(
            onPressed: () {
              context.router.push(PageFourScreenRoute(
                message: "buka 1",
                user: UserModel(name: "raka 1"),
              ));
            },
            child: Text("PAGE FOUR"),
          ),
        ],
      ),
    );
  }
}
