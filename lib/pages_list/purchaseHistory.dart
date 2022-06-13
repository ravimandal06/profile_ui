import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/routes.dart';

class PurchaseWidget extends StatefulWidget {
  const PurchaseWidget({
    Key? key,
    required this.text,
    required this.onClicked,
    required this.arrowshown,
  }) : super(key: key);
  final String text;
  final VoidCallback onClicked;
  final bool arrowshown;

  @override
  State<PurchaseWidget> createState() => _PurchaseWidgetState();
}

class _PurchaseWidgetState extends State<PurchaseWidget> {
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.published_with_changes_sharp,
                size: 24,
                // color: context.theme.primaryColor,
              ),
              SizedBox(width: 0),
              Text(
                'Purchase History',
                style: GoogleFonts.lato(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  // color: context.theme.primaryColor,
                ),
              ),
              SizedBox(width: 100),
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
