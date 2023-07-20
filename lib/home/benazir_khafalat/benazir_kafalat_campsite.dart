import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
class Kafalat_Campsite extends StatefulWidget {
  const Kafalat_Campsite({super.key});

  @override
  State<Kafalat_Campsite> createState() => _Kafalat_CampsiteState();
}

class _Kafalat_CampsiteState extends State<Kafalat_Campsite> with SingleTickerProviderStateMixin {
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
        title: Text("Benazir Kafalat Campsite",style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600
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
                child: Text("Benazir Kafalat Campsite:",style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0,right: 25,top: 10),
              child: Text(
                "To streamline the payment process and ensure accessibility these campsite has been set up. These campsites have necessary infrastructure and staff have facility to disburse payment efficiently.",
                textAlign: TextAlign.justify,
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 15,
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
                child: Text("Check BISP Payment:",style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0,right: 25,top: 10),
              child: Text(
                "To check your Benazir Kafalat Campsite Ehsaas 8171, follow the steps outlined below:",
                textAlign: TextAlign.justify,
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,

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
                    const EdgeInsets.only(left: 5.0, right: 25, top: 8),
                    child:
                        Text(
                          "Step 1: Dial Ehsaas 8171 Helpline Using your mobile phone, dial the helpline number “8171” to access the Ehsaas helpline service.",
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 15,
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
                    const EdgeInsets.only(left: 5.0, right: 25, top: 8),
                    child:
                    Text(
                      "Step 2: Provide the Required Information Follow the voice prompts and provide the necessary information, including your CNIC number, when prompted. Ensure that you have your CNIC readily available.",

                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 14.5,
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
                    const EdgeInsets.only(left: 5.0, right: 25, top: 8),
                    child:
                    Text(
                      "Step 3: Receive Payment Confirmation After entering your CNIC number, you will receive an SMS notification confirming the status of your BISP payment. If your payment is due and has been processed, the message will provide details on the payment amount and the location of the Benazir Kafalat Campsite where you can collect your payment.",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: AlignmentDirectional.centerStart,
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text("Benefits of Campsite:",style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0,right: 25,top: 10),
              child: Text(
                "The introduction of the payment check system has several benefits for BISP beneficiaries, including:",
                textAlign: TextAlign.justify,
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
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
                    const EdgeInsets.only(left: 5.0, right: 5, top: 8),
                    child:
                    Text(
                      "Convenient access to payment information through the Ehsaas helpline.",
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
                    child:
                    Text(
                      "Streamlined payment collection process at designated campsites.",
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
                    child:
                    Text(
                      "Reduction of fraudulent activities and improved transparency in payment disbursement.",
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
                    child:
                    Text(
                      "Greater financial inclusion and empowerment of vulnerable households.",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 13.5,
                      ),
                    ),

                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
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
                String groupLink = 'https://8171ehsaasprogram25000bisp.online/9000-bisp-payment-check-by-cnic-benazir/';
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
                    Text("بینظیر کفالت کیمپ سائٹ",style: GoogleFonts.poppins(
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
