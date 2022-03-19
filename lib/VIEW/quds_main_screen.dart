import 'package:flutter/material.dart';
import '../style.dart';
import 'custom_widget/quds_detail_container_item.dart';

class QudsMainScreen extends StatelessWidget {
  const QudsMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
              'عاصمة فلسطين',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            )),
        backgroundColor: purpleColor,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Image.asset('assets/images/img.png',fit: BoxFit.cover,width: double.infinity),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'مدينة القدس',
              style: TextStyle(
                  fontSize: 20, color: Colors.black, ),
            ),
            const SizedBox(
              height: 15,
            ),
            QudsDetailContainerItem(title: 'الاسم',details: 'القدس' ),
            QudsDetailContainerItem(title: 'المساحة',details: '١٢٥ كم' ),
            QudsDetailContainerItem(title: 'السكان',details: '٣٥٨٠٠٠ نسمة' ),
            QudsDetailContainerItem(title: 'الدولة',details: 'فلسطين' ),
            QudsDetailContainerItem(title: 'اسم الطالب',details: 'محمد يحيى عجور' ),

          ],
        ),
      ),
    );
  }
}