
import 'package:assignment_25_ui/Screens/verification_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State createState() => _LoginPageState();
}

class _LoginPageState extends State {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromRGBO(255, 255, 255, 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/img login 1.png",color: const Color.fromRGBO(204, 211, 196, 1),height: 128.2
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: Text(
                      "Log in",
                      style: GoogleFonts.poppins(
                        fontSize:30,
                        fontWeight:FontWeight.w600,
                        color:const Color.fromRGBO(0, 0, 0, 1)
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  TextFormField(
                    keyboardType: TextInputType.phone,
                    decoration:InputDecoration(
                      disabledBorder: InputBorder.none,
                      hintText: "Mobile Number",
                      hintStyle: GoogleFonts.inter(
                        color:const Color.fromRGBO(164, 164, 164, 1),
                        fontSize:13
                      ),
                      prefixIcon: const Icon(Icons.call, color:Color.fromRGBO(164, 164, 164, 1),size: 17,),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      )
                    ),
                  ),
                  const SizedBox(height: 30),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const VerificationPage()));
                    },
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width*0.9,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        gradient: LinearGradient(
                          end: Alignment.topCenter,
                          begin: Alignment.bottomCenter,
                          colors: [
                            Color.fromRGBO(62, 102, 24, 1),
                            Color.fromRGBO(124, 180, 70, 1)
                          ]
                        )
                      ),
                      child: Center(
                        child: Text(
                          "Log in",
                          style: GoogleFonts.rubik(
                            fontSize:18,
                            color:const Color.fromRGBO(255, 255, 255, 1),
                            fontWeight:FontWeight.w500
                          ),
                        ),
                      ),
                    ),
                  ),
                  Image.asset(
                    "assets/login page 2.png",
                    height: MediaQuery.of(context).size.height * 0.43,
                  )
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}