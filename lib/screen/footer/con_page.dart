import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ConPage extends StatelessWidget {
  const ConPage({ Key? key }) : super(key: key);

  void openUrl(String url) async {
      if(await canLaunch(url)){
        await launch(url);
      }else{
        throw 'could not open url';
      }
    }

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
                  Text("Contact us", style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 20),
                  ), 
                  SizedBox(height: 10,),
                  Text("Online consultation", style: TextStyle(
                    fontSize: 16),
                  ), 
                  SizedBox(height: 10,),
                  Text("Home improvement advice: 400-8613-880", style: TextStyle(
                    fontSize: 16),
                  ), 
                  SizedBox(height: 10,),
                  Text("Feedback: 400-0511-699", style: TextStyle(
                    fontSize: 16),
                  ), 
                  SizedBox(height: 10,),
                  Text("Feedback email: ikefu@ikognjian.com", style: TextStyle(
                    fontSize: 16),
                  ), 
                  SizedBox(height: 10,),
                  Text("Service hours: 9:00-18:00", style: TextStyle(
                    fontSize: 16),
                  ), 
                ],
              ),
            ),
          ],
        ),
      ),
      Container(
        // margin: new EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
        width: width,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
              child: InkWell(
                onTap: () {
                  openUrl('https://lin.ee/4eRkkBZDC');
                },
                child: Container(
                    // width: 20, height: 20,
                  child: Image.asset('assets/images/line.png',height: 40.0, width: 40.0,),
                ),
              ),
            ),
            SizedBox(width: 20,),
            Card(
              child: InkWell(
                onTap: () {
                  openUrl('https://de-de.facebook.com/pg/quickwashThailand/posts/?ref=page_internal');
                },
                child: Container(
                    // width: 20, height: 20,
                  child: Image.asset('assets/images/facebook.png',height: 40.0, width: 40.0,),
                ),
              ),
            ),
            SizedBox(width: 20,),
            Card(
              child: InkWell(
                onTap: () {
                  openUrl('https://www.youtube.com/channel/UCZzFbZIaX0KeaAxCgXc8gXw');
                },
                child: Container(
                    // width: 20, height: 20,
                  child: Image.asset('assets/images/youtube.png',height: 40.0, width: 40.0,),
                ),
              ),
            ),
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
            children: pageChildren(constraints.biggest.width / 2),
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
