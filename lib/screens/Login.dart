import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task/screens/DashBoard.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var height, width;
  bool passwordVisible = false;
  bool checkBox = false;
  TextEditingController passwordText = TextEditingController();
  TextEditingController userID = TextEditingController();

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Image.asset(
              'images/a_dot_burr.jpg',
              height: height,
              width: width,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20))),
                width: width,
                height: height / 1.5,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "St. James School",
                          style: GoogleFonts.jost(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        vSpace(10.0),
                        Text("Login",
                            style: GoogleFonts.jost(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        vSpace(10.0),
                        Text("USER ID",
                            style: GoogleFonts.jost(
                                fontSize: 14, fontWeight: FontWeight.w400)),
                        vSpace(5.0),
                        Container(
                          width: width,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(184, 211, 236, 1.0),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: TextField(
                              controller: userID,
                              decoration: InputDecoration(
                                  hintText: "User Id",
                                  border: InputBorder.none,
                                  prefixIcon:
                                      Icon(Icons.person_outline_outlined)),
                            ),
                          ),
                        ),
                        vSpace(30.0),
                        Text("PASSWORD",
                            style: GoogleFonts.jost(
                                fontSize: 14, fontWeight: FontWeight.w400)),
                        vSpace(5.0),
                        Container(
                          width: width,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(184, 211, 236, 1.0),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: TextField(
                              controller: passwordText,
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: passwordVisible,
                              decoration: InputDecoration(
                                  hintText: "Passwords",
                                  border: InputBorder.none,
                                  prefixIcon: Icon(Icons.lock),
                                  suffixIcon: InkWell(
                                      onTap: () {
                                        setState(() {
                                          passwordVisible = !passwordVisible;
                                        });
                                      },
                                      child: Icon(passwordVisible
                                          ? Icons.visibility
                                          : Icons.visibility_off))),
                            ),
                          ),
                        ),
                        vSpace(15.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "FORGOT PASSWORD ?",
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                              ),
                            )
                          ],
                        ),
                        vSpace(10.0),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: RichText(
                              text: TextSpan(children: [
                            WidgetSpan(
                                child:InkWell(
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Icon(checkBox
                                        ? Icons.check_box_outline_blank
                                        : Icons.check_box,color:Colors.blue,size: 20,),
                                  ),
                                  onTap: (){
                                    setState((){
                                      checkBox =!checkBox;
                                    });

                                  },
                                )),

                                TextSpan(text:"i agree to all your",style: TextStyle(
                                  color: Colors.black

                                )),
                                TextSpan(text:" T&C ",style: TextStyle(
                                  fontWeight: FontWeight.bold,color:Colors.black
                                )),
                                TextSpan(text:" and ",style: TextStyle(
                                    color: Colors.black
                                )),
                                TextSpan(text:" Privacy Policy ",style: TextStyle(
                                    fontWeight: FontWeight.bold,color:Colors.black
                                )),
                              ])),
                        ),
                        vSpace(50.0),
                        Center(
                          child: MaterialButton(onPressed:(){
                         print("${userID.text}${passwordText.text}");
                         if(userID.text.isNotEmpty && passwordText.text.isNotEmpty) {
                           Navigator.push(context, MaterialPageRoute(
                             builder: (context) => DashBoard(),));
                         }else{
                           SnackBar(content:Text("Please enter your userID and password "));
                           Navigator.push(context, MaterialPageRoute(
                             builder: (context) => DashBoard(),));
                         } },
                            child: Text("Login",style: TextStyle(
                              color: Colors.white,
                              fontSize: 16
                            )),
                          height: 50,
                          minWidth:150,
                            color: Color.fromRGBO(66, 75, 238, 1.0),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
