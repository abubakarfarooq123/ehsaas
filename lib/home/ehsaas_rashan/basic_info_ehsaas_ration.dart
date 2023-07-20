import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
class Ehsaas_Ration_Info extends StatefulWidget {
  const Ehsaas_Ration_Info({super.key});

  @override
  State<Ehsaas_Ration_Info> createState() => _Ehsaas_Ration_InfoState();
}

class _Ehsaas_Ration_InfoState extends State<Ehsaas_Ration_Info> with SingleTickerProviderStateMixin {
  AnimationController? _animationController;
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
    )..addListener(() {
      setState(() {}); // Trigger rebuild when animation value changes
    })..repeat(reverse: true);
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
        title: Text("احساس راشن پروگرام",style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 23,
            fontWeight: FontWeight.bold
        ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,color: Colors.white,size: 30,),
          onPressed: (){
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
                child: Text("Ehsaas Rashan Program:",style: GoogleFonts.poppins(
                    color:  Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0,right: 18,top: 10),
              child: Text(
                "The Rashan Program, also known as the Ehsas Ration Program, is a significant initiative by the Benazir Income Support Programme (BISP) in Pakistan. This program aims to provide essential food items to vulnerable families in order to alleviate poverty and ensure their well-being. In a recent 4500 Rashan Program New Update Today 2023, the program has expanded to include 4500 additional beneficiaries, further extending its reach and impact.",
                textAlign: TextAlign.justify,
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    wordSpacing: -2
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: AlignmentDirectional.centerStart,
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text("Criteria and Selection Process:",style: GoogleFonts.poppins(
                    color:  Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0,right: 18,top: 10),
              child: Text(
                "To determine eligibility for the Rashan Program, a comprehensive selection process is followed. The program targets families living below the poverty line, assessing their income, assets, and other socioeconomic factors. The selection process ensures that the most deserving families are included in the program, enabling them to benefit from the support it provides.",
                textAlign: TextAlign.justify,
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    wordSpacing: -2
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: AlignmentDirectional.centerStart,
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text("Food Items Include:",style: GoogleFonts.poppins(
                    color:  Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0,right: 18,top: 10),
              child: Text(
                "Wheat flour, rice, lentils, cooking oil, sugar, and tea.  The program aims to alleviate the burden of purchasing basic food necessities for struggling households, allowing them to allocate their limited resources towards other essential needs.",
              textAlign: TextAlign.justify,
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 18, top: 20,bottom: 10),
              child: Text(
                "For more details you can visit our Website:",
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
                String groupLink = 'https://8171ehsaasprogram25000bisp.online/4500-rashan-program-new-update-today-2023-bisp-9000-ehsas-ration-program/';
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
                    Text("احساس راشن پروگرام",style: GoogleFonts.poppins(
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
