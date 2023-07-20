import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
class BISP_Bank extends StatefulWidget {
  const BISP_Bank({super.key});

  @override
  State<BISP_Bank> createState() => _BISP_BankState();
}

class _BISP_BankState extends State<BISP_Bank>  with SingleTickerProviderStateMixin {
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
      appBar: AppBar(
        backgroundColor: CupertinoColors.systemGreen,
        centerTitle: true,
        title: Text("BISP Bank Detail",style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 20,
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
                child: Text("Importance of BISP Bank Accounts:",
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0,right: 25,top: 10),
              child: Text(
                "BISP bank accounts play a crucial role in the effective implementation of the program. These accounts ensure transparent and efficient disbursement of financial assistance to beneficiaries. 36000 Open BISP Bank Account 8171 with the identification number 8171 facilitates the seamless transfer of funds to eligible individuals.",
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
                child: Text("Process of Opening a BISP Bank Account:",style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0,right: 25,top: 10),
              child: Text(
                "To open a BISP bank account, follow these steps:",
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
                  padding: const EdgeInsets.only(left: 20),
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
                    child:Text(
                          "Visit the nearest designated bank branch authorized by BISP.",

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
                  padding: const EdgeInsets.only(left: 20),
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
                    child:Text(
                      "Fill out the account opening form, providing accurate personal information.",
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
                  padding: const EdgeInsets.only(left: 20),
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
                    child:Text(
                      "Submit the necessary documents, including your national identity card (CNIC) and BISP enrollment slip.",
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
                  padding: const EdgeInsets.only(left: 20),
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
                    child:Text(
                      "Once the account is successfully opened, you will receive your BISP bank account number and other relevant details.",
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
              height: 25,
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
                String groupLink = 'https://8171ehsaasprogram25000bisp.online/36000-open-bisp-bank-account-8171-benazir-8171-bisp-benazir-8171-bisp-8171/';
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
