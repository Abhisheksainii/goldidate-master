import 'package:flutter/material.dart';
import 'package:goldidate/routes/app_routes.dart';
import 'package:goldidate/utils/common.dart';

class MessageType {
  String names;
  bool isread;
  MessageType({@required this.names, @required this.isread});
}

class AllChats extends StatefulWidget {
  @override
  _AllChatsState createState() => _AllChatsState();
}

class _AllChatsState extends State<AllChats> {
  List<MessageType> messsage = [
    MessageType(names: "Mossic", isread: false),
    MessageType(names: "Johnson", isread: false),
    MessageType(names: "Loki", isread: true),
    MessageType(names: "Loki", isread: true),
    MessageType(names: "Loki", isread: true),
    MessageType(names: "Loki", isread: true),
    MessageType(names: "Harry", isread: false),
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView.builder(
          padding: EdgeInsets.only(
            top: height * 0.025,
            left: width * 0.05,
          ),
          itemCount: messsage.length,
          itemBuilder: (context, int index) {
            return InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(AppRoutes.chatscreen);
              },
              child: Row(
                children: [
                  Container(
                    height: height * 0.1,
                    width: width * 0.1,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image:
                            AssetImage(Common.assetsImages + "Chat$index.png"),
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
                        "${messsage[index].names}",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF424242),
                          fontWeight: messsage[index].isread
                              ? FontWeight.w400
                              : FontWeight.w600,
                        ),
                      ),
                      Text(
                        "Hey, how's life going?",
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF424242),
                            fontWeight: messsage[index].isread
                                ? FontWeight.w400
                                : FontWeight.w600),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: width * 0.25,
                  ),
                  Column(
                    children: [
                      Visibility(
                        visible: messsage[index].isread,
                        child: Image(
                          image: AssetImage(Common.assetsImages + "chat.png"),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: height * 0.02),
                        child: Text(
                          "9:27 AM",
                          style:
                              TextStyle(fontSize: 12, color: Color(0xFF9E9E9E)),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            );
          }),
    );
  }
}
