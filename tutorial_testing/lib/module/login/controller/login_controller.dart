import 'package:flutter/material.dart';
import 'package:tutorial_testing/core.dart';
import 'package:tutorial_testing/state_util.dart';

class LoginController extends State<LoginView> {
  static late LoginController instance;
  late LoginView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String? email;
  String? password;
  doLogin() async {
    Get.offAll(const DashboardView());
  }
}
