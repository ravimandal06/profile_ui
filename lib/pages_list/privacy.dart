import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/routes.dart';

class PrivacyWidget extends StatefulWidget {
  const PrivacyWidget({
    Key? key,
    required this.text,
    required this.onClicked,
    required this.arrowshown,
  }) : super(key: key);
  final String text;
  final VoidCallback onClicked;
  final bool arrowshown;

  @override
  State<PrivacyWidget> createState() => _PrivacyWidgetState();
}

class _PrivacyWidgetState extends State<PrivacyWidget> {
  @override
  Widget build(BuildContext context) => GestureDetector(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            // color: Colors.grey[800],
            color: context.theme.backgroundColor,

            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
          height: 50,
          width: 350,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                CupertinoIcons.lock_shield,
                size: 24,
                // color: context.theme.primaryColor,
              ),
              SizedBox(width: 0),
              Text(
                'Privacy',
                style: GoogleFonts.lato(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  // color: context.theme.primaryColor,
                ),
              ),
              SizedBox(width: 180),
              Icon(
                CupertinoIcons.right_chevron,
                size: 24,
                // color: context.theme.primaryColor,
              ),
            ],
          ),
        ),
        onTap: () {
          Navigator.pushNamed(context, MyRoutes.privacyPage);
        },
      );
}
