import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:goldidate/utils/common.dart';
import 'package:image_picker/image_picker.dart';

class AuthVerifyPage extends StatelessWidget {
  const AuthVerifyPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.red),
            onPressed: () {
              Navigator.pop(context);
            },
          )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: height * 0.6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 140,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNOhpV67XSI4Vz5Z_L7XoWiH7UzZQDBTzS3g&usqp=CAU"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 2,
                        top: 2,
                        child: Image(
                            // height: 30,
                            image: AssetImage(
                                Common.assetsImages + "privacyicon.png")),
                      )
                    ],
                  ),
                  Text("Authentication Verify",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: width * 0.07)),
                  Text(
                      "Help us keep goaldidate safe and honest.\nPlease verify yourself with one-time selfie.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: width * 0.04,
                      )),
                  Text(
                      "We will only use your photo to confirm\nYou're you, so feel safe and free to verify.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: width * 0.04,
                      )),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AuthVerifyImagePage()));
                        },
                        child: Container(
                          margin: EdgeInsets.only(top: 10),
                          height: height * 0.07,
                          width: width * 0.8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40.0),
                            gradient: LinearGradient(colors: [
                              // Color(0xFFD9B372),
                              Color(0xFFD19D43),
                              Color(0xFFD19D43),
                            ]),
                          ),
                          child: Center(
                            child: Text(
                              "Verify Yourself",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: width * 0.035,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Later",
                          style: TextStyle(
                              color: Color(0xFFD19D43),
                              fontSize: width * 0.035,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Text(
                  "Your photo will never be uploaded to your profile or\nShown to anyone else.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xffBDBDBD),
                    fontSize: width * 0.035,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Contact Support",
                    style: TextStyle(
                      color: Color(0xff888888),
                      decoration: TextDecoration.underline,
                      fontSize: width * 0.04,
                    ),
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

class AuthVerifyImagePage extends StatefulWidget {
  const AuthVerifyImagePage({Key key}) : super(key: key);

  @override
  State<AuthVerifyImagePage> createState() => _AuthVerifyImagePageState();
}

class _AuthVerifyImagePageState extends State<AuthVerifyImagePage> {
  File image;

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      final imageTemporary = File(image.path);
      setState(() => this.image = imageTemporary);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.red),
            onPressed: () {
              Navigator.pop(context);
            },
          )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: height * 0.6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 140,
                                width: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNOhpV67XSI4Vz5Z_L7XoWiH7UzZQDBTzS3g&usqp=CAU"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                                right: 1,
                                top: 1,
                                child: Image(
                                    image: AssetImage(Common.assetsImages +
                                        "privacyicon.png")))
                          ],
                        ),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 140,
                                width: 100,
                                decoration: BoxDecoration(
                                  image: image != null
                                      ? DecorationImage(
                                          image: FileImage(image),
                                          fit: BoxFit.cover,
                                        )
                                      : null,
                                  border: Border.all(
                                    color: image == null
                                        ? Color(0xFFD9B372)
                                        : Colors.transparent,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                  // image: DecorationImage(
                                  //   image: NetworkImage(
                                  //       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNOhpV67XSI4Vz5Z_L7XoWiH7UzZQDBTzS3g&usqp=CAU"),
                                  //   fit: BoxFit.cover,
                                  // ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(0.0, 1.0), //(x,y)
                                    blurRadius: 6.0,
                                  ),
                                ],
                              ),
                              child: image == null
                                  ? InkWell(
                                      onTap: () => pickImage(),
                                      child: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        child: Icon(
                                          Icons.add,
                                          size: 30,
                                          color: Color(0xFFD9B372),
                                        ),
                                      ),
                                    )
                                  : Text(""),
                            ),
                            Positioned(
                              right: 1,
                              top: 1,
                              child: image != null
                                  ? Image(
                                      image: AssetImage(Common.assetsImages +
                                          "privacyicon.png"))
                                  : Icon(null),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  image == null
                      ? Text("Strike this position",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: width * 0.065))
                      : Text("Happy with your photo?",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: width * 0.065)),
                  image == null
                      ? Column(
                          children: [
                            Text(
                                "Take a photo of yourself and copying this post,\nand we'll compare it to your profile\nPhoto to verify you.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: width * 0.035,
                                )),
                          ],
                        )
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Remember to verify yourself successfully",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: width * 0.035,
                                )),
                            SizedBox(height: 10),
                            Text("*Your face must be clearly visible.",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: width * 0.035,
                                )),
                            SizedBox(height: 10),
                            Text("*Your must be copying the position exactly.",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: width * 0.035,
                                )),
                          ],
                        ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: height * 0.07,
                          width: width * 0.8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40.0),
                            gradient: LinearGradient(colors: [
                              // Color(0xFFD9B372),
                              Color(0xFFD19D43),
                              Color(0xFFD19D43),
                            ]),
                          ),
                          child: Center(
                            child: image == null
                                ? Text(
                                    "Verify Yourself",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: width * 0.035,
                                        fontWeight: FontWeight.bold),
                                  )
                                : Text(
                                    "Submit photo",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: width * 0.035,
                                        fontWeight: FontWeight.bold),
                                  ),
                          ),
                        ),
                      ),
                      image == null
                          ? TextButton(
                              onPressed: () {},
                              child: Text(
                                "",
                                style: TextStyle(
                                    color: Color(0xFFD19D43),
                                    fontSize: width * 0.035,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          : TextButton(
                              onPressed: () {},
                              child: Text(
                                "Retake my photo",
                                style: TextStyle(
                                    color: Color(0xFFD19D43),
                                    fontSize: width * 0.035,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Text(
                  "Your photo will never be uploaded to your profile or\nShown to anyone else.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xffBDBDBD),
                    fontSize: width * 0.035,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Contact Support",
                    style: TextStyle(
                      color: Color(0xff888888),
                      decoration: TextDecoration.underline,
                      fontSize: width * 0.04,
                    ),
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
