import 'package:flutter/material.dart';
import 'package:goldidate/utils/common.dart';
import 'package:flutter/cupertino.dart';

class ChatMessage {
  String messageContent;
  String messageType;
  String messageCategory;
  ChatMessage(
      {@required this.messageContent,
      @required this.messageType,
      this.messageCategory});
}

class ChatScreen extends StatelessWidget {
  List<ChatMessage> messages = [
    ChatMessage(
      messageContent: "Hello, Will",
      messageType: "sender",
    ),
    ChatMessage(messageContent: "How have you been?", messageType: "receiver"),
    ChatMessage(
        messageContent: "Hey Kriss, I am doing fine dude. wbu?",
        messageType: "sender"),
    ChatMessage(messageContent: "ehhhh, doing OK.", messageType: "receiver"),
    ChatMessage(messageContent: "Hello, Will", messageType: "sender"),
    ChatMessage(messageContent: "How have you been?", messageType: "receiver"),
    ChatMessage(
        messageContent: "Hey Kriss, I am doing fine dude. wbu?",
        messageType: "sender"),
    ChatMessage(
        messageContent: Common.assetsImages + "ross.png",
        messageType: "receiver",
        messageCategory: "image"),
    ChatMessage(messageContent: "Hello, Will", messageType: "sender"),
    ChatMessage(messageContent: "How have you been?", messageType: "receiver"),
    ChatMessage(
        messageContent: "Hey Kriss, I am doing fine dude. wbu?",
        messageType: "sender"),
    ChatMessage(messageContent: "ehhhh, doing OK.", messageType: "receiver"),
  ];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.only(top: height * 0.01),
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: width * 0.05,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Color(0xFFD12BD1),
                    size: height * 0.04,
                  ),
                ),
                SizedBox(
                  width: width * 0.13,
                ),
                Padding(
                  padding: EdgeInsets.only(top: height * 0.02),
                  child: Text(
                    "Simon Carter",
                    style: TextStyle(
                        fontSize: height * 0.03, fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  width: width * 0.15,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage(Common.assetsImages + "Man.png"),
                  maxRadius: 20,
                ),
              ],
            ),
          ),
        ),
      ),
      body: Stack(
        clipBehavior: Clip.none,
        children: <Widget>[
          Positioned(
            top: height * 0.01,
            left: width * 0.4,
            child: Container(
              alignment: Alignment.center,
              width: width * 0.2,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2), //color of shadow
                    spreadRadius: 2, //spread radius
                    blurRadius: 3, // blur radius
                    offset: Offset(0, 2), // changes position of shadow
                    //first paramerter of offset is left-right
                    //second parameter is top to down
                  ),
                  //you can set more BoxShadow() here
                ],
                borderRadius: BorderRadius.all(
                  Radius.circular(40),
                ),
              ),
              child: Text(
                "Thursday",
                style: TextStyle(
                  color: Color(0xFFD12BD1),
                ),
              ),
            ),
          ),
          ListView.builder(
            reverse: true,
            shrinkWrap: true,
            itemCount: messages.length,
            padding: EdgeInsets.only(
                top: 10, bottom: 100, right: width * 0.03, left: width * 0.03),
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: messages[index].messageType == "receiver"
                      ? CrossAxisAlignment.end
                      : CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment:
                          messages[index].messageType == "receiver"
                              ? MainAxisAlignment.end
                              : MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              messages[index].messageType == "sender"
                                  ? AssetImage(Common.assetsImages + "Man.png")
                                  : AssetImage(Common.assetsImages + "Man."),
                          maxRadius: 20,
                          backgroundColor: Colors.transparent,
                        ),
                        Column(
                            crossAxisAlignment:
                                messages[index].messageType == "sender"
                                    ? CrossAxisAlignment.start
                                    : CrossAxisAlignment.end,
                            children: [
                              SizedBox(
                                height: height * 0.02,
                              ),
                              Container(
                                child: Material(
                                  color: Colors.transparent,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: height * 0.02,
                                        horizontal:
                                            messages[index].messageType ==
                                                    "receiver"
                                                ? width * 0.05
                                                : width * 0.019),
                                    child: messages[index].messageCategory ==
                                            "image"
                                        ? Container(
                                            child: Column(
                                              children: [
                                                Container(
                                                  child: Image.asset(
                                                      messages[index]
                                                          .messageContent),
                                                  height: height * 0.15,
                                                ),
                                                Text(
                                                  "Red Rose",
                                                  style: TextStyle(
                                                      color: Colors.black54,
                                                      fontSize: height * 0.032),
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Image.asset(
                                                      Common.assetsImages +
                                                          "smallcoin.png",
                                                      height: height * 0.05,
                                                      width: width * 0.05,
                                                    ),
                                                    SizedBox(
                                                      width: width * 0.01,
                                                    ),
                                                    RichText(
                                                      text: TextSpan(
                                                        text: "75",
                                                        style: TextStyle(
                                                            fontSize:
                                                                height * 0.024,
                                                            color:
                                                                Colors.black54),
                                                        children: [
                                                          TextSpan(
                                                            text: ' G',
                                                            style: TextStyle(
                                                              color: Colors
                                                                  .black54,
                                                              fontSize: height *
                                                                  0.015,
                                                            ),
                                                          ),
                                                          TextSpan(
                                                            text: 'c ',
                                                            style: TextStyle(
                                                              color: Colors
                                                                  .black54,
                                                              fontSize:
                                                                  height * 0.01,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          )
                                        : Text(
                                            messages[index].messageContent,
                                            style: TextStyle(
                                                fontSize: 15.0,
                                                color: messages[index]
                                                            .messageType ==
                                                        "receiver"
                                                    ? Colors.white
                                                    : Colors.grey[700]),
                                          ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  gradient:
                                      messages[index].messageType == "sender" ||
                                              messages[index].messageCategory ==
                                                  "image"
                                          ? LinearGradient(
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: [
                                                  Colors.transparent,
                                                  Colors.transparent,
                                                ])
                                          : LinearGradient(
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: [
                                                  Color(0xFF532253),
                                                  Color(0xFFD12BD1)
                                                ]),
                                  borderRadius:
                                      messages[index].messageType == "receiver"
                                          ? BorderRadius.only(
                                              topLeft: Radius.circular(30),
                                              bottomLeft: Radius.circular(30),
                                              topRight: Radius.circular(30))
                                          : BorderRadius.only(
                                              topRight: Radius.circular(0),
                                              bottomLeft: Radius.circular(0),
                                              topLeft: Radius.circular(0)),
                                ),
                              ),
                              SizedBox(
                                height: height * 0.01,
                              ),
                              Padding(
                                child: Text(
                                  "12:15 PM",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                padding: EdgeInsets.symmetric(
                                    horizontal: width * 0.02),
                              ),
                            ]),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), //color of shadow
                      spreadRadius: 5, //spread radius
                      blurRadius: 7, // blur radius
                      offset: Offset(0, 2), // changes position of shadow
                      //first paramerter of offset is left-right
                      //second parameter is top to down
                    ),
                    //you can set more BoxShadow() here
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40))),
              padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
              height: height * 0.1,
              width: double.infinity,
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: width * 0.05,
                  ),
                  Image.asset(
                    Common.assetsIcons + "add image icon.png",
                    height: height * 0.04,
                    width: width * 0.04,
                  ),
                  SizedBox(
                    width: width * 0.023,
                  ),
                  Image.asset(
                    Common.assetsIcons + "camera.png",
                    height: height * 0.05,
                    width: width * 0.044,
                    color: Color(0xFFD12BD1),
                  ),
                  SizedBox(
                    width: width * 0.023,
                  ),
                  Image.asset(
                    Common.assetsIcons + "img icon.png",
                    height: height * 0.04,
                    width: width * 0.04,
                  ),
                  SizedBox(
                    width: width * 0.023,
                  ),
                  Image.asset(
                    Common.assetsIcons + "mic icon.png",
                    height: height * 0.03,
                    width: width * 0.026,
                  ),
                  SizedBox(
                    width: width * 0.023,
                  ),
                  Expanded(
                    child: Container(
                      height: height * 0.05,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          fillColor: Colors.grey,
                          prefixIcon: IconButton(
                            icon: ImageIcon(
                              AssetImage(Common.assetsImages + "Group.png"),
                              size: 20,
                            ),
                          ),
                          hintText: "Type a message",
                          hintStyle: TextStyle(color: Colors.black54),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: width * 0.06),
                    child: Image.asset(
                      Common.assetsIcons + "Dater logo icon.png",
                      height: height * 0.06,
                      width: width * 0.06,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
