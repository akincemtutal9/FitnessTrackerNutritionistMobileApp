import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget{
  final AppBar appBar;

  const MainAppBar({
    Key? key,
    required this.appBar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        onPressed:() {},
        icon:Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
          size: 16,
        ),
      ),
      title: Text(
        'Activity',
        style: TextStyle(
          color: Colors.black,
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      actions: [
        TextButton(onPressed: (){},
          child: Icon(
            Icons.notifications,
            size: 16,
          ),
          style:ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(5),
            maximumSize: Size(30,30),
            minimumSize: Size(30,30),
            shape: CircleBorder(),
            primary: Color(0xffffe6da),
            onPrimary: Color(0xfffa7a3b),
          ),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}