import 'package:flutter/material.dart';

class appBar extends StatelessWidget implements PreferredSizeWidget{
  final String title;
  appBar({this.title = 'Photo Gallery'});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title,style: TextStyle(fontWeight: FontWeight.bold),),
      centerTitle: true,
      backgroundColor: Color.fromRGBO(44, 171, 0, 1),
      foregroundColor: Colors.white,
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))
      ],
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: (){
            if(Navigator.canPop(context)){
              Navigator.pop(context);
            }else{
              final ScrollController controller=PrimaryScrollController.of(context)!;
              controller.animateTo(0, duration: Duration(microseconds: 370), curve: Curves.easeInOut);
            }
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white38,
              borderRadius: BorderRadius.circular(10),

            ),
            child: Center(
              child: Icon(
                Icons.chevron_left,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),


    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(56);
}