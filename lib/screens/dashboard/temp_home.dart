import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:goldidate/utils/utils_exporter.dart';

class TempHome extends StatefulWidget {
  const TempHome({Key key}) : super(key: key);

  @override
  _TempHomeState createState() => _TempHomeState();
}

class _TempHomeState extends State<TempHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text("${Common.applicationName}"),
        actions: [
          InkWell(
            onTap: () => Common.processLogout(context),
            child: Container(
              margin: const EdgeInsets.only(right: 10.0),
              child: Icon(
                FontAwesomeIcons.solidArrowAltCircleRight,
                size: 20.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
