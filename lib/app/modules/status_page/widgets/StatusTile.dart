import 'package:dashed_container/dashed_container.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_status_clone/util/AppColors.dart';
import 'dart:math';

class StatusTile extends StatelessWidget {
  final double _numeroStatus = 4;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: 12,
            horizontal: 20,
          ),
          child: Stack(
            children: <Widget>[
              Transform.rotate(
                angle: pi / 20.0,
                alignment: Alignment.center,
                child: DashedContainer(
                  dashColor: AppColor.accent,
                  boxShape: BoxShape.circle,
                  borderRadius: 50,
                  dashedLength: ((188 - (_numeroStatus * 10)) / _numeroStatus),
                  blankLength: 10,
                  strokeWidth: 5,
                  child: Transform.rotate(
                    angle: pi / -20,
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: AppColor.tabbar,
                      backgroundImage: NetworkImage(
                          "https://gravatar.com/avatar/d25e900e83eca60b21e76070b2b3a1f5?s=200&d=mp&r=pg"),
                    ),
                  ),
                ),
              ),
              // Positioned(
              //   bottom: 0,
              //   right: 0,
              //   child: Container(
              //     decoration: BoxDecoration(
              //         color: AppColor.accent,
              //         borderRadius: BorderRadius.circular(50)),
              //     child: Padding(
              //       padding: EdgeInsets.all(0.5),
              //       child: Icon(
              //         Icons.add,
              //         color: Colors.white,
              //         size: 20,
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "My status",
              style: TextStyle(
                  color: Color(0xffd0d0d0),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Tap to add update",
              style: TextStyle(
                color: AppColor.secondary_accent,
                fontSize: 14,
              ),
            )
          ],
        )
      ],
    );
  }
}
