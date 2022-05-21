import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: Stack(
      children: [
        CustomPaint(
          painter: HeaderPainter(),
          size: Size(double.infinity,200),

        ),
        Positioned(
          top: 20,
          left: 20,

          child: IconButton(
          onPressed: (){},
            icon: Icon(
            Icons.menu,
            color: Colors.white,

            ),
          ),
        ),

        Positioned(
         top: 35,
          right: 40,

          child: CircleAvatar(
            minRadius: 25,
            maxRadius: 25,
            foregroundImage: AssetImage('../assets/pp.png') ,

          ),
        ),
        Positioned(
          left: 33,
          bottom: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hello', style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 20),
              ),
              Text('Username', style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),)


            ],

          ),
        )


      ],



      ),


    );
  }
}
class HeaderPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    Paint backColor = Paint()..color = Color(0xff18b0e8);
    Paint circles = Paint()..color = Colors.white.withAlpha(40);

    canvas.drawRect(Rect.fromPoints(Offset(0,0), Offset(size.width,size.height)), backColor);
    canvas.drawCircle(Offset(size.width * 0.65, 10), 30, circles);
    canvas.drawCircle(Offset(size.width * 0.6, 130), 10, circles);
    canvas.drawCircle(Offset(size.width -10 ,size.height -10), 20, circles);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;


  
}