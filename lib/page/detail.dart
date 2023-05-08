import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pts_ganjil/theme.dart';

class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Color(0xff2C2C2C),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.6,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(180),
                  topRight: Radius.circular(180),
                ),
                color: Color(0xff1E1E1E),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                SizedBox(
                  height: 90,
                ),
                Text(
                  "FRUIT",
                  style: GoogleFonts.quicksand(
                    textStyle: TextStyle(
                        fontSize: 20,
                        letterSpacing: 4.0,
                        color: TextColor,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Pinneapple",
                  style: GoogleFonts.quicksand(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w800)),
                ),
                Image.asset(
                  "assets/nanas.png",
                  width: 270,
                  height: 270,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Rp 80.000",
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                                color: TextColor,
                                fontSize: 40,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.star_rate_rounded,
                                color: Color(0xffF1AB68), size: 20),
                            Icon(Icons.star_rate_rounded,
                                color: Color(0xffF1AB68), size: 20),
                            Icon(Icons.star_rate_rounded,
                                color: Color(0xffF1AB68), size: 20),
                            Icon(Icons.star_rate_rounded,
                                color: Color(0xffF1AB68), size: 20),
                            Icon(Icons.star_rate_rounded,
                                color: Color(0xffF1AB68), size: 20),
                            Padding(
                              padding: const EdgeInsets.only(top: 4),
                              child: Text(
                                "5.0",
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600)),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 25),
                      child: Text(
                        "Per Kg",
                        style: GoogleFonts.quicksand(
                            textStyle: TextStyle(
                                color: Colors.white70,
                                fontSize: 18,
                                fontWeight: FontWeight.w400)),
                      ),
                    ),
                    SizedBox(
                      width: 35,
                    ),
                    ClipOval(
                      child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(top: 5),
                          width: 60,
                          height: 60,
                          color: Color(0xff2C2C2C),
                          child: Icon(
                            Icons.favorite_border_rounded,
                            color: Color(0xffF7806A),
                            size: 50,
                          )),
                    )
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          ClipOval(
                            child: Container(
                              padding: EdgeInsets.only(
                                  top: 8, bottom: 15, right: 15, left: 15),
                              color: Color(0xff2C2C2C),
                              width: 70,
                              height: 70,
                              child: SvgPicture.asset(
                                "assets/oke.svg",
                                color: TextColor,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            'Quality',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13)),
                          ),
                          Text(
                            'Assurance',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13)),
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          ClipOval(
                            child: Container(
                              padding: EdgeInsets.only(
                                  top: 8, bottom: 15, right: 15, left: 15),
                              color: Color(0xff2C2C2C),
                              width: 70,
                              height: 70,
                              child: SvgPicture.asset(
                                "assets/delivery.svg",
                                color: TextColor,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            'Fast',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13)),
                          ),
                          Text(
                            'Delivery',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13)),
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          ClipOval(
                            child: Container(
                              padding: EdgeInsets.only(
                                  top: 8, bottom: 15, right: 15, left: 15),
                              color: Color(0xff2C2C2C),
                              width: 70,
                              height: 70,
                              child: SvgPicture.asset(
                                "assets/knife.svg",
                                color: TextColor,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            'Best-in',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13)),
                          ),
                          Text(
                            'Table',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13)),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 2.7,
                        height: MediaQuery.of(context).size.height / 15,
                        decoration: BoxDecoration(
                            color: Color(0xff2C2C2C),
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/minus.png",
                                width: 20,
                                height: 20,
                              ),
                              Spacer(),
                              Text(
                                "7",
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700)),
                              ),
                              Spacer(),
                              Image.asset(
                                "assets/plus.png",
                                width: 17,
                                height: 17,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Spacer(),
                      Container(
                        width: MediaQuery.of(context).size.width / 2.7,
                        height: MediaQuery.of(context).size.height / 13,
                        margin: EdgeInsets.only(bottom: 5),
                        decoration: BoxDecoration(
                            color: Color(0xffF1AB68),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Go to Cart",
                                style: GoogleFonts.roboto(
                                  textStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 25,
                              )
                            ]),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 20,
            child: Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.keyboard_backspace_sharp,
                      size: 50,
                      color: Color(0xffA6A6A6),
                    )),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.55,
                ),
                Image.asset(
                  "assets/Group.png",
                  width: 50,
                  height: 50,
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
