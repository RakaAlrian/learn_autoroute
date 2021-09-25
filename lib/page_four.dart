import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:learn_autoroute/user_model.dart';
import 'auto_route.gr.dart';

class PageFourScreen extends StatefulWidget {
  final String message;
  final UserModel user;

  const PageFourScreen({
    Key? key,
    String? message,
    UserModel? user,
  })  : this.message = message ?? "",
        this.user = user ?? const UserModel(),
        super(key: key);

  @override
  _PageFourScreenState createState() => _PageFourScreenState();
}

class _PageFourScreenState extends State<PageFourScreen> {
  final _appRouter = LearnRouter();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Center(
              child: Text("FOUR"),
            ),
          ),
          Container(
            child: Center(
              child: Text(widget.message),
            ),
          ),
          Container(
            child: Center(
              child: Text(widget.user.name ?? ""),
            ),
          ),
          OutlinedButton(
            onPressed: () {
              _appRouter.push(PageFourScreenRoute(
                message: "buka 2",
                user: UserModel(name: "raka 2"),
              ));
            },
            child: Text("PAGE FOUR"),
          ),
        ],
      ),
    );
  }
}
