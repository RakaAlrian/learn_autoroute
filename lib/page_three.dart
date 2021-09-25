import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:learn_autoroute/auto_route.gr.dart';

class PageThreeScreen extends StatefulWidget {
  const PageThreeScreen({Key? key}) : super(key: key);

  @override
  _PageThreeScreenState createState() => _PageThreeScreenState();
}

class _PageThreeScreenState extends State<PageThreeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("THREE"),
              TextButton.icon(
                onPressed: () {
                  context.router.popUntilRouteWithName(PageOneScreenRoute().routeName);
                },
                icon: Icon(Icons.arrow_back),
                label: Text("ONE"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
