import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _textcontroller = TextEditingController();

  List<dynamic> message = [
    "message 1",
    "message 2",
    "message 3",
    "message 4",
    "message 5",
  ];
  List<String> sender = [
    "sender 1",
    "sender 2",
    "sender 3",
    "sender 4",
    "sender 5",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "3 Comma Club",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Center(
            child: Container(
              height: 900,
              color: Colors.black,
              child: ListView.builder(
                itemCount: sender.length,
                itemBuilder: (context, i) {
                  return Container(
                    padding: EdgeInsets.only(left: 5, top: 15),
                    child: Row(
                      children: [
                        Text(
                          "${sender[i]}" + ":~\$ ",
                          style: TextStyle(color: Colors.green),
                        ),
                        Text(
                          "${message[i]}",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          SlidingUpPanel(
            color: Colors.green,
            panel: Center(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 5),
                      child: TextField(
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          hintText: "Message",
                        ),
                      ),
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    elevation: 0.0,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.send,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            maxHeight: 150,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            defaultPanelState: PanelState.OPEN,
          ),
        ],
      ),
    );
  }
}
