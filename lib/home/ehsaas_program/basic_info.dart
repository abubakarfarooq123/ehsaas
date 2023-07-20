import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
class Basic_Info extends StatefulWidget {
  const Basic_Info({super.key});

  @override
  State<Basic_Info> createState() => _Basic_InfoState();
}

class _Basic_InfoState extends State<Basic_Info>
    with SingleTickerProviderStateMixin {
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
        title: Text(" احساس پروگرام 8171",style: GoogleFonts.poppins(
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
            Center(
              child: SizedBox(
                height: 40,
              ),
            ),
            Container(
              alignment: AlignmentDirectional.centerStart,
              child: Padding(
                padding: const EdgeInsets.only(left: 18),
                child: Text("Ehsaas Program 8171",style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0,right: 18,top: 10),
              child: Text("The beneficiaries of the Ehsaas Program 2023 can use online portal to check their Ehsaas Program Status using their CNIC number or Form Number. This app will guide you about How to check Program Status online using your CNIC number and get information about receiving money under the Ehsaas Kafalat Program or Ehsaas Emergency Cash Program.",
                textAlign: TextAlign.justify,
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 15,
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
            Padding(
              padding: const EdgeInsets.only(left: 18.0,right: 18,top: 10),
              child: Text("Ehsaas Emergency Cash Program and Ehsaas Kafalat Program are one of the biggest social protection programs in the country providing stipend of Rs. 14,000 to all deserving people. Since the start of the Ehsaas Program, there have been several initiatives introduced under this banner to help makes lives of poor and deserving people better, including introduction of Panagah’s and Langars along with kitchen on wheels known as the Koi Bhooka Na Soye Program.",
                textAlign: TextAlign.justify,
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 15,
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
                padding: const EdgeInsets.only(left: 18,),
                child: Text("How to check Ehsaas Kafaalat Program 2023 Eligibility",
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0,right: 18,top: 10),
              child: Text("If you want to know whether you are eligible for the Ehsaas Kafaalat Program 2022, please send your Computerized National Identity Card Number (CNIC) to 8171 and get a response regarding your eligibility.",
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
              padding: const EdgeInsets.only(left: 18.0,right: 18,top: 20),
              child: Text("مستحق گھرانےاحساس 8171سروس کے ذریعےاپنا قومی شناختی کارڈ نمبر8171پر بھیج کراحساس کفالت پروگرام میں اپنی اہلیت کےبارےمیں جان سکتےہیں۔اس ضمن میں مستحق گھرانوں کو احساس کی جانب سےمختلف طرح کے جوابی پیغامات بھجوائےجا رہےہیں۔",
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
                String groupLink = 'https://8171ehsaasprogram25000bisp.online/8171-bisp-card-start-8171-ehsaas-program-25000-bisp-ehsas-program-start/';
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 20,
                      ),

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
                      Text("احساس پروگرام",style: GoogleFonts.poppins(
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
