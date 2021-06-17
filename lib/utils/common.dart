import 'package:flutter/material.dart';
import 'package:goldidate/routes/app_routes.dart';
import 'package:goldidate/utils/utils_exporter.dart';
import 'package:goldidate/utils/widgets/widgets_exporter.dart';

class Common {
  static final String applicationName = "Goldidate";
  static final String assetsImages = "assets/images/";
  static final String assetsIcons = "assets/icons/";
  static final String assetsAnimations = "assets/animations/";

  static showOnePrimaryButtonDialog({
    @required BuildContext context,
    @required String dialogMessage,
    @required String primaryButtonText,
    Function primaryButtonOnPressed,
  }) {
    return showDialog(
      context: context,
      builder: (context) => new AlertDialog(
        title: new Text(Common.applicationName),
        content: new Text(dialogMessage),
        actions: <Widget>[
          DialogPrimaryButton(
            onPressed: primaryButtonOnPressed ?? () => Navigator.pop(context),
            buttonText: primaryButtonText,
          ),
        ],
      ),
    );
  }

  static processLogout(BuildContext context) {
    ApiRequests.logout()
        .then((value) => Navigator.of(context).pushNamedAndRemoveUntil(
            AppRoutes.getStartedRoute, (route) => false))
        .onError(
          (error, stackTrace) => Common.showOnePrimaryButtonDialog(
            context: context,
            dialogMessage: error.toString(),
            primaryButtonText: "Okay",
          ),
        );
  }
}
