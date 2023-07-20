import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Ehsaas_Card extends StatefulWidget {
  const Ehsaas_Card({super.key});

  @override
  State<Ehsaas_Card> createState() => _Ehsaas_CardState();
}

class _Ehsaas_CardState extends State<Ehsaas_Card>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
    )
      ..addListener(() {
        setState(() {}); // Trigger rebuild when animation value changes
      })
      ..repeat(reverse: true);
  }

  @override
  void dispose() {
    _animationController!.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: CupertinoColors.systemGreen,
        centerTitle: true,
        title: Text(
          "احساس کارڈ",
          style: GoogleFonts.poppins(
              color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              alignment: AlignmentDirectional.centerStart,
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text("Ehsaas Card:",style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0,right: 25,top: 10),
              child: Text(
                "The Ehsaas Rashan Card is an initiative by the Government of Pakistan to provide essential food supplies to deserving families.",
                textAlign: TextAlign.justify,
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    wordSpacing: -2
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 25.0,right: 25,top: 10),
              child: Text(
                "There are some steps that you need to follow to apply for Ehsaas Card.",
                textAlign: TextAlign.justify,
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    wordSpacing: -2
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0,right: 25,top: 10),
              child: Text(
                "Once you have gathered the required documents, follow the steps below to complete your registration for the Benazir Income Support Program :",
                textAlign: TextAlign.justify,
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    wordSpacing: -1
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    "\u2022",
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                    const EdgeInsets.only(left: 5.0, right: 5, top: 6),
                    child: Column(
                      children: [
                        Text(
                          "Visit the Ehsaas Rashan Program Portal.",
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () async {
                            String groupLink = 'https://8171ehsaasprogram25000bisp.online/';
                            await launch(groupLink);
                            throw 'Could not launch $groupLink';
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.blue, // Color of the underline
                                  width: 2.0, // Width of the underline
                                ),
                              ),
                            ),
                            child: Text(
                              "Ehsaas Rashan Card",
                              style: GoogleFonts.poppins(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    "\u2022",
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                    const EdgeInsets.only(left: 5.0, right: 5, top: 8),
                    child: Text(
                      "Online Registration.",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),

                  ),
                ),
              ],
            ),

            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    "\u2022",
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                    const EdgeInsets.only(left: 5.0, right: 5, top: 8),
                    child: Text(
                      "Download the Application Program.",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),

                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    "\u2022",
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                    const EdgeInsets.only(left: 5.0, right: 5, top: 8),
                    child: Text(
                      "Fill in the Ehsaas Rashan Form.",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),

                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    "\u2022",
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                    const EdgeInsets.only(left: 5.0, right: 5, top: 8),
                    child: Text(
                      "Submitting the Application.",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),

                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18, top: 20,bottom: 10),
              child: Text(
                "The complete process is explained on our website you can visit it here:",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () async{
                String groupLink = 'https://8171ehsaasprogram25000bisp.online/how-to-check-and-apply-for-ehsaas-rashan-card-online-2023-24-%d8%a7%d8%ad%d8%b3%d8%a7%d8%b3-%d8%b1%d8%a7%d8%b4%d9%86-%d8%b1%d8%b9%d8%a7%db%8c%d8%aa-%d9%88%db%8c%d8%a8-%d9%be%d9%88%d8%b1%d9%b9%d9%84/';
                await launch(groupLink);
                throw 'Could not launch $groupLink';
              },
              child: Container(
                height: 60,
                width: 270,
                decoration: BoxDecoration(
                    color: CupertinoColors.systemGreen
                ),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [


                    Padding(
                      padding: const EdgeInsets.only(top: 7),
                      child:  AnimatedOpacity(
                        opacity: _animationController!.value,
                        duration: Duration(milliseconds: 500),
                        child:  Icon(
                          Icons.arrow_back,
                          size: 25,
                          color: Colors.white.withOpacity(_animationController!.value),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("احساس پروگرام کارڈ",style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                    ),
                  ],
                ),

              ),
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
