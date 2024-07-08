import 'package:flutter/material.dart';
import 'package:kido_loom/utils/color.dart';

class Appbar extends StatelessWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return AppBar(
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage('assets/images/profile.png'),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hello!',
                  style: TextStyle(fontSize: width * 0.03, color: font2)),
              Text('Alice Sienfeld',
                  style: TextStyle(fontSize: width * 0.04, color: font1,fontWeight: FontWeight.bold)),
              Row(
                children: [
                  Icon(Icons.location_on_outlined,
                      size: width * 0.03, color: font2),
                  Text('Birmingham, UK',
                      style: TextStyle(fontSize: width * 0.03, color: font2)),
                ],
              ),
            ],
          ),
          SizedBox(
            width: width * 0.3,
          ),
          Row(
            children: [
              Icon(
                Icons.search,
                size: width * 0.05,
                color: font1,
              ),
              SizedBox(width: width*0.01),
              Icon(
                Icons.notifications_none_outlined,
                size: width * 0.05,
                color: font1,
              ),
              SizedBox(
                width: width*0.01,
              ),
              Icon(
                Icons.menu,
                size: width * 0.05,
                color: font1,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
