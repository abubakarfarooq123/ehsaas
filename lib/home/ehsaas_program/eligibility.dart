import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Criteria extends StatefulWidget {
  const Criteria({super.key});

  @override
  State<Criteria> createState() => _CriteriaState();
}

class _CriteriaState extends State<Criteria> with SingleTickerProviderStateMixin {
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
        title: Text(
          "Eligibility Check",
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
              height: 20,
            ),
            Container(
              alignment: AlignmentDirectional.centerStart,
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  "Eligibility Criteria:",
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18, top: 10),
              child: Text(
                "Before initiating the online registration, ensure that you meet the eligibility criteria established by 8171 Ehsaas Program 25000 BISP. The program primarily targets underprivileged families, widows, orphans, persons with disabilities, and individuals from marginalized communities.",
                textAlign: TextAlign.justify,
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    wordSpacing: -3),
              ),
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
                      "Step 1: Prepare Required Documents and Information: Gather the necessary documents and information for a smooth registration process. These typically include your CNIC (Computerized National Identity Card), family details, income information, and bank account details.",
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
                      "Step 2: Accessing the BISP 8171 Online Portal: Visit the official BISP website (insert website URL) and navigate to the BISP 8171 Online Registration section. Click on the registration link to proceed.",
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
                      "Step 3: Initiating the Registration Process: Click on the “New Registration” button to start the online registration process. You will direct to a page where you need to provide your CNIC number and contact information.",
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
                      "Step 4: Providing Personal Information: Fill in the required personal details accurately, including your name, date of birth, address, and mobile number. Double-check the information for any errors before proceeding.",
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
                      "Step 5: Household Information and Verification: Next, provide details about your household, including the number of family members, their names, CNIC numbers, and relationships. Verify the accuracy of the entered information to avoid any complications.",
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
                      "Step 5: Household Information and Verification: Next, provide details about your household, including the number of family members, their names, CNIC numbers, and relationships. Verify the accuracy of the entered information to avoid any complications.",
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
                      "Step 6: Bank Account Details: Enter your bank account details carefully, including the bank name, branch code, and account number. This information is crucial as it enables BISP to directly deposit financial assistance into your account.",
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
                      "Step 7: Submitting the Application: Review all the provided information to ensure accuracy. Once you are satisfied, submit the online application. You will receive a confirmation message or email acknowledging the successful submission of your registration.",
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
                String groupLink = 'https://8171ehsaasprogram25000bisp.online/';
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
