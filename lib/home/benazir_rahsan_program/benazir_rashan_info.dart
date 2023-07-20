import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
class Benazir_Ration_Info extends StatefulWidget {
  const Benazir_Ration_Info({super.key});

  @override
  State<Benazir_Ration_Info> createState() => _Benazir_Ration_InfoState();
}

class _Benazir_Ration_InfoState extends State<Benazir_Ration_Info> with SingleTickerProviderStateMixin {
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
        title: Text("بینظیر راشن پروگرام",style: GoogleFonts.poppins(
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
                child: Text("Benazir Rashan Program:",style: GoogleFonts.poppins(
                    color:  Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 25, top: 10),
              child: Text(
                "The benazir income support has made a new update known as 'Benazir Rashan Start.' It aims to provide ration and financial aids to deserving families.",
                textAlign: TextAlign.justify,
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 17,
                  wordSpacing: -2
                ),
                textScaleFactor: 1.0, // Adjust this value as needed
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: AlignmentDirectional.centerStart,
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text("EHSAAS New Payment Method:",style: GoogleFonts.poppins(
                    color:  Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0,right: 18,top: 10),
              child: Text(
                "Under the EHSAAS initiative, BISP has introduced a new payment method as part of the Benazir Rashan Start update. This method ensures that financial assistance reaches beneficiaries directly through their bank accounts, enhancing the efficiency of the payment process.",
                textAlign: TextAlign.justify,
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 16,
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
                child: Text("Importance of BISP Bank:",style: GoogleFonts.poppins(
                    color:  Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0,right: 18,top: 10),
              child: Text(
                "Creating a bank account for BISP is of utmost importance to ensure the seamless receipt of financial assistance. By having a bank account, beneficiaries can receive their funds directly, eliminating the need for physical collection or dependence on intermediaries. This not only enhances transparency but also provides a convenient and secure means of accessing the support provided by BISP.",
                textAlign: TextAlign.justify,
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 17,
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
                String groupLink = 'https://8171ehsaasprogram25000bisp.online/big-update-benazir-rashan-start-ehsaas-introduces-9000-new-payment-method-how-to-create-a-bank-account-for-bisp/';
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
                    Text("بینظیر راشن پروگرام",style: GoogleFonts.poppins(
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
