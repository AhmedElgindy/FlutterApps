import 'package:flutter/material.dart';

class Habbit extends StatefulWidget {
  String data;
  late bool value;
  late Color color;
  Habbit({required this.data}) {
    if (data == "freelance") {
      color = Color(0xffFF5610);
    } else if (data == "house") {
      color = Color(0xffFE9F29);
    } else if (data == "personal") {
      color = Color(0xffFE827C);
    } else if (data == "shoping") {
      color = Color(0xff3C5AD8);
    }
  }
  @override
  State<Habbit> createState() => _HabbitState();
}

class _HabbitState extends State<Habbit> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffFFF2DF),
          elevation: 0,
        ),
        body: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            children: [
              Container(
                height: 60,
              ),
              Row(
                children: [
                  Container(
                    width: 40,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: widget.color,
                        borderRadius: BorderRadius.circular(15)),
                    width: 200,
                    height: 200,
                    child: Icon(
                      Icons.shopping_bag,
                      size: 100,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Container(
                height: 40,
              ),
              Row(
                children: [
                  Container(
                    width: 40,
                  ),
                  Text(
                    "${widget.data} Tasks",
                    style: TextStyle(fontSize: 32, color: Color(0xFF3C5AD8)),
                  ),
                ],
              ),
              Container(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
