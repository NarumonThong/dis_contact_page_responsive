import 'package:flutter/material.dart';

class FooterPage extends StatelessWidget {
  const FooterPage({ Key? key }) : super(key: key);

  List<Widget> pageChildren(double width) {
    return <Widget>[
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Worry about decoration", style: TextStyle(fontWeight: FontWeight.bold),), 
                  SizedBox(height: 10,),
                  InkWell(
                    child: new Text("Choose a package", style: TextStyle(fontWeight: FontWeight.w500),), 
                    onTap: () {},
                  ),
                  SizedBox(height: 10,),
                  InkWell(
                    child: new Text("Online showroom", style: TextStyle(fontWeight: FontWeight.w500),), 
                    onTap: () {},
                  ),
                  SizedBox(height: 10,),
                  InkWell(
                    child: new Text("Renovation case", style: TextStyle(fontWeight: FontWeight.w500),), 
                    onTap: () {},
                  ),
                  SizedBox(height: 10,),
                  InkWell(
                    child: new Text("Effect map", style: TextStyle(fontWeight: FontWeight.w500),), 
                    onTap: () {},
                  ),
                  SizedBox(height: 10,),
                  InkWell(
                    child: new Text("Star designer", style: TextStyle(fontWeight: FontWeight.w500),), 
                    onTap: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Quality assurance", style: TextStyle(fontWeight: FontWeight.bold),), 
                  SizedBox(height: 10,),
                  InkWell(
                    child: new Text("Big brand building materials", style: TextStyle(fontWeight: FontWeight.w500),), 
                    onTap: () {},
                  ),
                  SizedBox(height: 10,),
                  InkWell(
                    child: new Text("Construction guarantee", style: TextStyle(fontWeight: FontWeight.w500),), 
                    onTap: () {},
                  ),
                  SizedBox(height: 10,),
                  InkWell(
                    child: new Text("Worry about service", style: TextStyle(fontWeight: FontWeight.w500),), 
                    onTap: () {},
                  ),
                  SizedBox(height: 10,),
                  InkWell(
                    child: new Text("Acceptance criteria", style: TextStyle(fontWeight: FontWeight.w500),), 
                    onTap: () {},
                  ),
                  SizedBox(height: 18,),
                  Text("Follow us", style: TextStyle(fontWeight: FontWeight.bold),), 
                  SizedBox(height: 10,),
                  InkWell(
                    child: new Text("Brand strength", style: TextStyle(fontWeight: FontWeight.w500),), 
                    onTap: () {},
                  ),
                  SizedBox(height: 10,),
                  InkWell(
                    child: new Text("Brand dynamics", style: TextStyle(fontWeight: FontWeight.w500),), 
                    onTap: () {},
                  ),
                  SizedBox(height: 10,),
                  InkWell(
                    child: new Text("A new home improvement experience", style: TextStyle(fontWeight: FontWeight.w500),), 
                    onTap: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Text("Public Number", style: TextStyle(fontWeight: FontWeight.bold),)), 
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Image.asset(
                "assets/images/01.png",
                width: width,
                height: 130,
              ),
            )
          ],
        ),
      ),
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Text("Home app", style: TextStyle(fontWeight: FontWeight.bold),)), 
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Image.asset(
                "assets/images/02.png",
                width: width,
                height: 130,
              ),
            )
          ],
        ),
      ),      
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(constraints.biggest.width / 4),
          );
        } else {
          return Column(
            children: pageChildren(constraints.biggest.width),
          );
        }
      },
    );
  }
}
