import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
class Kafalat_Info extends StatefulWidget {
  const Kafalat_Info({super.key});

  @override
  State<Kafalat_Info> createState() => _Kafalat_InfoState();
}

class _Kafalat_InfoState extends State<Kafalat_Info> with SingleTickerProviderStateMixin {
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
        title: Text("بینظیرکفالت پروگرام",style: GoogleFonts.poppins(
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
                child: Text("Benazir Kafalat Program:",style: GoogleFonts.poppins(
                    color:  Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0,right: 18,top: 10),
              child: Text(
                "The 8171 Benazir Kafalat Program, administered by the Ehsaas NADRA, is a groundbreaking initiative aimed at providing financial assistance to deserving individuals and families across Pakistan. This program has brought hope to countless vulnerable households by offering them financial aid to improve their quality of life. In a recent development, the Ehsaas NADRA has announced a new date for the program, ensuring that more people can avail of its benefits.",
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
                child: Text("Required Documents:",style: GoogleFonts.poppins(
                    color:  Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0,right: 18,top: 10),
              child: Text(
                "Applicants are required to submit specific documents for the eligibility. These documents includes proof of identity, income proof, residence proof.",
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
                child: Text("Application Process:",style: GoogleFonts.poppins(
                    color:  Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0,right: 18,top: 10),
              child: Text(
                "Applicants are required to submit specific documents for the the process that are mentioned above. Filling application, provide with necessary documents, and submittion are the basic steps to follow.",
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
            Padding(
              padding: const EdgeInsets.only(left: 18.0,right: 18,top: 10),
              child: Text(
                "If you want to get the complete detail of about the process or about necessary documents you can visit our offical website.",
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
            InkWell(
              onTap: () async{
                String groupLink = 'https://ehsaas8171program.online/';
                await launch(groupLink);
                throw 'Could not launch $groupLink';
              },
              child: Container(
                height: 60,
                width: 250,
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
                      Text("بینظیرکفالت پروگرام",style: GoogleFonts.poppins(
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