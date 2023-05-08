import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:pts_ganjil/data/menu.dart';
import 'package:pts_ganjil/theme.dart';
import 'package:intl/intl.dart';

class MenuCard extends StatelessWidget {
  final Menu menu;
  MenuCard(this.menu);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 2.2,
              height: MediaQuery.of(context).size.height / 4.5,
            ),
            Positioned(
              bottom: 0,
              right: 10,
              child: Container(
                width: MediaQuery.of(context).size.width / 2.5,
                height: MediaQuery.of(context).size.height / 6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100),
                    topRight: Radius.circular(100),
                  ),
                  color: menu.bg,
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 5,
              top: 1,
              bottom: 1,
              child: Image.asset(
                menu.img,
                width: 200,
                height: 200,
              ),
            )
          ],
        ),
        Container(
          alignment: Alignment.topLeft,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            color: Colors.black,
          ),
          width: MediaQuery.of(context).size.width / 2.5,
          height: MediaQuery.of(context).size.height / 6,
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.star_rate_rounded,
                    color: Color(0xffF1AB68),
                    size: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 0, top: 2),
                    child: Text(
                      "5.0",
                      style: GoogleFonts.quicksand(
                          textStyle: TextStyle(color: Colors.white)),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
              Text("FRUIT",
                  style: GoogleFonts.quicksand(
                    textStyle: TextStyle(
                        fontSize: 13,
                        letterSpacing: 4.0,
                        color: TextColor,
                        fontWeight: FontWeight.w500),
                  )),
              SizedBox(
                height: 5,
              ),
              Text(
                menu.name,
                style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w800)),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                NumberFormat.currency(
                                          locale: 'id',
                                          symbol: 'Rp',
                                          decimalDigits: 0)
                                      .format(menu.harga),
                style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                        color: TextColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w700)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Per kg",
                    style: GoogleFonts.quicksand(
                        textStyle: TextStyle(
                            color: Colors.white70,
                            fontSize: 12,
                            fontWeight: FontWeight.w400)),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                ],
              )
            ]),
          ),
        ),
      ],
    );
  }
}
