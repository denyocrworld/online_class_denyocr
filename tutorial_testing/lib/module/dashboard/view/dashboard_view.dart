import 'package:flutter/material.dart';
import 'package:tutorial_testing/core.dart';
import '../controller/dashboard_controller.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  Widget build(context, DashboardController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: ListView.builder(
        itemCount: controller.users.length,
        padding: const EdgeInsets.all(20.0),
        physics: const ScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          var item = controller.users[index];

          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey[200],
                backgroundImage: NetworkImage(
                  item["avatar"],
                ),
              ),
              title: Text(item["first_name"]),
              subtitle: Text(item["email"]),
            ),
          );
        },
      ),
    );
  }

  @override
  State<DashboardView> createState() => DashboardController();
}
