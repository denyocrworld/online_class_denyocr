import 'package:flutter/material.dart';
import 'package:tutorial_testing/core.dart';
import 'package:tutorial_testing/service/user_service/user_service.dart';
import '../view/dashboard_view.dart';

class DashboardController extends State<DashboardView> {
  static late DashboardController instance;
  late DashboardView view;

  @override
  void initState() {
    instance = this;
    getUsers();
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List users = [];
  getUsers() async {
    //membuat request http
    users = await UserService().getUsers();
    setState(() {});
  }
}
