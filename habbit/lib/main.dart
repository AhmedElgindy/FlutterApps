import 'package:flutter/material.dart';
import 'package:habbit/habbit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Habbit Tracker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
          ),
          body: Container(
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 20,
                    ),
                    Text(
                      "My Habbits",
                      style: TextStyle(fontSize: 32, color: Color(0xFF3C5AD8)),
                    ),
                  ],
                ),
                Container(
                  height: 20,
                ),
                Container(
                  height: 80,
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(),
                      ),
                      Flexible(
                        flex: 3,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xffFF5610),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Center(
                            child: Container(
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('6',
                                        style: TextStyle(color: Colors.white)),
                                    Container(
                                      height: 5,
                                    ),
                                    Text('M',
                                        style: TextStyle(color: Colors.white)),
                                  ]),
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(),
                      ),
                      Flexible(
                        flex: 3,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Center(
                            child: Container(
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('6',
                                        style: TextStyle(
                                            color: Color(0xFFBAAAB3))),
                                    Container(
                                      height: 5,
                                    ),
                                    Text('M',
                                        style: TextStyle(
                                            color: Color(0xFFBAAAB3))),
                                  ]),
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(),
                      ),
                      Flexible(
                        flex: 3,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Center(
                            child: Container(
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('6',
                                        style: TextStyle(
                                            color: Color(0xFFBAAAB3))),
                                    Container(
                                      height: 5,
                                    ),
                                    Text('M',
                                        style: TextStyle(
                                            color: Color(0xFFBAAAB3))),
                                  ]),
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(),
                      ),
                      Flexible(
                        flex: 3,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Center(
                            child: Container(
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('6',
                                        style: TextStyle(
                                            color: Color(0xFFBAAAB3))),
                                    Container(
                                      height: 5,
                                    ),
                                    Text('M',
                                        style: TextStyle(
                                            color: Color(0xFFBAAAB3))),
                                  ]),
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(),
                      ),
                      Flexible(
                        flex: 3,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Center(
                            child: Container(
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('6',
                                        style: TextStyle(
                                            color: Color(0xFFBAAAB3))),
                                    Container(
                                      height: 5,
                                    ),
                                    Text('M',
                                        style: TextStyle(
                                            color: Color(0xFFBAAAB3))),
                                  ]),
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(),
                      ),
                      Flexible(
                        flex: 3,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Center(
                            child: Icon(
                              Icons.more_vert,
                              color: Color(0xFFBAAAB3),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 40,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Flexible(
                            flex: 10,
                            child: Container(),
                          ),
                          Flexible(
                            flex: 35,
                            child: GestureDetector(
                              onTap: () {
                                var route = new MaterialPageRoute(
                                    builder: (BuildContext) =>
                                        new Habbit(data: "freelance"));
                                Navigator.of(context).push(route);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Color(0xffFF5610),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                height: 80,
                                child: Row(
                                  children: [
                                    Container(
                                      width: 20,
                                    ),
                                    Text(
                                      '8',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                    Spacer(),
                                    Text(
                                      'freelance',
                                      style: TextStyle(
                                          fontSize: 30, color: Colors.white),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.shopping_bag,
                                      color: Colors.white,
                                      size: 40,
                                    ),
                                    Container(
                                      width: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            child: Container(),
                            flex: 3,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Flexible(
                            flex: 10,
                            child: Container(),
                          ),
                          Flexible(
                            flex: 35,
                            child: GestureDetector(
                              onTap: () {
                                var route = new MaterialPageRoute(
                                    builder: (BuildContext) =>
                                        new Habbit(data: "house"));
                                Navigator.of(context).push(route);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Color(0xffFE9F29),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                height: 80,
                                child: Row(
                                  children: [
                                    Container(
                                      width: 20,
                                    ),
                                    Text(
                                      '4',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                    Spacer(),
                                    Text(
                                      'House',
                                      style: TextStyle(
                                          fontSize: 30, color: Colors.white),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.house,
                                      color: Colors.white,
                                      size: 40,
                                    ),
                                    Container(
                                      width: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            child: Container(),
                            flex: 3,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Flexible(
                            flex: 10,
                            child: Container(),
                          ),
                          Flexible(
                            flex: 35,
                            child: GestureDetector(
                              onTap: () {
                                var route = new MaterialPageRoute(
                                    builder: (BuildContext) =>
                                        new Habbit(data: "personal"));
                                Navigator.of(context).push(route);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Color(0xffFE827C),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                height: 80,
                                child: Row(
                                  children: [
                                    Container(
                                      width: 20,
                                    ),
                                    Text(
                                      '0',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                    Spacer(),
                                    Text(
                                      'Personal',
                                      style: TextStyle(
                                          fontSize: 30, color: Colors.white),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.book,
                                      color: Colors.white,
                                      size: 40,
                                    ),
                                    Container(
                                      width: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            child: Container(),
                            flex: 3,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Flexible(
                            flex: 10,
                            child: Container(),
                          ),
                          Flexible(
                            flex: 35,
                            child: GestureDetector(
                              onTap: () {
                                var route = new MaterialPageRoute(
                                    builder: (BuildContext) =>
                                        new Habbit(data: "shoping"));
                                Navigator.of(context).push(route);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Color(0xff3C5AD8),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                height: 80,
                                child: Row(
                                  children: [
                                    Container(
                                      width: 20,
                                    ),
                                    Text(
                                      '15',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                    Spacer(),
                                    Text(
                                      'Shoping',
                                      style: TextStyle(
                                          fontSize: 30, color: Colors.white),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.shopping_cart,
                                      color: Colors.white,
                                      size: 40,
                                    ),
                                    Container(
                                      width: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            child: Container(),
                            flex: 3,
                          ),
                        ],
                      ),
                      Container(height: 40),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
    ;
  }
}
