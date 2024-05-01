
import 'package:assignment_25_ui/Screens/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({super.key});

  @override
  State createState() => _VerificationPageState();
}

class _VerificationPageState extends State {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            GestureDetector(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const LoginPage()));
              },
              child: const Icon(Icons.arrow_back,color:const Color.fromRGBO(0, 0, 0, 1)),
            ),
            const SizedBox(height: 50),
            Text(
              "Verification",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w700,
                fontSize:20,
                color:const Color.fromRGBO(0, 0, 0, 1)
              ),
            ),
            Text(
              "Enter the OTP code from the phone we ",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                fontSize:14,
                color:const Color.fromRGBO(0, 0, 0, 0.6)
              ),
            ),
            Text(
              "just sent you.",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                fontSize:14,
                color:const Color.fromRGBO(0, 0, 0, 0.6)
              ),
            )
          ],
        ),
      ),
    );
  }
}