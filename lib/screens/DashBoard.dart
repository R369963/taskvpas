import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../utils/CirclePainter.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  var height,width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return   Scaffold(

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.indigoAccent.shade400,
        leading: const Icon(Icons.menu_outlined,
            size: 30,
        color: Colors.white),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Icon(Icons.notifications,color: Colors.white),
          )
        ],
      ),
      body: SingleChildScrollView(

        child: Padding(
          padding:EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [
              vSpace(10.0),
              Container(
                width: width,
                height: 190,
                child: ListView.builder(itemBuilder:(context, index) {
                  return  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width:width/1.1,
                      height: 170,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [BoxShadow(
                              color: Colors.grey,
                              blurRadius: 1,
                              spreadRadius: 1
                          )],
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              width:width,
                              height: 35,
                              decoration: BoxDecoration(
                                  color: Colors.cyan.shade50,

                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Text("Pre Admission",
                                      style: TextStyle(
                                          color: Colors.green
                                      ),),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                    child: Container(
                                      width: 90,
                                      height: 30,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(30),
                                          color: Colors.white
                                      ),
                                      child: Center(child: Text("2023 -2024")),
                                    ),
                                  ),

                                ],
                              )
                          ),
                          vSpace(10.0),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  width: 100,
                                  height: 100,
                                  child: CustomPaint(
                                    painter: CirclePainter(
                                      percentage1: 198,
                                      percentage2: 00,
                                      percentage3: 198,
                                    ),
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  Wrap(
                                    crossAxisAlignment: WrapCrossAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 100,
                                        child: Wrap(

                                          alignment: WrapAlignment.center,
                                          children: [
                                            Align(
                                              alignment: Alignment.center,
                                              child: RichText(text:TextSpan(
                                                  children: [
                                                    WidgetSpan(child:Padding(
                                                      padding: const EdgeInsets.only(right: 5),
                                                      child: Icon(FontAwesomeIcons.circleDot,size: 16,
                                                        color: Colors.brown,
                                                      ),
                                                    )),
                                                    TextSpan(text:"Registerd",style: TextStyle(color: Colors.black,))
                                                  ]
                                              )),
                                            ),
                                            hSpace(5.0),
                                            Text("198")
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 100,
                                        child: Wrap(

                                          alignment: WrapAlignment.center,
                                          children: [
                                            Align(
                                              alignment: Alignment.center,
                                              child: RichText(text:TextSpan(
                                                  children: [
                                                    WidgetSpan(child:Padding(
                                                      padding: const EdgeInsets.only(right: 5),
                                                      child: Icon(FontAwesomeIcons.circleDot,size: 16,
                                                        color: Colors.red,
                                                      ),
                                                    )),
                                                    TextSpan(text:"Paid",style: TextStyle(color: Colors.black,))
                                                  ]
                                              )),
                                            ),
                                            hSpace(5.0),
                                            Text("198")
                                          ],
                                        ),
                                      ),

                                    ],
                                  ),
                                  vSpace(10.0),
                                  SizedBox(
                                    width: 100,
                                    child: Wrap(

                                      alignment: WrapAlignment.center,
                                      children: [
                                        Align(
                                          alignment: Alignment.center,
                                          child: RichText(text:TextSpan(
                                              children: [
                                                WidgetSpan(child:Padding(
                                                  padding: const EdgeInsets.only(right: 5),
                                                  child: Icon(FontAwesomeIcons.circleDot,size: 16,
                                                      color: Colors.brown.shade400

                                                  ),
                                                )),
                                                TextSpan(text:"Confirmed",style: TextStyle(color: Colors.black,))
                                              ]
                                          )),
                                        ),
                                        hSpace(5.0),
                                        Text("198")
                                      ],
                                    ),
                                  ),
                                ],
                              ),



                            ],
                          ),

                        ],
                      ),
                    ),
                  );
                },
                itemCount: 3,
                scrollDirection: Axis.horizontal),
              ),

            vSpace(10.0),
               Text("Quick Search",
               style:GoogleFonts.jost(
                 fontSize:20,
                 fontWeight: FontWeight.w500
               ) ,),
                vSpace(10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  roleTab(Colors.pink.shade50,"Student",FontAwesomeIcons.graduationCap,width,Colors.purple),
                  roleTab(Colors.lightBlue.shade50,"Staff",FontAwesomeIcons.graduationCap,width,Colors.lightBlueAccent),

                ],
              ),
              vSpace(10.0),
              Text("Dashboard",
                style:GoogleFonts.jost(
                    fontSize:20,
                    fontWeight: FontWeight.w500
                ) ,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 dashItems(Colors.pink.shade50,"Fees Details",FontAwesomeIcons.fileLines,width,Colors.pink.shade400),
                  dashItems(Color.fromRGBO(203, 150, 239, 1.0),"Student BirthDay",FontAwesomeIcons.cakeCandles,width,Colors.white),
                  dashItems(Color.fromRGBO(150, 196, 239, 1.0),"COE Report",FontAwesomeIcons.file,width,Colors.red),
                 dashItems(Color.fromRGBO(150, 239, 151, 1.0),"Salary Details",FontAwesomeIcons.cakeCandles,width,Colors.white),

          ],
             ),
              vSpace(10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  dashItems(Colors.white60,"Employees Details",FontAwesomeIcons.personChalkboard,width,Colors.blue.shade400),
                  dashItems(Color.fromRGBO(134, 231, 151, 1.0),"Overall Fee",FontAwesomeIcons.fileLines,width,Colors.limeAccent),
                  dashItems(Color.fromRGBO(239, 135, 117, 1.0),"COE Report",FontAwesomeIcons.file,width,Colors.amberAccent),
                  dashItems(Color.fromRGBO(208, 227, 245, 1.0),"Salary Details",FontAwesomeIcons.cakeCandles,width,Colors.green),
                ],
              ),
              vSpace(10.0),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  dashItems(Colors.yellow.shade100,"Student",FontAwesomeIcons.graduationCap,width,Colors.green.shade400),
                  dashItems(Colors.brown,"Salary Slip",FontAwesomeIcons.fileLines,width,Colors.white),
                  dashItems(Colors.purpleAccent,"Staff Notice Board",FontAwesomeIcons.fileLines,width,Colors.cyanAccent),
                  dashItems(Colors.green,"Punch Report",FontAwesomeIcons.fingerprint,width,Colors.white),

                ],
              ),
              vSpace(10.0)
            ],
          ),
        ),
      ),
    );
  }



  Widget roleTab(Color bgcolor,String name, IconData icon, width,Color iconBgColor){
    return Container(
      width: width/2.25,
      height: 50,
      decoration: BoxDecoration(
        color: bgcolor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow:[BoxShadow(color: Colors.grey.shade100,blurRadius: 1)]
      ),
      child: Row(
        children: [
         Card(

           child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: Center(
               child: Icon(FontAwesomeIcons.graduationCap,color: Colors.white,
               size: 14,),

             ),
           ),
           shape: CircleBorder(),
           color:iconBgColor,
         ),
          SizedBox(width: 8,),
          Text(name,style: GoogleFonts.jost(
            fontSize: 18,
            fontWeight: FontWeight.w400,

          ),)
        ],
      ),
    );
  }
  Widget dashItems(Color bgcolor,String name, IconData icon, width,Color iconBgColor)
  {
    return InkWell(
      
      onTap: (){},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(

            child: Padding(
              padding:   EdgeInsets.all(14.0),
              child: Center(
                child: Icon(icon,color:  iconBgColor,
                  size: 24,),

              ),
            ),
            shape: CircleBorder(),
            color:bgcolor,
          ),
          vSpace( 5.0,),
          SizedBox(
            width: 80,
            height: 44,
            child: Center(
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  name,style: GoogleFonts.jost(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                    height: 1,

                ),
                maxLines: 2,
                textAlign: TextAlign.center,),
              ),
            ),
          )
        ],
      ),
    );
  }

}











Widget vSpace(height){
  return SizedBox(height: height,);
}
Widget hSpace(width){
  return SizedBox(height: width,);
}




