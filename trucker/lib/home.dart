import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rolling_switch/rolling_switch.dart';
import 'package:weekly_date_picker/weekly_date_picker.dart';

class Home extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xff060606),
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
        accentColor: Color(0xff060606),
      ),
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff060606),
            foregroundColor: Colors.white,
            leading: IconButton(
              icon: Icon(Icons.list),
              onPressed: () {},
            ),
            title: Text("Habit"),
            centerTitle: true,
            actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
          ),
          body: Column(
            children: [
              Expanded(
                child: ListView.separated(
                  itemCount: 3,
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      height: 20,
                    );
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xff292929),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: 100,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("first "),
                                    Spacer(),
                                    Text(
                                      "Scond One",
                                      style:
                                          TextStyle(color: Color(0xff7C7C7C)),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                    height: 50,
                                    child: WeeklyDatePicker(
                                      backgroundColor: Color(0xff292929),
                                      weekdayTextColor: Color(0xff7C7C7C),
                                      digitsColor: Color(0xff7C7C7C),
                                      selectedBackgroundColor:
                                          Color(0xffF16567),
                                      enableWeeknumberText: false,
                                      selectedDay: DateTime.now(),
                                      changeDay: (day) {},
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    );
                  },
                ),
              ),
              Buttonsheet()
            ],
          )),
    );
  }
}

class Buttonsheet extends StatefulWidget {
  Buttonsheet({Key? key}) : super(key: key);

  @override
  State<Buttonsheet> createState() => _ButtonsheetState();
}

class _ButtonsheetState extends State<Buttonsheet> {
  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
        onPressed: () => _onbuttonpressed(),
        icon: Icon(
          Icons.add_circle,
          color: Colors.white,
        ),
        label: Text(
          "New habit",
          style: TextStyle(color: Colors.white),
        ));
  }

  void _onbuttonpressed() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Cancle",
                            style: TextStyle(color: Color(0xff7C7C7C)),
                          )),
                      Spacer(),
                      Text("New habbit"),
                      Spacer(),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Done",
                            style: TextStyle(color: Color(0xff7C7C7C)),
                          )),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xff343434),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xffF16665),
                        ),
                        GestureDetector(
                            child: CircleAvatar(
                                backgroundColor: Color(0xffF7F186))),
                        GestureDetector(
                            child: CircleAvatar(
                                backgroundColor: Color(0xff2FC977))),
                        GestureDetector(
                            child: CircleAvatar(
                                backgroundColor: Color(0xff5666F2))),
                        GestureDetector(
                            child: CircleAvatar(
                                backgroundColor: Color(0xff9186F5))),
                        GestureDetector(
                            child: CircleAvatar(
                                backgroundColor: Color(0xff9B816C))),
                        GestureDetector(
                            child: CircleAvatar(
                                backgroundColor: Color(0xffA1A1A1))),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text('Frequancy'),
                            Text("Times a week"),
                          ],
                        ),
                        Row(
                          children: [
                            Container(child: Icon(Icons.remove)),
                            Text('3'),
                            Container(child: Icon(Icons.add)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text('Frequancy'),
                            Text("Times a week"),
                          ],
                        ),
                        RollingSwitch.widget(
                          onChanged: (s) {},
                          width: 80,
                          height: 50,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
