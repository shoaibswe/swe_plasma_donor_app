import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<Widget> customLaunchFun(command) async {
  if (await canLaunch(command)) {
    await launch(command);
  } else {
    print(' could not launch $command');
  }
}