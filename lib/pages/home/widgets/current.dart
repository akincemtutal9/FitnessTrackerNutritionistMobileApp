import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

class CurrentPrograms extends StatelessWidget {
  const CurrentPrograms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
     children: [
      Padding(
        padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 30

        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            Text('Current Programs',
            style: Theme.of(context).textTheme.headline1,
            ),
            Icon(Icons.arrow_forward_ios,
                size: 15,

            ),
          ],
        ),
      ),
      SizedBox(
      width: double.infinity,
      height: 100,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
            itemBuilder: (context,index){
              return Program();

            }



        ),


      )
     ],
    );
  }
}
class Program extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
    height: 100,
      width: 180,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('../assets/weights.jpg')


        )

      ),
    );
  }
  
  
  
}