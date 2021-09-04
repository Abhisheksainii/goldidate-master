import 'package:flutter/material.dart';
import 'package:goldidate/routes/app_routes.dart';
import 'package:goldidate/utils/app_colors.dart';
import 'package:goldidate/utils/common.dart';
import 'package:goldidate/screens/Home/chat_screen.dart';
class MessageType {
  String names;
  bool isread;
  bool admin;
  MessageType({@required this.names, @required this.isread,this.admin});
}

class AllChats extends StatefulWidget {
  @override
  _AllChatsState createState() => _AllChatsState();
}

class _AllChatsState extends State<AllChats> {
  List<MessageType> messsage = [
    MessageType(names: "Goldidate client service", isread: false,admin: true),
    MessageType(names: "Johnson", isread: false,admin: false),
    MessageType(names: "Loki", isread: true,admin: false),
    MessageType(names: "Loki", isread: true,admin: false),
    MessageType(names: "Loki", isread: true,admin: false),
    MessageType(names: "Loki", isread: true,admin: false),
    MessageType(names: "Harry", isread: false,admin:false),
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: height * 0.025,
                left: width * 0.05,
              ),
              child: Text("Messages",style: TextStyle(fontSize: width*0.05,fontWeight: FontWeight.w500),),

            ),
            SizedBox(height: height*0.01,),
            Container(
              height: 40,
              margin: EdgeInsets.symmetric(horizontal: 15),
              padding: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: TextFormField(
                cursorColor: Colors.black,

                decoration: new InputDecoration(

                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    contentPadding:
                    EdgeInsets.only(left: 18, bottom: 13, top: 11, right: 15),
                    hintText: "Search"),
              ),
            ),

            ListView.separated(
                separatorBuilder: (context, index) => Padding(
                  padding:  EdgeInsets.only(left:width*0.08),
                  child: Divider(
                      height: 2,
                    color: Colors.grey.shade500,
                  ),
                ),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
padding: EdgeInsets.only(
  top: height * 0.025,
),
                itemCount: messsage.length,
                itemBuilder: (context, int index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ChatScreen(
                              imageUrl:Common.assetsImages + "Layer 16.png",
                              giftname: "Chocolate Box",
                              giftpricecoin: "50",
                            ),
                          ));
                    },
                    child: Padding(
                      padding: EdgeInsets.only(

                        left: !messsage[index].isread? width * 0.035: width*0.055,
                      ),
                      child: Row(
                        children: [
                          Visibility(

                            child: CircleAvatar(
                              radius: 5,
                              backgroundColor: AppColors.goldColor,
                            ),
                            visible: !messsage[index].isread,
                          ),
                          SizedBox(width: 6,),
                          Container(
                            height: height * 0.07,
                            width: width * 0.14,
                            decoration: BoxDecoration(
                              color: Color(0xff000000),
                              borderRadius: messsage[index].admin?BorderRadius.all(Radius.circular(8)):BorderRadius.all(Radius.circular(30)),

                              image: DecorationImage(
                                image:
                                    AssetImage(Common.assetsImages + "Chat$index.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: width * 0.03,
                          ),
                          Container(
                            width: width * 0.7,
                            child: Column(

                              children: [
                                SizedBox(height: height*0.01,),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [

                                    Text(
                                      "${messsage[index].names}",
                                      style: TextStyle(
                                        fontSize: width *0.045,
                                        color: Color(0xFF424242),
                                        fontWeight:

                                             FontWeight.w500,
                                      ),
                                    ),
                                    Padding(
                                      padding:  EdgeInsets.only(right: width*0.01),
                                      child: Text(
                                        "9:27 AM",
                                        style:
                                        TextStyle(fontSize: width*0.04, color:Colors.grey.shade600),
                                      ),
                                    ),

                                  ],
                                ),
                                Text(
                                  "Hey, how's life going? Nice i dont now what is happening",
                                  style: TextStyle(
                                      fontSize: width*0.04,
                                      color: Colors.grey.shade600,
                                      fontWeight:
                                           FontWeight.w400
                                          ),
                                  maxLines: 2,
                                ),
                                SizedBox(
                                  height: height * 0.02,
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
