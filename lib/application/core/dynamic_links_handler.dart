import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dddbaf/application/navigation/navigate_via_uri.dart';
import 'package:flutter_dddbaf/domain/auth/utm_parameters/utm_parameters.dart';

void dynamicLinksHandler({BuildContext context}) async {
  /// Fired when the app is brought into the foreground
  FirebaseDynamicLinks.instance.onLink(
      onSuccess: (PendingDynamicLinkData dynamicLink) async {
    final Uri deepLink = dynamicLink?.link;
    final Map<String, String> params = deepLink.queryParameters;

    if (deepLink != null) {
      navigateViaUri(deepLink, context);
      saveUtmParameters(params);
      // Add any other methods to handle deep links here
    }
  }, onError: (OnLinkErrorException e) async {
    print('onLinkError');
    print(e.message);
  });

  /// Fired when the app is opened from a dynamic link
  final PendingDynamicLinkData data =
      await FirebaseDynamicLinks.instance.getInitialLink();
  final Uri deepLink = data?.link;
  final Map<String, String> params = deepLink.queryParameters;

  if (deepLink != null) {
    navigateViaUri(deepLink, context);
    saveUtmParameters(params);
    // Add any other methods to handle deep links heres
  }
}

void saveUtmParameters(Map<String, String> params) async {
  UtmParameters utm = UtmParameters(
      source: params["source"],
      medium: params["medium"],
      campaign: params["campaign"]);
  utm.writeToHive();
}
