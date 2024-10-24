import 'package:coffee_shop_ui/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Material(
      child: Container(
        padding: EdgeInsets.only(top: 100, bottom: 40),
        decoration: BoxDecoration(

          image: DecorationImage(
          image: AssetImage("images/bg_aa.png"),
            fit: BoxFit.cover,

          )),
            child:Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child: Text(
                    "Coffee Shop",
                    style: GoogleFonts.pacifico(
                      fontSize: 50,
                      color: Colors.white,
                     height: 1,
                    ),
                  ),
                ),

                Column(
                  children: [
                    Text('Feeling Low? Take a Sip of Coffee',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1,
                      ),
                    ),
                    SizedBox(height: 40),
                    Material(
                      color: Color(0xFFE57734),
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        splashColor: Colors.black,
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                          ));
                        },
                        child: Container(
                          padding:
                               EdgeInsets.symmetric(vertical: 15, horizontal: 60),
                          decoration: BoxDecoration(
                            color: Color(0xFF3B2A24),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                              'Get Start',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      }
    }