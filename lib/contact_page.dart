import 'package:contact_page_responsive/responsive.dart';
import 'package:contact_page_responsive/screen/directstores/direct_stores_page.dart';
import 'package:contact_page_responsive/screen/footer/con_page.dart';
import 'package:contact_page_responsive/screen/footer/footer_page.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    child: Image.asset(
                      "assets/images/banner.jpg",
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Contact us ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: isDesktop(context) ? 40 : 16,
                                color: Colors.white
                              ),
                            ),
                            SizedBox(height: 14,),
                            Text(
                              'National Hotline: 092-246-1255',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: isDesktop(context) ? 34 : 14,
                                color: Colors.white
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text(
                    '15 offline direct stores',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: isDesktop(context) ? 30 : 14,
                      color: Colors.black87
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Container(
                  height: MediaQuery.of(context).size.height *0.65,
                  child: DirectStoresPage(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Container(
                  child: ConPage(),
                ),
              ),
              Container(
                color: Colors.grey,
                child: FooterPage(),
              ),
              
              Container(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      "Copyrights © 2020 All Rights Reserved by Disraptor DISRAPTOR CO., LTD.", 
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey
                        ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}