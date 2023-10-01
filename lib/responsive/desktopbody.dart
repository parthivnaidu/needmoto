import 'package:flutter/material.dart';
import 'package:flutter_gradient_app_bar/flutter_gradient_app_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:needmoto/uses.dart';
import 'package:url_launcher/url_launcher.dart';

class desktopbody extends StatefulWidget {
  const desktopbody({super.key});

  @override
  State<desktopbody> createState() => _desktopbodyState();
}

class _desktopbodyState extends State<desktopbody> {
  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  bool isHower = false;
  bool isHower5 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: GradientAppBar(
        leading: Image(image: AssetImage('assets/needlogo.png')),
        title: RichText(
            text: TextSpan(
                text: 'NEED',
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrange),
                children: [
              TextSpan(
                  text: "MOTO",
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.black))
            ])),
        gradient: LinearGradient(colors: [
          // Colors.brown,
          // Colors.green,
          // Colors.lightBlue,
          // Colors.lightBlue,
          // Colors.yellowAccent,
          Colors.white, Colors.white70
        ]),
        actions: [
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text(
                'ABOUT US',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
          ),
          sbw(20),
          InkWell(
            onTap: () async {
              String email =
                  Uri.encodeComponent("ramanareddy@needmoto.in");
              String subject = Uri.encodeComponent("Hello Flutter");
              print(subject); //output: Hello%20Flutter
              Uri mail = Uri.parse("mailto:$email?subject=$subject");
              if (await launchUrl(mail)) {
                //  email app opened
              } else {
                //email app is not opened
              }
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text(
                'EMAIL US',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
          ),
          sbw(20),
          InkWell(
            onTap: () {
              setState(() {
                _makePhoneCall('tel:+918886666469');
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text(
                'CONTACT US',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
          ),
          sbw(30)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 500,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(
                    'assets/need1.png',
                  ),
                  opacity: 0.8,
                  fit: BoxFit.fill,
                )),
              ),
              Positioned(
                top: 420,
                left: MediaQuery.of(context).size.width / 2.2,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      _makePhoneCall('tel:+916305702158');
                    });
                  },
                  child: MouseRegion(
                    child: Container(
                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                          color: isHower
                              ? Color.fromARGB(255, 14, 0, 91)
                              : Colors.white,
                          shape: BoxShape.rectangle,
                          border: Border.all(
                            color: isHower
                                ? Colors.white
                                : Color.fromARGB(255, 14, 0, 91),
                          )),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Contact Us',
                              style: GoogleFonts.getFont('Poppins',
                                  color: isHower
                                      ? Colors.white
                                      : Color.fromARGB(255, 14, 0, 91),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    cursor: SystemMouseCursors.click,
                    onExit: (event) {
                      isHower = false;
                      setState(() {});
                    },
                    onHover: (event) {
                      isHower = true;
                      setState(() {});
                    },
                  ),
                ),
              )
            ]),
            Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
          // Colors.brown,
          // Colors.green,
          // Colors.lightBlue,
          // Colors.lightBlue,
          // Colors.yellowAccent,
          Colors.white, Colors.white60, Colors.white60,Colors.white60, Colors.white60,Colors.white,
        ])),
                alignment: Alignment.center,
                // color: const Color.fromARGB(255, 255, 255, 255),
                width: MediaQuery.of(context).size.width,
                height: 350,
                child: Padding(
                  padding: const EdgeInsets.only(left: 100, right: 100),
                  child: Column(children: [
                    Text(
                      'CONTACT',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                          color: Color.fromARGB(255, 0, 0, 0),
                          shadows: [
                            Shadow(
                                color: Colors.black.withOpacity(0.3),
                                offset: Offset(4, 4),
                                blurRadius: 8)
                          ]),
                    ),
                    TextFormField(
                      style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                      cursorColor: const Color.fromARGB(255, 0, 0, 0),
                      cursorHeight: 1,
                      cursorWidth: 1,
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0))),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0))),
                          labelText: 'NAME',
                          labelStyle: TextStyle(
                              color: const Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                        style: TextStyle(color: Colors.white),
                        cursorColor: const Color.fromARGB(255, 10, 10, 10),
                        cursorHeight: 1,
                        cursorWidth: 1,
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: const Color.fromARGB(255, 0, 0, 0))),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: const Color.fromARGB(255, 11, 11, 11))),
                          labelText: 'EMAIL',
                          labelStyle: TextStyle(
                              color: const Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.bold),
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                        style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
                        cursorColor: const Color.fromARGB(255, 15, 15, 15),
                        cursorHeight: 1,
                        cursorWidth: 1,
                        decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: const Color.fromARGB(255, 0, 0, 0))),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: const Color.fromARGB(255, 0, 0, 0))),
                            labelText: 'MOBILE NUMBER',
                            labelStyle: TextStyle(
                                color: const Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.bold))),
                    SizedBox(
                      height: 20,
                    ),
                    MouseRegion(
                      child: Container(
                        width: 150,
                        height: 50,
                        decoration: BoxDecoration(
                            color:
                                isHower5 ? (Colors.blueAccent) : Colors.white,
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              color: isHower5
                                  ? Colors.white
                                  : Color.fromARGB(255, 14, 0, 91),
                            )),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('SUBMIT',
                                style: GoogleFonts.getFont('Poppins',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: isHower5
                                        ? Colors.white
                                        : Color.fromARGB(255, 14, 0, 91)
                                            .withOpacity(0.7))),
                          ],
                        ),
                      ),
                      cursor: SystemMouseCursors.click,
                      onExit: (event) {
                        isHower5 = false;
                        setState(() {});
                      },
                      onHover: (event) {
                        isHower5 = true;
                        setState(() {});
                      },
                    )
                  ]),
                ))
          ],
        ),
      ),
    ));
  }
}
