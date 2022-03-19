import 'package:flutter/material.dart';

import '../../style.dart';

class QudsDetailContainerItem extends StatelessWidget {
   String ?  title;
   String ? details;

QudsDetailContainerItem({@required this.title,@required this.details});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15,vertical: 7),
      height: 70,
      decoration: BoxDecoration(
          color: beigeColor,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.black,width: 0.5)
      ),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Row(
          children: [
            Expanded(
              flex: 4,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.black,width: 0.5)
                ),
                child:   Center(
                  child: Text(
                    details!,
                    style: const TextStyle(
                      fontSize: 20, color: Colors.black, ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.black,width: 0.5)
                ),
                child:   Center(
                  child: Text(
                    title!,
                    style: const TextStyle(
                      fontSize: 20, color: Colors.black, ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
