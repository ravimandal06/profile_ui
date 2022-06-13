import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoutWidget extends StatefulWidget {
  const LogoutWidget({
    Key? key,
    required this.text,
    required this.onClicked,
    required this.arrowshown,
  }) : super(key: key);
  final String text;
  final VoidCallback onClicked;
  final bool arrowshown;

  @override
  State<LogoutWidget> createState() => _LogoutWidgetState();
}

class _LogoutWidgetState extends State<LogoutWidget> {
  @override
  Widget build(BuildContext context) => GestureDetector(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: context.theme.backgroundColor,
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
          height: 50,
          width: 350,
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.logout_rounded,
                size: 24,
                // color: context.theme.primaryColor,
              ),
              SizedBox(width: 10),
              Text(
                'Logout',
                style: GoogleFonts.lato(
                  fontSize: 18,
                  // fontWeight: FontWeight.w400,
                  // color: context.theme.primaryColor,
                ),
              ),
            ],
          ),
        ),
        onTap: () {
          print("logout");
        },
      );
}
