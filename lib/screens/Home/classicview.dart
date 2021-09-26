import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goldidate/routes/app_routes.dart';
import 'package:goldidate/screens/authentication/signup_in_app.dart';
import 'package:swipe_cards/swipe_cards.dart';
import 'package:goldidate/utils/utils_exporter.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:goldidate/screens/Home/matchscreen.dart';
import 'package:flutter/services.dart';
import 'package:goldidate/utils/dialogs/alldialogs.dart';
import 'package:flutter_swipable/flutter_swipable.dart';
import 'package:flutter/services.dart';
import 'dart:async';
import 'dart:math';
import 'dart:math' as math;
int currentIndex=0;

double instructionImageOpacity=1;
List tags=[];
enum CardGesture {
  agree,
  disagree,
  non,
  skip,
}

bool islikeddddd = false;
class Classicview extends StatefulWidget {
  @override
  _ClassicviewState createState() => _ClassicviewState();
}

class _ClassicviewState extends State<Classicview>
    with SingleTickerProviderStateMixin {
  List<SwipeItem> _swipeItems = List<SwipeItem>();
  MatchEngine _matchEngine;
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();


  AnimationController controller;
  Animation animation;
  Animation animation1;
  void initState() {
    super.initState();
    /*
    for (int i = 0; i < _imageurl.length; i++) {
      _swipeItems.add(SwipeItem(
        content: Content(imageURl: _imageurl[i]),
      ));
    }
*/
    _matchEngine = MatchEngine(swipeItems: _swipeItems);

    controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);
    animation1 = ColorTween(begin: Colors.blueGrey, end: Colors.white)
        .animate(controller);

    controller.forward();

    controller.addListener(() {
      setState(() {
        print(animation.value);
      });
    });
  }



  @override
  Widget build(BuildContext context) {
    bool isliked = false;
    bool isdisliked = false;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        key: _scaffoldKey,
        body: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.fromLTRB(0, height * 0.01, 0, 0),
              child: Column(children: [
                /*
                Container(
                  height: height * 0.75,
                  child: SwipeCards(
                    matchEngine: _matchEngine,
                    itemBuilder: (BuildContext context, int index) {
                      return SwippedCard(width: width, swipeItems: _swipeItems, isliked: islikeddddd, height: height,matchEngine: _matchEngine,index: index,);
                    },
                  ),
                ),

                 */
                CardsSection(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [




                  ],
                )
              ])),
        ));
  }
}
class CardsSection extends StatefulWidget {
  @override
  _CardsSectionState createState() => _CardsSectionState();
}

class _CardsSectionState extends State<CardsSection> {
  List<String> _imageurl = [
    Common.assetsImages + "swipeimage.png",
    Common.assetsImages + "primary_background.png"
  ];
  List<String> lovegifts = [
    Common.assetsImages + "Layer 16.png",
    Common.assetsImages + "heartballon.png",
    Common.assetsImages + "ross.png",
    Common.assetsImages + "Bunny.png",
    Common.assetsImages + "rozes.png",
    Common.assetsImages + "teddybear.png",
    Common.assetsImages + "heart flowers.png",
    Common.assetsImages + "shose.png",
    Common.assetsImages + "dress.png",
    Common.assetsImages + "Layer 15.png",
    Common.assetsImages + "dimond ring.png",
    Common.assetsImages + "neckles 1.png",
  ];

  List<String> lovegiftsname = [
    "Chocolate Box",
    "Heart Ballon",
    "Red Rose",
    "Pink Bunny",
    "Rose Bouquet",
    "Teddy bear",
    "Heart Rose",
    "Rose Bouquet",
    "Red dress",
    "Hiring",
    "Diamond Ring",
    "Necles",
  ];

  List<String> lovegiftsprice = [
    "50",
    "60",
    "75",
    "80",
    "100",
    "125",
    "150",
    "250",
    "350",
    "500",
    "750",
    "1000"
  ];

  List<String> Animals = [
    Common.assetsImages + "Layer 0.png",
    Common.assetsImages + "Layer 26.png",
    Common.assetsImages + "Layer 30.png",
    Common.assetsImages + "Layer 35.png",
    Common.assetsImages + "Layer 20.png",
    Common.assetsImages + "Group 359.png",
    Common.assetsImages + "Layer 31.png",
    Common.assetsImages + "Layer 25.png",
    Common.assetsImages + "Layer 23.png",
    Common.assetsImages + "Layer 22.png",
    Common.assetsImages + "Layer 19.png",
    Common.assetsImages + "Layer 29.png",
    Common.assetsImages + "Layer 32.png",
    Common.assetsImages + "Layer 33.png",
  ];

  List<String> Animalsname = [
    "Gold Fish",
    "Hamster",
    "Rabbit",
    "Little Turtle",
    "Chameleon",
    "Kitty",
    "Pug puppy",
    "Dog de bordo",
    "Welsh corgi",
    "Baby monkey",
    "Guerilla",
    "Necles",
    "Baby Tiger",
    "Dolphin",
  ];

  List<String> Animalsprice = [
    "100",
    "200",
    "250",
    "500",
    "750",
    "2500",
    "3500",
    "3500",
    "3500",
    "7500",
    "7500",
    "15000",
    "25000",
    "25000"
  ];


  List<String> DrinksandFood = [
    Common.assetsImages + "Layer 39.png",
    Common.assetsImages + "Layer 41.png",
    Common.assetsImages + "Layer 42.png",
    Common.assetsImages + "Layer 45.png",
    Common.assetsImages + "Layer 75.png",
    Common.assetsImages + "Layer 38.png",
    Common.assetsImages + "Layer 54.png",
    Common.assetsImages + "Layer 53.png",
    Common.assetsImages + "Layer 48.png",
    Common.assetsImages + "Layer 63.png",
    Common.assetsImages + "Layer 60.png",
    Common.assetsImages + "Layer 62.png",
    Common.assetsImages + "Layer 50.png",
    Common.assetsImages + "Layer 66.png",
    Common.assetsImages + "Layer 56.png",
    Common.assetsImages + "Layer 69.png",
    Common.assetsImages + "Layer 59.png",
    Common.assetsImages + "Layer 61.png",
    Common.assetsImages + "Layer 73.png",
    Common.assetsImages + "Layer 46.png",
    Common.assetsImages + "Layer 74.png",
    Common.assetsImages + "Layer 65.png",
    Common.assetsImages + "Layer 58.png",
    Common.assetsImages + "Layer 47.png",
    Common.assetsImages + "Layer 68.png",
    Common.assetsImages + "Layer 72.png",
    Common.assetsImages + "Layer 52.png",
    Common.assetsImages + "Layer 49.png",
    Common.assetsImages + "Layer 55.png",
  ];

  List<String> DrinksandFoodname = [
    "Green juice",
    "Orange juice",
    "Blueberry juice",
    "Beer",
    "Martini",
    "Champagne",
    "Hut dog",
    "Fried chicken",
    "Soup",
    "Ravioli",
    "Tacos",
    "Wings",
    "Lazania",
    "Salad",
    "Pizza",
    "Falafel",
    "Sushi",
    "Spaghetti",
    "Hamburger",
    "Schnitzel",
    "Salomon",
    "clams",
    "Steak",
    "Ice-cream",
    "Flan",
    "Apple pie",
    "Pancakes",
    "Souffle",
    "Croissant & coffee",
  ];

  List<String> DrinksandFoodprice = [
    "100",
    "100",
    "250",
    "150",
    "200",
    "300",
    "500",
    "750",
    "1000",
    "1000",
    "1000",
    "1250",
    "1250",
    "1500",
    "1500",
    "1500",
    "2000",
    "2000",
    "2500",
    "3500",
    "4000",
    "4500",
    "5000",
    "250",
    "350",
    "400",
    "450",
    "500",
    "2500"
  ];

  List<String> Travel1 = [
    Common.assetsImages + "Layer 78.png",
    Common.assetsImages + "Layer 80.png",
    Common.assetsImages + "Layer 77.png",
    Common.assetsImages + "Layer 81.png",
    Common.assetsImages + "Layer 88.png",
    Common.assetsImages + "Layer 86.png",
    Common.assetsImages + "Layer 87.png",
    Common.assetsImages + "Layer 85.png",
    Common.assetsImages + "Layer 83.png",
    Common.assetsImages + "Layer 82.png",
    Common.assetsImages + "Layer 79.png",
    Common.assetsImages + "Layer 76.png",
  ];

  List<String> Travel1name = [
    "London",
    "Paris",
    "Rio de Janeiro",
    "dubai",
    "Tokyo",
    "Jerusalem",
    "New Delhi",
    "Rome",
    "Chichen-itza",
    "Sydney",
    "Guiza",
    "New York"
  ];

  List<String> Travel1price = [
    "25000",
    "25000",
    "25000",
    "25000",
    "25000",
    "25000",
    "25000",
    "25000",
    "25000",
    "25000",
    "25000",
    "25000",
  ];

  List<String> Travel2 = [
    Common.assetsImages + "Layer 97.png",
    Common.assetsImages + "Layer 92.png",
    Common.assetsImages + "Layer 94.png",
    Common.assetsImages + "Layer 93.png",
    Common.assetsImages + "Layer 91.png",
    Common.assetsImages + "Layer 95.png",
    Common.assetsImages + "Layer 100.png",
    Common.assetsImages + "Layer 89.png",
    Common.assetsImages + "Layer 96.png",
    Common.assetsImages + "Layer 98.png",
    Common.assetsImages + "Layer 99.png",
    Common.assetsImages + "Layer 90.png",
  ];

  List<String> Travel2name = [
    "Motorcycle",
    "Minicar",
    "Train",
    "Sports Car",
    "Limousine",
    "Supercar",
    "Luxury car",
    "yacht",
    "Monster truck",
    "Formula 1",
    "Airplane",
    "Cruz Ship"
  ];

  List<String> Travel2price = [
    "50,000",
    "75000",
    "250,000",
    "250,000",
    "350,000",
    "450,000",
    "500000",
    "500000",
    "750,000",
    "1,000,000",
    "2,500,000",
    "5,000,000",
  ];
  String language = 'English';

  int cardNumber = 0;

  getter() {}
  List<Card> cards;
  StreamController<double> controller1 = StreamController<double>.broadcast();
  StreamController<double> controller2 = StreamController<double>.broadcast();
  StreamController<double> controller3 = StreamController<double>.broadcast();
  StreamController<double> controller4 = StreamController<double>.broadcast();
  StreamController<double> controller5 = StreamController<double>.broadcast();

  setCards() {
    cards = [
      Card(
          controller: controller5,
          text: 'Had to wait long for my appointment5',

          color: Color(0xfffffdeb),
          position: 0,
          index: 4,
          changeProgress: changeCardProgress),
      Card(
          controller: controller4,

          text: 'Had to wait long for my appointment4',

          color: Color(0xffeeddaf),
          position: 5,
          index: 3,
          changeProgress: changeCardProgress),
      Card(
          controller: controller3,

          text: 'Had to wait long for my appointment3',

          color: Color(0xfff1e6c9),
          position: 10,
          index: 2,
          changeProgress: changeCardProgress),
      Card(
          text: 'Had to wait long for my appointment2',
          controller: controller2,
          color: Color(0xfffcfdfc),
          position: 15,
          index: 1,
          changeProgress: changeCardProgress),
      Card(
          controller: controller1,
          text: 'Had to wait long for my appointment1 ',
          color: Color(0xfffffdeb),
          position: 20,
          index: 0,
          changeProgress: changeCardProgress),
    ];
    return cards;
  }

  List<CardGesture> cardProgress = [
    CardGesture.non,
    CardGesture.non,
    CardGesture.non,
    CardGesture.non,
    CardGesture.non,
  ];

  void changeCardProgress(CardGesture gesture, index) {
    setState(() {
      cards.remove(index);
      cardProgress.removeAt(index);
      cardProgress.insert(index, gesture);
      cardNumber = index;
    });
  }

  getColorBorder(CardGesture e) {
    if (e == CardGesture.non) {
      return Colors.grey;
    }
    if (e == CardGesture.agree) {
      return Colors.green;
    }
    if (e == CardGesture.disagree) {
      return Colors.red;
    }
    if (e == CardGesture.skip) {
      return Colors.grey;
    }
  }

  getColorIcon(CardGesture e) {
    if (e == CardGesture.non) {
      return Colors.transparent;
    }
    if (e == CardGesture.agree) {
      return Colors.green;
    }
    if (e == CardGesture.disagree) {
      return Colors.white;
    }
    if (e == CardGesture.skip) {
      return Colors.transparent;
    }
  }

  getColorCircle(CardGesture e) {
    if (e == CardGesture.non) {
      return Color(0xff817F7B).withOpacity(0.1);
    }
    if (e == CardGesture.agree) {
      return Colors.green.withOpacity(0.4);
    }
    if (e == CardGesture.disagree) {
      return Colors.red.withOpacity(0.4);
    }
    if (e == CardGesture.skip) {
      return Colors.grey.withOpacity(0.4);
    }
  }


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: Column(
            children: [
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      width: 100,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: cardProgress
                              .map((e) => Container(
                            width: 9,
                            height: 9,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: getColorCircle(e),
                              // border: Border.all(color: getColorBorder(e)),
                            ),
                            // child: Icon(
                            //   Icons.check,
                            //   size: 16,
                            //   color: getColorIcon(e),
                            // ),
                          ))
                              .toList()),
                    ),
                  ),
                  /*
                  GestureDetector(
                      onTap: (){

                        // changeCardProgress(CardGesture.agree,currentIndex );
                        setState(() {
                          print(currentIndex);
                          double swipeAngle = math.pi / 2;
                          changeCardProgress(CardGesture.skip, currentIndex);
                          currentIndex==0? controller1.add(swipeAngle):currentIndex==1?controller2.add(swipeAngle):
                          currentIndex==2?controller3.add(swipeAngle):currentIndex==3?controller4.add(swipeAngle):
                          controller5.add(swipeAngle);

                          // currentIndex++;
                          //

                        });
                      },
                      child: Image.asset('assets/skip.png',width: 26,)),
*/
                ],
              ),
              SizedBox(height: 0),
              Container(
                height: MediaQuery.of(context).size.height*0.73 ,

                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    // SizedBox(height: 45),
                    if (cardNumber != 4)
                      Positioned(
                        top: 25,
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: MediaQuery.of(context).size.height *0.68,
                          decoration: BoxDecoration(
                            boxShadow: [BoxShadow(

                              color: Color(0xfff8f4f8).withOpacity(1),
                              blurRadius: 5.0, // soften the shadow
                              spreadRadius: 5.0, //extend the shadow
                              offset: Offset(
                                0, // Move to right 10  horizontally
                                5.0, // Move to bottom 10 Vertically
                              ),
                            ),],
                          ),
                          // Important to keep as a stack to have overlay of cards.
                          child: Stack(
                            children: setCards(),
                          ),
                        ),
                      ),

                  ],
                ),
              ),
              // SizedBox(height: 10,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RoundButton(
                      width1: width * 0.08,
                      height1: height * 0.06,
                      height: height * 0.12,
                      width: width * 0.12,
                      iconasset: Common.assetsImages + "reload.png",
                      onpressed: () {},
                    ),

                    InkWell(
                        onTap :(){
                          setState(() {
                            print(currentIndex);
                            double swipeAngle = math.pi ;
                            changeCardProgress(CardGesture.skip, currentIndex);
                            currentIndex==0? controller1.add(swipeAngle):currentIndex==1?controller2.add(swipeAngle):
                            currentIndex==2?controller3.add(swipeAngle):currentIndex==3?controller4.add(swipeAngle):
                            controller5.add(swipeAngle);
                          });
                        },
                        child: Image.asset(Common.assetsImages + "dislike icon.png",height: 70,width: 70,)),
                    InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          elevation: 0,
                          backgroundColor: Colors.transparent.withOpacity(0.7),
                          builder: (context) => SingleChildScrollView(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(50.0),
                                  topRight: Radius.circular(50.0),
                                ),
                              ),
                              child: Container(
                                child: Column(children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: height * 0.06, left: width * 0.06),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          Common.assetsImages + "smallcoin.png",
                                          height: height * 0.06,
                                          width: width * 0.06,
                                        ),
                                        SizedBox(
                                          width: width * 0.01,
                                        ),
                                        RichText(
                                          text: TextSpan(
                                            text: "4999",
                                            style: TextStyle(
                                                fontSize: height * 0.028,
                                                color: AppColors.whiteColor),
                                            children: [
                                              TextSpan(
                                                text: 'G',
                                                style: TextStyle(
                                                  color: AppColors.whiteColor,
                                                  fontSize: height * 0.018,
                                                ),
                                              ),
                                              TextSpan(
                                                text: 'c ',
                                                style: TextStyle(
                                                  color: AppColors.whiteColor,
                                                  fontSize: height * 0.012,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  GiftCategory(
                                    width: width,
                                    lovegifts: lovegifts,
                                    lovegiftsname: lovegiftsname,
                                    lovegiftsprice: lovegiftsprice,

                                    height: height,
                                    heading: "Love gifts",
                                  ),
                                  GiftCategory(
                                      width: width,
                                      lovegifts: Animals,
                                      lovegiftsname: Animalsname,
                                      lovegiftsprice: Animalsprice,

                                      height: height,
                                      heading: "Animals"),
                                  GiftCategory(
                                      width: width,
                                      lovegifts: DrinksandFood,
                                      lovegiftsname: DrinksandFoodname,
                                      lovegiftsprice: DrinksandFoodprice,

                                      height: height,
                                      heading: "Drinks & Food"),
                                  GiftCategory(
                                      width: width,
                                      lovegifts: Travel1,
                                      lovegiftsname: Travel1name,
                                      lovegiftsprice: Travel1price,

                                      height: height,
                                      heading: "Travel"),
                                  GiftCategory(
                                      width: width,
                                      lovegifts: Travel2,
                                      lovegiftsname: Travel2name,
                                      lovegiftsprice: Travel2price,

                                      height: height,
                                      heading: "Travel"),
                                  InkWell(
                                    onTap: (){
                                      Navigator.pushNamed(context, AppRoutes.getcoins);
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      width: width*0.7,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        border: Border.all(color: AppColors.goldColor),
                                        borderRadius: BorderRadius.all(Radius.circular(30)),
                                      ),
                                      child: Text("Buy more Goldicoins",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),

                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: height*0.02,
                                  ),
                                ]),
                              ),
                            ),
                          ),
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: width * 0.12,
                        height: height * 0.12,
                        child: Image.asset(
                          Common.assetsImages + "gift.png",
                          fit: BoxFit.fitWidth,
                          height: height * 0.05,
                          width: width * 0.05,
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.goldColor,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0.0, 1.0), //(x,y)
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
                      ),
                    ),

                    InkWell(
                        onTap: (){
                          setState(() {
                            print(currentIndex);
                            double swipeAngle = math.pi / 4;
                            changeCardProgress(CardGesture.skip, currentIndex);
                            currentIndex==0? controller1.add(swipeAngle):currentIndex==1?controller2.add(swipeAngle):
                            currentIndex==2?controller3.add(swipeAngle):currentIndex==3?controller4.add(swipeAngle):
                            controller5.add(swipeAngle);


                          });
                        },
                        child: Image.asset(Common.assetsImages + "Vector-2.png",width: 70,height: 70,)),


                    RoundButton(

                      width1: width * 0.08,
                      height1: height * 0.06,
                      height: height * 0.12,
                      width: width * 0.12,
                      iconasset: Common.assetsImages + "smallcoin.png",
                      onpressed: () =>
                          Navigator.of(context).pushNamed(AppRoutes.getcoins),
                    ),
                  ],
                )

            ],
          ),
        ),
        SizedBox(height: 15),
        // Container(height: 2, width: double.infinity, color: Colors.grey[300]),
        // Container(
        //   color: Color(0xfffbf9fb),
        //   child: Padding(
        //     padding: const EdgeInsets.all(20.0),
        //     child: Column(
        //       children: [
        //         SizedBox(height: 15),
        //         Container(
        //           padding: EdgeInsets.all(10),
        //           width: double.infinity,
        //           alignment: Alignment.center,
        //           decoration: BoxDecoration(
        //               borderRadius: BorderRadius.circular(10),
        //               color: AppColors.yellow),
        //           child: Text(
        //             'Done',
        //             style: TextStyle(
        //               fontSize: 22,
        //               color: Colors.white,
        //             ),
        //           ),
        //         ),
        //         Padding(
        //           padding: const EdgeInsets.all(15.0),
        //           child: Text(
        //             'By Sending FeedBack, You Agree To The Privacy Policy, Term & Conditions',
        //             textAlign: TextAlign.center,
        //             style: TextStyle(color: Colors.grey),
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        // )
      ],
    );
  }
}
class Card extends StatefulWidget {
  final Color color;
  final double position;
  final int index;
  final Function changeProgress;
  final String text;
  final controller;
  Card({this.color, this.position, this.index, this.changeProgress,this.text,this.controller});

  @override
  _CardState createState() => _CardState();
}

class _CardState extends State<Card> {
  double leftOpacity=0;
  double rightOpacity=0;
  double topOpacity=0;
  double labelsOpacity =1;

  changeLeftOpacity() {
    setState(() {
      leftOpacity =1;
      topOpacity =0;

      rightOpacity=0;
    });
  }

  changeRightOpacity() {
    setState(() {
      rightOpacity =1;
      topOpacity =0;
      leftOpacity=0;

    });
  }
  changeTopOpacity() {
    setState(() {
      topOpacity =1;
      leftOpacity=0;
      rightOpacity=0;
    });
  }
  TextEditingController controller=TextEditingController();
  bool readOnly =true;
  bool irrelevant =false;

  String editedText='';

  String condition = 'Suggest an Edit';


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setIndex();
    controller = TextEditingController(text: widget.text);
  }
  setIndex(){
    setState(() {
      currentIndex=widget.index;
    });
  }
  void _onButtonPressed(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        context: context,
        builder: (context) {
          return Container(
            height: height * 0.6,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  bottom: height * 0.5,
                  left: width * 0.8,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: width * 0.12,
                      height: height * 0.12,
                      child: Image.asset(
                        Common.assetsIcons + "downarrow.png",
                        fit: BoxFit.fitWidth,
                        height: height * 0.06,
                        width: width * 0.08,
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundButton(
                              width1: width * 0.08,
                              height1: height * 0.06,
                              height: height * 0.12,
                              width: width * 0.16,
                              iconasset:
                              Common.assetsImages + "dislike icon.png",
                              onpressed: () {
                                //  _matchEngine.currentItem.nope();
                              },
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                                showModalBottomSheet(
                                  isScrollControlled: true,
                                  context: context,
                                  elevation: 0,
                                  backgroundColor: Colors.transparent.withOpacity(0.7),
                                  builder: (context) => SingleChildScrollView(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(50.0),
                                          topRight: Radius.circular(50.0),
                                        ),
                                      ),
                                      child: Container(
                                        child: Column(children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: height * 0.06, left: width * 0.06),
                                            child: Row(
                                              children: [
                                                Image.asset(
                                                  Common.assetsImages + "smallcoin.png",
                                                  height: height * 0.06,
                                                  width: width * 0.06,
                                                ),
                                                SizedBox(
                                                  width: width * 0.01,
                                                ),
                                                RichText(
                                                  text: TextSpan(
                                                    text: "4999",
                                                    style: TextStyle(
                                                        fontSize: height * 0.028,
                                                        color: AppColors.whiteColor),
                                                    children: [
                                                      TextSpan(
                                                        text: 'G',
                                                        style: TextStyle(
                                                          color: AppColors.whiteColor,
                                                          fontSize: height * 0.018,
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text: 'c ',
                                                        style: TextStyle(
                                                          color: AppColors.whiteColor,
                                                          fontSize: height * 0.012,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          /*
                                          GiftCategory(
                                            width: width,
                                            lovegifts: lovegifts,
                                            lovegiftsname: lovegiftsname,
                                            lovegiftsprice: lovegiftsprice,
                                            animation: animation,
                                            height: height,
                                            heading: "Love gifts",
                                          ),
                                          GiftCategory(
                                              width: width,
                                              lovegifts: Animals,
                                              lovegiftsname: Animalsname,
                                              lovegiftsprice: Animalsprice,
                                              animation: animation,
                                              height: height,
                                              heading: "Animals"),
                                          GiftCategory(
                                              width: width,
                                              lovegifts: DrinksandFood,
                                              lovegiftsname: DrinksandFoodname,
                                              lovegiftsprice: DrinksandFoodprice,
                                              animation: animation,
                                              height: height,
                                              heading: "Drinks & Food"),
                                          GiftCategory(
                                              width: width,
                                              lovegifts: Travel1,
                                              lovegiftsname: Travel1name,
                                              lovegiftsprice: Travel1price,
                                              animation: animation,
                                              height: height,
                                              heading: "Travel"),
                                          GiftCategory(
                                              width: width,
                                              lovegifts: Travel2,
                                              lovegiftsname: Travel2name,
                                              lovegiftsprice: Travel2price,
                                              animation: animation,
                                              height: height,
                                              heading: "Travel"),

                                           */
                                          InkWell(
                                            onTap: (){
                                              Navigator.pushNamed(context, AppRoutes.getcoins);
                                            },
                                            child: Container(
                                              alignment: Alignment.center,
                                              width: width*0.7,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                border: Border.all(color: AppColors.goldColor),
                                                borderRadius: BorderRadius.all(Radius.circular(30)),
                                              ),
                                              child: Text("Buy more Goldicoins",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),

                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: height*0.02,
                                          ),
                                        ]),
                                      ),
                                    ),
                                  ),
                                );
                              },
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: width * 0.04),
                                alignment: Alignment.center,
                                width: width * 0.12,
                                height: height * 0.12,
                                child: Image.asset(
                                  Common.assetsImages + "gift.png",
                                  fit: BoxFit.fitWidth,
                                  height: height * 0.05,
                                  width: width * 0.05,
                                ),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.goldColor,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(0.0, 1.0), //(x,y)
                                      blurRadius: 6.0,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            RoundButton(
                              width1: width * 0.08,
                              height1: height * 0.06,
                              height: height * 0.12,
                              width: width * 0.16,
                              iconasset: Common.assetsImages + "Vector-2.png",
                              onpressed: () {
                                // _matchEngine.currentItem.like();
                              },
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Eliza Williams",
                              style: TextStyle(
                                  fontSize: height * 0.03,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              ",23",
                              style: TextStyle(
                                fontSize: height * 0.03,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Art Manager",
                              style: TextStyle(
                                  color: Colors.grey, fontSize: height * 0.019),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(
                                  width * 0.04, 0, width * 0.01, 0),
                              child: Image.asset(
                                Common.assetsImages + "location.png",
                                height: height * 0.03,
                                width: width * 0.03,
                                color: AppColors.goldColor,
                              ),
                            ),
                            Text(
                              "10 miles",
                              style: TextStyle(
                                  color: Colors.grey, fontSize: height * 0.015),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.011,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Feminists.Cats.Other stuff",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  top: height * 0.01,
                                  left: width * 0.05,
                                  right: width * 0.05,
                                  bottom: height * 0.01),
                              child: Container(
                                height: height * 0.1,
                                width: width * 0.85,

                                child: Padding(
                                  padding: EdgeInsets.only(left: width * 0.05),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Text(
                                          "I'm a photographer,yoga enthusiast, love to relax but very adventures and lover of superheros movives",
                                          style: TextStyle(
                                              fontSize: width * 0.035,
                                              color: Color(0xFF757575),
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding:  EdgeInsets.only(left: width*0.04,bottom: height*0.03),
                          child: Row(

                            children: [
                              Text("PASSIONS",style: TextStyle(color: Color(0xFF757575),  fontSize: width * 0.03, ),),
                            ],
                          ),
                        ),
                        Container(


                          child: Wrap(
                            children: [
                              chip(text: "Yoga"),
                              chip(text: "Rock climbing",),
                              chip(text: "Learning new skill",),
                              chip(text: "Online courses",),
                              chip(text: "Crafting",),
                              chip(text: "Coaching",),
                              chip(text: "Playing an instrument",),
                            ],
                          )
                          ,
                        ),
                        Padding(
                          padding:  EdgeInsets.only(left: width*0.04,bottom: height*0.03,top: height*0.03),
                          child: Row(

                            children: [
                              Text("EDUCATION",style: TextStyle(color: Color(0xFF757575),  fontSize: width * 0.03, ),),
                            ],
                          ),
                        ),
                        Container(


                          child: Wrap(
                            children: [
                              chip(text: "Rupping technological college of engineer"),
                              chip(text: "Apple seed academy",),
                              chip(text: "Qa experts college",),

                            ],
                          )
                          ,
                        ),
                        SizedBox(height: height*0.06,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Level of education:",
                              style: TextStyle(
                                  color: Colors.grey, fontSize: height * 0.018),
                            ),
                            Text(
                              " Engineer",
                              style: TextStyle(
                                  color: AppColors.goldColor,
                                  fontSize: height * 0.018),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.005,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Gender:",
                              style: TextStyle(
                                  color: Colors.grey, fontSize: height * 0.018),
                            ),
                            Text(
                              " Male",
                              style: TextStyle(
                                  color: AppColors.goldColor,
                                  fontSize: height * 0.018),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.005,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Searching:",
                              style: TextStyle(
                                  color: Colors.grey, fontSize: height * 0.018),
                            ),
                            Text(
                              " Serious relationship",
                              style: TextStyle(
                                  color: AppColors.goldColor,
                                  fontSize: height * 0.018),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.005,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Sexuality:",
                              style: TextStyle(
                                  color: Colors.grey, fontSize: height * 0.018),
                            ),
                            Text(
                              " Straight",
                              style: TextStyle(
                                  color: AppColors.goldColor,
                                  fontSize: height * 0.018),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.005,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Religious:",
                              style: TextStyle(
                                  color: Colors.grey, fontSize: height * 0.018),
                            ),
                            Text(
                              " Atheist",
                              style: TextStyle(
                                  color: AppColors.goldColor,
                                  fontSize: height * 0.018),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.005,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Favourite:",
                              style: TextStyle(
                                  color: Colors.grey, fontSize: height * 0.018),
                            ),
                            Text(
                              " Pizza",
                              style: TextStyle(
                                  color: AppColors.goldColor,
                                  fontSize: height * 0.018),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.005,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Favourite Animal:",
                              style: TextStyle(
                                  color: Colors.grey, fontSize: height * 0.018),
                            ),
                            Text(
                              " Wolfs",
                              style: TextStyle(
                                  color: AppColors.goldColor,
                                  fontSize: height * 0.018),
                            ),
                          ],
                        ),

                        SizedBox(
                          height: height * 0.07,
                        ),
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                share_dialog(context, height, width);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: AppColors.greyColor,
                                        offset: const Offset(
                                          5.0,
                                          5.0,
                                        ),
                                        blurRadius: 10.0,
                                        spreadRadius: 1.0,
                                      ), //BoxShadow
                                      BoxShadow(
                                        color: Colors.white,
                                        offset: const Offset(0.0, 0.0),
                                        blurRadius: 0.0,
                                        spreadRadius: 0.0,
                                      ), //BoxShadow
                                    ],
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(width * 0.05),
                                        topLeft:
                                        Radius.circular(width * 0.05))),
                                height: height * 0.044,
                                width: width * 0.3,
                                alignment: Alignment.center,
                                child: Text(
                                  "Share",
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height * 0.0009,
                            ),
                            InkWell(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (ctx) => AlertDialog(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20.0))),
                                    title: Center(
                                        child: Text(
                                          "Report User",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600),
                                        )),
                                    content: Container(
                                      child: Stack(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  "Is this person bothering you? Tell us",
                                                  style: TextStyle(
                                                      fontSize: height * 0.02,
                                                      color:
                                                      Colors.grey.shade600),
                                                ),
                                              )
                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: height * 0.026),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "what they did",
                                                  style: TextStyle(
                                                      fontSize: height * 0.02,
                                                      color:
                                                      Colors.grey.shade600),
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: height * 0.08),
                                            child: Divider(
                                              thickness: 1,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: height * 0.12),
                                            child: InkWell(
                                              onTap: (){
                                                Navigator.pop(context);
                                                report_submit(context, height, width);
                                              },
                                              child: Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "Inappropriate Photos",
                                                    style: TextStyle(
                                                        color:
                                                        Colors.grey.shade600),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: height * 0.159),
                                            child: Divider(
                                              thickness: 1,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: height * 0.19),
                                            child: InkWell(
                                              onTap: (){
                                                Navigator.pop(context);
                                                report_submit(context, height, width);
                                              },
                                              child: Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "Feels Like Spam",
                                                    style: TextStyle(
                                                        color:
                                                        Colors.grey.shade600),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: height * 0.229),
                                            child: Divider(
                                              thickness: 1,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: height * 0.26),
                                            child: InkWell(
                                              onTap: (){
                                                Navigator.pop(context);
                                                report_submit(context,height,width);
                                              },
                                              child: Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "User is underage",
                                                    style: TextStyle(
                                                        color:
                                                        Colors.grey.shade600),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: height * 0.299),
                                            child: Divider(
                                              thickness: 1,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: height * 0.33,
                                                bottom: height * 0.02),
                                            child: InkWell(
                                              onTap: (){
                                                Navigator.pop(context);
                                                custom_report(context,height,width);
                                              },
                                              child: Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "Other",
                                                    style: TextStyle(
                                                        color:
                                                        Colors.grey.shade600),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: AppColors.greyColor,
                                        offset: const Offset(
                                          5.0,
                                          5.0,
                                        ),
                                        blurRadius: 10.0,
                                        spreadRadius: 1.0,
                                      ), //BoxShadow
                                      BoxShadow(
                                        color: Colors.white,
                                        offset: const Offset(0.0, 0.0),
                                        blurRadius: 0.0,
                                        spreadRadius: 0.0,
                                      ), //BoxShadow
                                    ],
                                    borderRadius: BorderRadius.only(
                                        bottomRight:
                                        Radius.circular(width * 0.05),
                                        bottomLeft:
                                        Radius.circular(width * 0.05))),
                                height: height * 0.044,
                                width: width * 0.3,
                                alignment: Alignment.center,
                                child: Text(
                                  "Report",
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height * 0.05,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Stack(

      children: [

        Container(
          width: width*0.9,
          child: Swipable(
            swipe: widget.controller.stream,
            threshold: 0.9,
            onSwipeStart: (od){
              // instructionImageOpacity=0;
              setState(() {});
            },
            onPositionChanged: (od){
              setState(() {
                labelsOpacity=0;

                if(od.delta.dx<-3 && od.delta.dy>0)
                  changeLeftOpacity();
                else if(od.delta.dx>3 && od.delta.dy>0)
                  changeRightOpacity();
                // else if(od.delta.dy>0 && od.delta.dx<1 && od.delta.dx>-1)
                //   changeTopOpacity();
                else{
                  // rightOpacity=0;
                  // leftOpacity=0;
                }

              });
            },
            onSwipeCancel: (offset,od){
              setState(() {
                leftOpacity=0;
                rightOpacity=0;
                labelsOpacity=1;
                topOpacity=0;
              });
            },
            onSwipeLeft: (od) {
              print('left swiped');

              widget.changeProgress(CardGesture.disagree, widget.index);
              currentIndex++;
              setState(() {

              });
            },
            onSwipeRight: (od) {
              print('left swiped');
              widget.changeProgress(CardGesture.agree, widget.index);
              currentIndex++;

              setState(() {});
            },
            onSwipeUp: (od) {
              print('left swiped');
              widget.changeProgress(CardGesture.skip, widget.index);
              currentIndex++;

              setState(() {});
            },
            onSwipeDown: (od) {
              print('left swiped');
              widget.changeProgress(CardGesture.skip, widget.index);
              currentIndex++;

              setState(() {});
            },
            child: Stack(
              children: [
                AnimatedContainer(


                  duration: Duration(milliseconds: 300
                  ),
                  decoration: BoxDecoration(
                    boxShadow: [BoxShadow(

                      color: Color(0xff000000).withOpacity(0.03),
                      blurRadius: 5.0, // soften the shadow
                      spreadRadius: 5.0, //extend the shadow
                      offset: Offset(
                        0, // Move to right 10  horizontally
                        5.0, // Move to bottom 10 Vertically
                      ),
                    ),],
                    borderRadius: BorderRadius.circular(16.0),
                    color: leftOpacity==1? Colors.red.shade100:rightOpacity==1?Colors.green.shade100:widget.color,
                  ),
                  child: Container(
                    decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(width * 0.04),
                      border: Border.all(
                        color: AppColors.goldColor,
                        width: 4,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 6.0,
                        ),
                      ],
                      image: DecorationImage(
                        image:
                        AssetImage(Common.assetsImages + "swipeimage.png"),
                        fit: BoxFit.cover,
                        colorFilter: leftOpacity==1?ColorFilter.mode(Colors.white70.withOpacity(0.6), BlendMode.srcOver):rightOpacity==1?ColorFilter.mode(AppColors.goldColor.withOpacity(0.6), BlendMode.srcOver):ColorFilter.mode(AppColors.goldColor, BlendMode.dstATop),

                      ),),

                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(
                          width * 0.04, height * 0.51, width * 0.04,0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Ethel W. Washington",
                                style: TextStyle(
                                    color: AppColors.whiteColor,
                                    fontSize: height * 0.027),
                              ),
                              InkWell(
                                onTap: () => _onButtonPressed(context),
                                child: Container(
                                  width: width * 0.077,
                                  height: height * 0.077,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          Common.assetsImages + "i2.png"),
                                      fit: BoxFit.scaleDown,
                                    ),
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Art Manager",
                                style: TextStyle(
                                    color: AppColors.whiteColor,
                                    fontSize: height * 0.019),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(
                                    width * 0.04, 0, width * 0.01, 0),
                                child: Image.asset(
                                  Common.assetsImages + "location.png",
                                  height: height * 0.03,
                                  width: width * 0.03,
                                  color: AppColors.goldColor,
                                ),
                              ),
                              Text(
                                "10 miles",
                                style: TextStyle(
                                    color: AppColors.whiteColor,
                                    fontSize: height * 0.015),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: AutoSizeText(
                                  "description",
                                  style: TextStyle(
                                      color: AppColors.whiteColor,
                                      fontSize: height * 0.019),
                                  maxLines: 2,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                  ),
                ),

                Positioned(
                  top: 40,
                  right: 30,
                  child: Transform.rotate(
                    angle: 0,
                    child: AnimatedOpacity(
                      opacity: leftOpacity,
                      duration: Duration(milliseconds: 300),
                      child: Container(
                        alignment: Alignment.center,
                        width: 120,
                        height: 60,
                        decoration: BoxDecoration(


                            border: Border.all(width: 6,color :Colors.black.withOpacity(0.6))
                        ),
                        child: Text('NOPE',style: TextStyle(
                            color: Colors.black.withOpacity(0.6),
                            fontSize: 30
                        ),),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 40,
                  left: 30,
                  child: Transform.rotate(
                    angle: 0,
                    child: AnimatedOpacity(
                      opacity: rightOpacity,
                      duration: Duration(milliseconds: 300),
                      child: Container(
                        alignment: Alignment.center,
                        width: 120,
                        height: 60,
                        decoration: BoxDecoration(


                            border: Border.all(width: 6,color :Colors.white)
                        ),
                        child: Text('LIKE',style: TextStyle(
                            color: Colors.white,
                            fontSize: 30
                        ),),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 30,
                  left: 100,
                  child: AnimatedOpacity(
                    opacity: topOpacity,
                    duration: Duration(milliseconds: 300),
                    child: Container(
                      decoration: BoxDecoration(


                          border: Border.all(width: 2,color :Colors.white),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('LIKE',style: TextStyle(
                            color: Colors.white,
                            fontSize: 14
                        ),),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

      ],
    );
  }
}

class SwippedCard extends StatelessWidget {
  const SwippedCard({
    Key key,
    @required this.index,
    @required this.width,
    @required List<SwipeItem> swipeItems,
    @required this.isliked,
    @required this.height,
    @required this.matchEngine,
  }) : _swipeItems = swipeItems, super(key: key);
  final int index;
  final double width;
  final List<SwipeItem> _swipeItems;
  final MatchEngine matchEngine;
  final bool isliked;
  final double height;

  @override
  Widget build(BuildContext context) {
   // bool isliked = false;
    bool isdisliked = false;
    return Container(
      decoration: BoxDecoration(

        borderRadius: BorderRadius.circular(width * 0.04),
        border: Border.all(
          color: AppColors.goldColor,
          width: 4,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 6.0,
          ),
        ],
        image: DecorationImage(
            image:
                AssetImage(_swipeItems[index].content.imageURl),
            fit: BoxFit.cover,colorFilter: ColorFilter.mode(
          isliked ? AppColors.goldColor.withOpacity(0.7): Colors.transparent,
          BlendMode.srcOver,
        ),),
      ),
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.fromLTRB(
            width * 0.04, height * 0.56, width * 0.04, 0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Ethel W. Washington",
                  style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: height * 0.027),
                ),
                InkWell(
                  //onTap: () => _onButtonPressed(context),
                  child: Container(
                    width: width * 0.077,
                    height: height * 0.077,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            Common.assetsImages + "i2.png"),
                        fit: BoxFit.scaleDown,
                      ),
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Art Manager",
                  style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: height * 0.019),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      width * 0.04, 0, width * 0.01, 0),
                  child: Image.asset(
                    Common.assetsImages + "location.png",
                    height: height * 0.03,
                    width: width * 0.03,
                  ),
                ),
                Text(
                  "10 miles",
                  style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: height * 0.015),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: AutoSizeText(
                    "description",
                    style: TextStyle(
                        color: AppColors.whiteColor,
                        fontSize: height * 0.019),
                    maxLines: 2,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class chip extends StatelessWidget {
  chip({
    this.text
});
 final String text;
  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
        color: Color(0xffD19D43),
        borderRadius: BorderRadius.all(
           Radius.circular(20),

        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 6,vertical: 2 ),
      margin: EdgeInsets.only(right: 6,bottom: 6),
      child:Text(text,style: TextStyle(color: Colors.white),),
    );
  }
}

class GiftCategory extends StatelessWidget {
  const GiftCategory({
    Key key,
    @required this.heading,
    @required this.width,
    @required this.lovegifts,
    @required this.lovegiftsname,
    @required this.lovegiftsprice,
    @required this.animation,
    @required this.height,
  }) : super(key: key);
  final String heading;
  final double width;
  final List<String> lovegifts;
  final List<String> lovegiftsname;
  final List<String> lovegiftsprice;
  final Animation animation;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: width * 0.00001),
          child: Text(
            heading,
            style: TextStyle(color: AppColors.whiteColor),
          ),
        ),
        Divider(
          color: Colors.white,
          thickness: 2,
        ),
        GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: lovegifts.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 0.8,
            crossAxisCount: 3,
            crossAxisSpacing: 6,
            mainAxisSpacing: 11.0,
          ),
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MatchScreen(
                        imageUrl: lovegifts[index],
                        giftname: lovegiftsname[index],
                        giftpricecoin: lovegiftsprice[index],
                      ),
                    ));
              },
              child: Container(
                child: Column(
                  children: [
                    Hero(
                      tag: 'logo',
                      child: Container(
                        child: Image.asset(lovegifts[index]),
                        height: animation.value * 100,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: height * 0.01),
                      child: Text(
                        lovegiftsname[index],
                        style: TextStyle(color: AppColors.whiteColor),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          Common.assetsImages + "smallcoin.png",
                          height: height * 0.04,
                          width: width * 0.04,
                        ),
                        SizedBox(
                          width: width * 0.01,
                        ),
                        RichText(
                          text: TextSpan(
                            text: lovegiftsprice[index],
                            style: TextStyle(
                                fontSize: height * 0.015,
                                color: AppColors.whiteColor),
                            children: [
                              TextSpan(
                                text: ' G',
                                style: TextStyle(
                                  color: AppColors.whiteColor,
                                  fontSize: height * 0.011,
                                ),
                              ),
                              TextSpan(
                                text: 'c ',
                                style: TextStyle(
                                  color: AppColors.whiteColor,
                                  fontSize: height * 0.008,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
        SizedBox(
          height: height * 0.02,
        ),
      ],
    );
  }
}

class RoundButton extends StatelessWidget {
   RoundButton(
      {Key key,
        this.isliked,
      this.height,
      this.width,
      this.iconasset,
      this.onpressed,
      this.width1,
      this.height1,this.matchEngine})
      : super(key: key);
  bool isliked;
  final double height;
  final double width;
  final String iconasset;
  final Function onpressed;
  final double height1;
  final double width1;
  final MatchEngine matchEngine;

  @override
  Widget build(BuildContext context) {
    bool islike = false;
    return InkWell(
      onTap: onpressed,
      child: Container(
        alignment: Alignment.center,
        width: width,
        height: height,
        child: Image.asset(
          iconasset,
          fit: BoxFit.fitWidth,
          height: height1,
          width: width1,
        ),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 6.0,
            ),
          ],
        ),
      ),
    );
  }
}

class Content {
  final String imageURl;

  Content({this.imageURl});
}
