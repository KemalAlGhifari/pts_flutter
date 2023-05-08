import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:pts_ganjil/page/detail.dart';
import 'package:pts_ganjil/sidebar.dart';
import 'package:pts_ganjil/theme.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home:  MyHomePage(title: 'flutter',),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      
      backgroundColor: BlackColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: BlackColor,
        actions: <Widget>[
          Stack(
            children: [
              IconButton(
                icon: const Icon(
                  Icons.shopping_bag_outlined,
                  color: Color(0xff989898),
                  size: 35,
                ),
                tooltip: 'Comment Icon',
                onPressed: () {},
              ),
              Positioned(
                  bottom: 15,
                  right: 10,
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffFF846D),
                    ),
                    width: 8,
                    height: 8,
                  )),
            ],
          ),
          const SizedBox(
            width: 5,
          ),
          CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 30,
            child: ClipOval(
              child: Image.asset(
                'assets/user.jpg',
                fit: BoxFit.cover,
                width: 40,
                height: 40,
              ),
            ),
          ),
        ],
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.format_align_left_sharp,
                color: Color(0xff989898),
                size: 30, // Change Custom Drawer Icon Color
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
      bottomNavigationBar: Container(
        clipBehavior:
            Clip.hardEdge, //or better look(and cost) using Clip.antiAlias,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(24),
            topLeft: Radius.circular(24),
          ),
          
        ),
        child: BottomNavigationBar(
          selectedItemColor: TextColor,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          unselectedItemColor: Colors.white70,
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          backgroundColor: const Color(0xff2C2C2C),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded,size: 35,),
              label: 'Calls',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search,size: 35,),
              label: 'Camera',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite,size: 35,),
              label: 'Chats',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list_alt_rounded,size: 35,),
              label: 'Chats',
            ),
          ],
        ),
      ),
      drawer: sidebar(),
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: BlackColor,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                        color: Colors.transparent,
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 3),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width / 1.1,
                      height: MediaQuery.of(context).size.height / 3.5,
                      decoration: BoxDecoration(
                          color: Color(0xff2C2C2C),
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    Positioned(
                      left: 125,
                      bottom: 25,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Image.asset(
                          "assets/frut.png",
                          height: 300,
                          width: 300,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 35,
                      child: Container(
                        alignment: Alignment.topLeft,
                        width: MediaQuery.of(context).size.width / 1.25,
                        height: MediaQuery.of(context).size.height / 4.3,
                        decoration: BoxDecoration(
                          color: Color(0xff2C2C2C).withOpacity(0.3),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text("OFFER",
                                style: GoogleFonts.quicksand(
                                  textStyle: TextStyle(
                                    fontSize: 15,
                                    letterSpacing: 3.0,
                                    color: TextColor,
                                  ),
                                )),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              "Discount up to 40% Off",
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 26,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Im honor of World Health Day\nWe'd like to give you this amazing\noffers",
                              style: GoogleFonts.quicksand(
                                  textStyle: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400)),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              width: 140,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Color(0xffF1AB68),
                                borderRadius: BorderRadius.circular(9),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "View Offers",
                                style: GoogleFonts.quicksand(
                                  textStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20, left: 20),
                  child: Row(
                    children: [
                      Text(
                        "Recommended Fruits",
                        style: GoogleFonts.roboto(
                            textStyle:
                                TextStyle(color: Colors.white70, fontSize: 20)),
                      ),
                      Spacer(),
                      Container(
                        height: 23,
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "View All",
                                  style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                        fontSize: 12, color: Color(0xffA3816E)),
                                  )),
                              Icon(Icons.arrow_forward_ios_rounded,
                                  size: 15, color: Color(0xffA3816E))
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                  ),
                  // content utama
                  child: Row(
                    children: [
                      // nanas
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Detail(),));
                        },
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width / 2.2,
                                  height:
                                      MediaQuery.of(context).size.height / 4.5,
                                ),
                                Positioned(
                                  bottom: 0,
                                  right: 10,
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width / 2.5,
                                    height:
                                        MediaQuery.of(context).size.height / 6,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(100),
                                        topRight: Radius.circular(100),
                                      ),
                                      color: Color(0xff926130),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 0,
                                  right: 5,
                                  top: 1,
                                  bottom: 1,
                                  child: Image.asset(
                                    "assets/nanas.png",
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
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
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
                                            padding: const EdgeInsets.only(
                                                bottom: 0, top: 2),
                                            child: Text(
                                              "5.0",
                                              style: GoogleFonts.quicksand(
                                                  textStyle: TextStyle(
                                                      color: Colors.white)),
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
                                        "Pinneapple",
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
                                            .format(80000),
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
                        ),
                      ),
                      // apple
                      Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width / 2.2,
                                height:
                                    MediaQuery.of(context).size.height / 4.5,
                              ),
                              Positioned(
                                bottom: 0,
                                right: 10,
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width / 2.5,
                                  height:
                                      MediaQuery.of(context).size.height / 6,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(100),
                                      topRight: Radius.circular(100),
                                    ),
                                    color: Color(0xff6C392C),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                right: 0,
                                top: 15,
                                bottom: 0,
                                child: Image.asset(
                                  "assets/apel.png",
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
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
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
                                          padding: const EdgeInsets.only(
                                              bottom: 0, top: 2),
                                          child: Text(
                                            "2.0",
                                            style: GoogleFonts.quicksand(
                                                textStyle: TextStyle(
                                                    color: Colors.white)),
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
                                      "Apple",
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
                                          .format(30000),
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
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
