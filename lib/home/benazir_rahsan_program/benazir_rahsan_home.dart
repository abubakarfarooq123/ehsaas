import 'package:ehsaas/home/benazir_rahsan_program/BISP_bank.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import 'benazir_rashan_info.dart';

class Banazir_Rashan_Program extends StatefulWidget {
  const Banazir_Rashan_Program({super.key});

  @override
  State<Banazir_Rashan_Program> createState() => _Banazir_Rashan_ProgramState();
}

class _Banazir_Rashan_ProgramState extends State<Banazir_Rashan_Program> {
  @override
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
              height: 40,
            ),
            Center(
              child: InkWell(
                onTap: (){
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Benazir_Ration_Info()));
                },
                child: Container(
                  height: 45,
                  width: 270,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: CupertinoColors.systemGreen,
                  ),
                  child: Center(
                    child: Text("Basic Info.",style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () async{
                String groupLink = 'https://8171ehsaasprogram25000bisp.online/big-update-benazir-rashan-start-ehsaas-introduces-9000-new-payment-method-how-to-create-a-bank-account-for-bisp/';
                await launch(groupLink);
                throw 'Could not launch $groupLink';

              },
              child: Container(
                height: 45,
                width: 270,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: CupertinoColors.systemGreen,
                ),
                child: Center(
                  child: Text("Benazir Rashan Portal",style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: (){
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => BISP_Bank()));
              },
              child: Container(
                height: 45,
                width: 270,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: CupertinoColors.systemGreen,
                ),
                child: Center(
                  child: Text("BISP Bank Account",style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
