import 'package:ehsaas/home/benazir/benazir_income_home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
class Baisc_Info_Benazir extends StatefulWidget {
  const Baisc_Info_Benazir({super.key});

  @override
  State<Baisc_Info_Benazir> createState() => _Baisc_Info_BenazirState();
}

class _Baisc_Info_BenazirState extends State<Baisc_Info_Benazir> with SingleTickerProviderStateMixin {
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
        title: Text("ینظیر انکم سپورٹ پروگرام",style: GoogleFonts.poppins(
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
                child: Text("Benazir Program:",style: GoogleFonts.poppins(
                  color:  Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0,right: 18,top: 10),
              child: Text(
                  "The Benazir Program 8171 is an integral component of the Ehsaas Program 2023. It serves as a digital solution to streamline the process of identifying eligible beneficiaries and ensuring efficient delivery of social assistance. The Benazir Income Support Program (BISP) has announced a new update today regarding the implementation of the Benazir Program 8171 and Ehsaas Program 2023. The BISP has been at the forefront of poverty alleviation efforts in the country, aiming to provide financial assistance and social protection to vulnerable segments of society.",
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
                padding: const EdgeInsets.only(left: 18),
                child: Text("What it provides?",style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
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
                    const EdgeInsets.only(left: 5.0, right: 15, top: 8),
                    child: Text(
                      "The Benazir Program 8171 and Ehsaas Program 2023 aims to expand social safety nets to cover a larger proportion of the population. By providing financial assistance, healthcare, education, and other essential services, the program seeks to uplift marginalized segments of society and reduce poverty.",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
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
                    const EdgeInsets.only(left: 5.0, right: 15, top: 8),
                    child: Text(
                      "Recognizing the crucial role of women in poverty alleviation, the Benazir Program 8171 and Ehsaas Program 2023 emphasizes gender equality and women’s empowerment. Special initiatives and provisions have been made to facilitate women’s economic participation, skill development, and access to resources.",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
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
                    const EdgeInsets.only(left: 5.0, right: 15, top: 8),
                    child: Text(
                      "To ensure the success and effectiveness of the Benazir Program 8171 and Ehsaas Program 2023, the government is actively engaging with various stakeholders, including NGOs, civil society organizations, and private sector entities. This collaborative approach aims to leverage expertise and resources to maximize the program’s impact.",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 13,
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
                String groupLink = 'https://8171ehsaasprogram25000bisp.online/bisp-new-update-today-benazir-program-8171-and-ehsaas-program-2023/';
                await launch(groupLink);
                throw 'Could not launch $groupLink';
              },
              child: Container(
                height: 60,
                width: 220,
                decoration: BoxDecoration(
                    color: CupertinoColors.systemGreen
                ),
                child: Center(
                  child: Row(
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
                      Text("بینظیر پروگرام",style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                      ),
                    ],
                  ),
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
