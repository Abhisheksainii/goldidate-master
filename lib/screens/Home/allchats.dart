import 'package:flutter/material.dart';
import 'package:goldidate/routes/app_routes.dart';
import 'package:goldidate/utils/app_colors.dart';
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

                    color: Colors.grey.shade600,
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
                      Navigator.of(context).pushNamed(AppRoutes.chatscreen);
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
                            height: height * 0.1,
                            width: width * 0.11,
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
                                        fontSize: 16,
                                        color: Color(0xFF424242),
                                        fontWeight:

                                             FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      "9:27 AM",
                                      style:
                                      TextStyle(fontSize: 12, color: Color(0xFF9E9E9E)),
                                    ),
                                  ],
                                ),
                                Text(
                                  "Hey, how's life going? Nice i dont now what is happening",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff3C3C43),
                                      fontWeight:
                                           FontWeight.w300
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
