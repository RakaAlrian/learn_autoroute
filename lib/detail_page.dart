import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'auto_route.gr.dart';

class DetailPage extends StatefulWidget {
  final String value;
  const DetailPage({Key? key, required this.value}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {

  List<String> list = List.generate(10, (index) => index.toString());

  @override
  Widget build(BuildContext context) {
    list.remove(widget.value);
    return Scaffold(
      appBar: AppBar(
        title: Text('list ${widget.value}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            itemCount: list.length,
            itemBuilder: (BuildContext ctx, index) {
              return GestureDetector(
                onTap: () {
                  // Expected behavior
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => DetailPage(value: list[index]),
                  //   ),
                  // );
                  // Strange behavior with this line below
                  context.router.push(DetailPageRoute(value: list[index]));
                },
                child: Container(
                  alignment: Alignment.center,
                  child: Text(list[index]),
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(15)),
                ),
              );
            }),
      ),
    );
  }
}
