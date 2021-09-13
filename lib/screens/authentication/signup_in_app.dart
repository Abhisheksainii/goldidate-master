import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goldidate/modals/modals_exporter.dart';
import 'package:goldidate/routes/app_routes.dart';
import 'package:goldidate/utils/utils_exporter.dart';
import 'package:goldidate/utils/widgets/widgets_exporter.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:mobile_number/mobile_number.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

enum MobileVerification {
  PHONE_SIGNUP_SATE,
  OTP_VERIFICATION_STATE,
  USER_DETAILS_STATE,
}

class SignUpInApp extends StatefulWidget {
  const SignUpInApp({Key key}) : super(key: key);

  @override
  _SignUpInAppState createState() => _SignUpInAppState();
}

class _SignUpInAppState extends State<SignUpInApp> {
  final _APPBAR_TITLE = "My number is";
  List<SimCard> simCards;

  //firebase specific
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  UserCredential authCredential;
  String verificationID, otpEntered;

  //text controllers for input fields
  TextEditingController usernameController = new TextEditingController();
  TextEditingController phoneController = new TextEditingController();
  TextEditingController otpController = new TextEditingController();

  bool isLoading = false;

  // initial for phone input field
  String dialCode = "+92";
  PhoneNumber _initialNumber = PhoneNumber(dialCode: "+92", isoCode: "PK");

  //initial state
  MobileVerification currentState = MobileVerification.PHONE_SIGNUP_SATE;

  @override
  void initState() {
    checkUserPhone();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 20.0,
                  ),
                  child: displayPhoneAuthenticationState(),
                ),
              ),
              isLoading
                  ? Positioned.fill(
                      child: Container(
                        color: AppColors.blackColor.withOpacity(0.25),
                        height: size.height,
                      ),
                    )
                  : const SizedBox.shrink(),
              isLoading
                  ? Positioned.fill(
                      child: Center(
                        child: CircularProgressIndicator(
                          valueColor: new AlwaysStoppedAnimation<Color>(
                              AppColors.primaryColor),
                        ),
                      ),
                    )
                  : const SizedBox.shrink(),
            ],
          ),
        ),
      ),
    );
  }

  void checkUserPhone() async {
    //check if we can take user phone automatically or not
    await MobileNumber.hasPhonePermission.then((value) {
      if (value) {
        //permission available
        getSims();
      } else
        requestPermission();
    });
  }

  Widget _AppBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        PopButton(
          iconColor: Color(0xFFD19D43),
        ),
        Text(
          _APPBAR_TITLE,
          style: TextStyle(
            color: AppColors.blackColor,
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(),
      ],
    );
  }

  void requestPermission() async {
    await MobileNumber.requestPhonePermission.then((value) {
      checkUserPhone();
      return;
    });
  }

  void getSims() async {
    simCards = await MobileNumber.getSimCards;
    displayDetectedPhoneSheet();
    setState(() {});
  }

  void _processSelectedPhoneNumber(
      String isoCode, String countryCode, String phoneNumber) {
    // if success then take iso code / country code / phone number
    // add iso / country code to initial phone number for input field

    String finalNumber = phoneNumber;

    // STARTED WITH PLUS: REMOVE 2 DIGITS
    // NOT STARTED WITH PLUS: REMOVE 1 DIGIT
    if (phoneNumber.startsWith("+"))
      finalNumber = phoneNumber.substring(2, phoneNumber.length);
    else
      finalNumber = phoneNumber.substring(1, phoneNumber.length);

    _initialNumber =
        PhoneNumber(dialCode: countryCode, isoCode: isoCode.toUpperCase());

    // add country code in dial code as well
    dialCode = "+$countryCode";

    // add phone number to controller
    phoneController.text = finalNumber;
    Navigator.pop(context);
    setState(() {});
  }

  void displayDetectedPhoneSheet() {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) async {
        await showModalBottomSheet(
          isDismissible: true,
          isScrollControlled: true,
          context: context,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(20),
            ),
          ),
          builder: (context) {
            return Container(
              padding: const EdgeInsets.symmetric(vertical: 40.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Continue with",
                    style: TextStyle(
                      color: AppColors.blackColor,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 0.3,
                      fontSize: 18.0,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  simCards == null
                      ? const SizedBox.shrink()
                      : ListView.builder(
                          shrinkWrap: true,
                          physics: BouncingScrollPhysics(),
                          itemCount: simCards.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              //todo: if success then take iso code / country code / phone number
                              onTap: () => _processSelectedPhoneNumber(
                                  simCards[index].countryIso,
                                  simCards[index].countryPhonePrefix,
                                  simCards[index].number),
                              child: Center(
                                child: Text(
                                  "${simCards[index].number}",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    height: 1.0,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                  const SizedBox(height: 20.0),
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Text(
                      "None of the above".toUpperCase(),
                      style: TextStyle(
                        color: AppColors.goldColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  void _processPhoneAuthentication() async {
    if (phoneController.text.trim().isEmpty ||
        phoneController.text.trim().length < 5) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Please enter valid phone number"),
        ),
      );
      return;
    }
    setState(() {
      FocusScope.of(context).unfocus();
      isLoading = true;
    });

    // process firebase auth
    await firebaseAuth
        .verifyPhoneNumber(
      phoneNumber: "$dialCode${phoneController.text}",
      verificationCompleted: (phoneAuthCredential) {
        signInWithPhoneAuthCredential(phoneAuthCredential);
        print("COMPLETED: $phoneAuthCredential");
      },
      verificationFailed: (verificationFailed) {
        setState(() {
          isLoading = false;
        });
        Common.showOnePrimaryButtonDialog(
          context: context,
          dialogMessage:
              "Verification failed. Make sure your internet is stable and try again. you might be redirected to browser for verification\nStatus Code:${verificationFailed.code}",
          primaryButtonText: "Okay",
        );
      },
      codeSent: (verificationID, resendingToken) {
        // if code sent change state to otp state
        setState(() {
          currentState = MobileVerification.OTP_VERIFICATION_STATE;
          this.verificationID = verificationID;
          isLoading = false;
        });

        print("CODE SENT:$verificationID$resendingToken");
      },
      codeAutoRetrievalTimeout: (verificationID) {
        setState(() {
          isLoading = false;
        });
        print("TIME OUT$verificationID");
      },
    )
        .onError((error, stackTrace) {
      setState(() {
        isLoading = false;
      });
      Common.showOnePrimaryButtonDialog(
        context: context,
        dialogMessage: error.toString(),
        primaryButtonText: "Okay",
      );
    });
  }

  Widget displayPhoneAuthenticationState() {
    if (currentState == MobileVerification.PHONE_SIGNUP_SATE) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _AppBar(),
          const SizedBox(height: 20.0),
          InternationalPhoneNumberInput(
            initialValue: _initialNumber,
            textFieldController: phoneController,
            onInputChanged: (PhoneNumber value) {
              setState(() {
                dialCode = value.dialCode;
              });
            },
          ),
          const SizedBox(height: 30.0),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text:
                  "When you tap “Continue”, Dater will send a text with verification code. Message and data rates may apply. The verified phone number can be used to log in.",
              style: TextStyle(
                color: Color(0xFF757575),
                fontSize: 14.0,
                height: 1.5,
              ),
              children: [
                TextSpan(
                  text: " Learn what happens when your number changes.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.0,
                    height: 1.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 50.0),
          PrimaryBackgroundButton(
            buttonText: "Submit",
            backgroundColor: Color(0xFFD19D43),
            onPressed: () =>
                Navigator.of(context).pushNamed(AppRoutes.verifyCode),
          ),
        ],
      );
    } else if (currentState == MobileVerification.OTP_VERIFICATION_STATE) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _AppBar(),
          const SizedBox(height: 20.0),
          OTPTextField(
            length: 6,
            style: TextStyle(fontSize: 17),
            margin: const EdgeInsets.symmetric(horizontal: 0),
            textFieldAlignment: MainAxisAlignment.spaceAround,
            fieldStyle: FieldStyle.underline,
            onCompleted: (pin) {
              setState(() {
                otpEntered = pin;
              });
              _processOTPVerification();
            },
            onChanged: (_) {
              print(_);
              setState(() {
                otpEntered = _;
              });
            },
          ),
          const SizedBox(height: 30.0),
          Wrap(
            children: [
              Text(
                "Please enter the 6-digit code sent to you at $dialCode${phoneController.text.trim()}",
                style: TextStyle(
                  height: 1.5,
                ),
                textAlign: TextAlign.center,
              ),
              Center(
                child: OutlinedButton(
                  onPressed: () {
                    setState(() {
                      currentState = MobileVerification.PHONE_SIGNUP_SATE;
                    });
                  },
                  child: Text(
                    "Resend OTP",
                    style: TextStyle(
                      color: AppColors.lightPrimaryColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 70.0),
          PrimaryBackgroundButton(
            onPressed: () => _processOTPVerification(),
            buttonText: "Submit",
          ),
        ],
      );
    } else if (currentState == MobileVerification.USER_DETAILS_STATE) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _AppBar(),
          const SizedBox(height: 20.0),
          OutlineRoundInputField(
            hintText: "Full Name",
            textController: usernameController,
            borderColor: AppColors.lightPrimaryColor,
          ),
          const SizedBox(height: 30.0),
          Text(
            "Almost there, provide us your basic information to start using ${Common.applicationName}",
            style: TextStyle(
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 70.0),
          PrimaryBackgroundButton(
            onPressed: () => _processUserProfileCreating(),
            buttonText: "Confirm",
          ),
        ],
      );
    } else
      return const SizedBox.shrink();
  }

  void _processOTPVerification() async {
    if (otpEntered == null || otpEntered.isEmpty || otpEntered.length < 6) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Please enter 6 digit OTP"),
        ),
      );
      return;
    }
    PhoneAuthCredential phoneAuthCredential = PhoneAuthProvider.credential(
      verificationId: verificationID,
      smsCode: otpEntered,
    );

    setState(() {
      FocusScope.of(context).unfocus();
      isLoading = true;
    });

    signInWithPhoneAuthCredential(phoneAuthCredential);
  }

  void signInWithPhoneAuthCredential(
      PhoneAuthCredential phoneAuthCredential) async {
    try {
      authCredential =
          await firebaseAuth.signInWithCredential(phoneAuthCredential);
      if (authCredential.user != null) {
        // check if user account already exists or not
        ApiRequests.userRecordExistInFirestore("Users", authCredential.user.uid)
            .then((value) {
          if (value) {
            // if user account already exist send to home ui
            setState(() {
              isLoading = false;
            });
            Navigator.of(context).pushNamedAndRemoveUntil(
                AppRoutes.tempHomeRoute, (route) => false);
          } else {
            // if no account with the user then change state to user detail ui
            setState(() {
              currentState = MobileVerification.USER_DETAILS_STATE;
              isLoading = false;
            });
          }
        }).onError((error, stackTrace) {
          setState(() {
            isLoading = false;
          });
          Common.showOnePrimaryButtonDialog(
            context: context,
            dialogMessage: error.toString(),
            primaryButtonText: "Okay",
          );
        });
        setState(() {
          isLoading = false;
        });
      }
    } on FirebaseAuthException catch (e) {
      setState(() {
        isLoading = false;
      });
      Common.showOnePrimaryButtonDialog(
        context: context,
        dialogMessage: e.message,
        primaryButtonText: "okay",
        primaryButtonOnPressed: () {
          Navigator.pop(context);
          Navigator.pop(context);
        },
      );
    }
  }

  void _processUserProfileCreating() {
    //store data of user with phone number to fire-store and move ui to home for logout option
    if (usernameController == null || usernameController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Please enter username to continue"),
        ),
      );
      return;
    }
    setState(() {
      FocusScope.of(context).unfocus();
      isLoading = true;
    });
    UserModal userModal = new UserModal(
      userID: authCredential.user.uid,
      username: usernameController.text.trim(),
      profileURL: "",
      emailAddress: "",
    );
    FirebaseFirestore.instance
        .collection("Users")
        .doc(authCredential.user.uid)
        .set(userModal.toJson())
        .then(
      (value) {
        setState(() {
          isLoading = false;
        });
        Navigator.pushNamedAndRemoveUntil(
            context, AppRoutes.tempHomeRoute, (route) => false);
      },
    ).onError((error, stackTrace) {
      setState(() {
        isLoading = false;
      });
      Common.showOnePrimaryButtonDialog(
        context: context,
        dialogMessage: error.toString(),
        primaryButtonText: "okay",
        primaryButtonOnPressed: () => Navigator.pushNamedAndRemoveUntil(
          context,
          AppRoutes.getStartedRoute,
          (route) => false,
        ),
      );
    });
  }
}
