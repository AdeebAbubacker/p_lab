import 'package:flutter/material.dart';
import 'package:animated_icon/animated_icon.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationScreen extends StatelessWidget {
  NotificationScreen({super.key});
  List scholorshipimg = [
    'assets/scholorship1.jpg',
    'assets/scholorship2.jpg',
    'assets/scholorship3.jpg'
  ];
  List notficationContent = [
    'pankaj trust to announce the next scholorship ceremony in coming week',
    '2024 scholorship award ceremony coming soon ...',
    'Students union coming soon',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(67.0),
        child: AppBar(
          backgroundColor: Colors.black45,
          title: const Text('Notifications'),
          centerTitle: true,
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: ListTile(
                    leading: Image.asset(
                      scholorshipimg[index],
                      width: 60,
                      height: 39,
                      fit: BoxFit.cover,
                    ),
                    title: Text(
                      notficationContent[index],
                      style: GoogleFonts.montserrat(
                        fontSize: 12,
                        color: const Color.fromARGB(214, 0, 0, 0),
                      ),
                    ),
                    trailing: NotificationIcon(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class NotificationIcon extends StatefulWidget {
  @override
  _NotificationIconState createState() => _NotificationIconState();
}

class _NotificationIconState extends State<NotificationIcon>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _animation = Tween<double>(begin: -20, end: 80).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    _controller.repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Transform.rotate(
          angle: _animation.value * (1 / 110),
          child: IconButton(
            icon: const Icon(
              Icons.notifications_rounded,
              size: 25.0,
            ),
            onPressed: () {},
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
