import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:panakj_app/core/colors/colors.dart';
import 'package:panakj_app/core/constant/constants.dart';

class AdminDashboard extends StatelessWidget {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final amindashBoardContents = [
      Icon(
        Icons.person,
        size: iconsize,
        color: studenticonColor,
      ),
      Icon(
        Icons.settings_applications,
        size: iconsize,
        color: applicationticonColor,
      ),
      Icon(
        EvaIcons.award,
        size: iconsize,
        color: TopGradeiconColor,
      ),
      Icon(
        Icons.receipt,
        size: iconsize,
        color: ReciptenticonColor,
      ),
      Icon(
        Icons.file_download_done_rounded,
        size: iconsize,
        color: fieldiconColor,
      ),
    ];

    final titlelist = [
      "Student",
      "Applications",
      "Top Grade",
      "Reciptent",
      "Field Verification",
    ];

    return Scaffold(
      drawer: const Drawer(),
      backgroundColor: const Color(0xFFf4f4f4),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              if (_key.currentState != null) {
                _key.currentState!
                    .openDrawer(); // Open the drawer using the GlobalKey if not null
              }
            },
            icon: const Icon(
              Icons.menu,
              color: kwhitecolor,
            )),
        backgroundColor: const Color.fromARGB(255, 109, 60, 223),
        title: Text('Pankaj Trust', style: admindashtitle),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: amindashBoardContents.length,
                padding: const EdgeInsets.all(10),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return AdminDashContainer(
                    myIcons: amindashBoardContents[index],
                    title: titlelist[index],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class AdminDashContainer extends StatelessWidget {
  AdminDashContainer({
    super.key,
    required this.myIcons,
    required this.title,
  });

  var myIcons;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 100,
        height: 120,
        decoration: BoxDecoration(
          color: kwhitecolor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: kgreycolor,
              blurRadius: 3,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: myIcons,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                title,
                style: admincontent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
