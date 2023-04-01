import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Card',
          style: myStyle(20, Colors.black, FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.30,
          width: MediaQuery.of(context).size.width * 0.70,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.transparent, Colors.white, Colors.blue]),
              border: Border.all(
                  width: 2, style: BorderStyle.solid, color: Colors.white10)),
          child: Row(
            children: [
              Expanded(
                child: Container(
                    padding: EdgeInsets.only(
                      top: 42,bottom: 10,left: 4
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(1000),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Rabeya Sultana Mou',
                              style:
                                  myStyle(18, Colors.black, FontWeight.normal),
                            ),
                            Text('All Rounder',
                                style: myStyle(
                                    14, Colors.black, FontWeight.normal))
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                           Row(children: [Icon(Icons.location_on_rounded, size: 15),
                               Text('  Mirpur-6,Dhaka',
                                  style: myStyle(
                                      12, Colors.black, FontWeight.normal))
                               ],),
                           Row(children: [Icon(Icons.call, size: 15),
                               Text('  01610091996',
                                  style: myStyle(
                                      12, Colors.black, FontWeight.normal))
                               ],),
                           Row(children: [Icon(Icons.mail, size: 15),
                               Text('  rabeyasultanamou@gmail.com',
                                  style: myStyle(
                                      12, Colors.black, FontWeight.normal))
                               ],),
                          ],
                        )
                      ],
                    )),
                flex: 7,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border(left: BorderSide(color: Colors.transparent)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          'https://scontent.fdac24-4.fna.fbcdn.net/v/t1.6435-9/35412022_1744987608929637_5005037432840650752_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=0debeb&_nc_eui2=AeH4VyIXE4rRnOTdyEPTRXyI_cAjf1SAaK39wCN_VIBorZwozr775B8r2O9WH8eSnuO2SSmMjvRzcSnxMCkDstOx&_nc_ohc=uuN4Rs07jR8AX_aPl-h&_nc_ht=scontent.fdac24-4.fna&oh=00_AfARKOF8wqWQG7UBLRjtHyxGVTMuhEt42dC7NDSwJdMVOQ&oe=644EAC31',
                        ),
                        radius: 40,
                      ),
                      Text(
                        "Mou's Academy",
                        style: myStyle(10, Colors.white, FontWeight.w600),
                      )
                    ],
                  ),
                ),
                flex: 3,
              )
            ],
          ),
        ),
      ),
    );
  }
}

myStyle(double size, Color clr, FontWeight fontWeight) {
  return TextStyle(fontSize: size, color: clr, fontWeight: fontWeight);
}




 /*ListTile(
                              leading:
                                  Icon(Icons.location_on_rounded, size: 15),
                              title: Text('Mirpur-6,Dhaka',
                                  style: myStyle(
                                      12, Colors.black, FontWeight.normal)),
                            ),
                            ListTile(
                              leading: Icon(Icons.call, size: 15),
                              title: Text('01610091996',
                                  style: myStyle(
                                      12, Colors.black, FontWeight.normal)),
                            ),
                            ListTile(
                              leading: Icon(Icons.message, size: 15),
                              title: Text('rabeyasultanamou@gmail.com',
                                  style: myStyle(
                                      12, Colors.black, FontWeight.normal)),
                            ),*/