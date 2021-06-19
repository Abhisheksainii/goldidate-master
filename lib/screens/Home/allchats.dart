import 'package:flutter/material.dart';
import 'package:goldidate/utils/common.dart';

class AllChats extends StatefulWidget {
  @override
  _AllChatsState createState() => _AllChatsState();
}

class _AllChatsState extends State<AllChats> {
  final List<String> names = <String>[
    "Dennis Steele",
    "Rosa Richards",
    "Lora Barnett",
    "Christopher Steven",
    "Lora Barnett",
    "Rosa Richards",
    "Alice Morson",
    "Jason Masdella",
    "Bruce Molkins"
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView.builder(
          padding: EdgeInsets.only(top: height * 0.025, left: width * 0.05),
          itemCount: names.length,
          itemBuilder: (context, int index) {
            return Row(
              children: [
                Container(
                  height: height * 0.1,
                  width: width * 0.1,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(Common.assetsImages + "Chat$index.png"),
                    ),
                  ),
                ),
                SizedBox(
                  width: width * 0.03,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Text(
                      "${names[index]}",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF424242),
                      ),
                    ),
                    Text(
                      "Hey, how's life going?",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF424242),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                  ],
                ),
                SizedBox(
                  width: width * 0.22,
                ),
                Padding(
                  padding: EdgeInsets.only(top: height * 0.02),
                  child: Text(
                    "9:27 AM",
                    style: TextStyle(fontSize: 12, color: Color(0xFF9E9E9E)),
                  ),
                )
              ],
            );
          }),
    );
  }
}
