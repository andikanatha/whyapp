import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:whyapp/Theme.dart';

class BantuanUI extends StatefulWidget {
  BantuanUI({Key? key}) : super(key: key);

  @override
  State<BantuanUI> createState() => _BantuanUIState();
}

class _BantuanUIState extends State<BantuanUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Bantuan",
          style: TextStyle(fontSize: 15),
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 210,
                  width: 210,
                  child:
                      Lottie.asset("Assets/Animation/bantuan-animation.json")),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          text(
              head: "Tentang aplikasi WhyApp",
              body:
                  'WhyApp adalah aplikasi pesan instan yang digunakan untuk berkomunikasi dengan orang lain.'),
          text(
              head: "Fitur - fitur aplikasi",
              body:
                  'WhyApp dapat mengirimkan pesan dan mempublish sebuah status baik itu gambar ataupun teks agar semua pengguna dapat melihatnya.'),
          text(
              head: "Dimana bisa mendownload aplikasi ini?",
              body:
                  'WhyApp bisa Anda unduh di aplikasi Play Store. Di setiap smartphone android terbaru secara default tersedia aplikasi toko yang namanya Play Store.'),
        ],
      ),
    );
  }

  Widget text({required String head, required String body}) {
    return ExpansionTile(
      iconColor: surfacecolor,
      collapsedIconColor: surfacecolor,
      collapsedBackgroundColor: Theme.of(context).scaffoldBackgroundColor,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      title: Container(
        width: MediaQuery.of(context).size.width,
        child: Text(
          head,
          style: TextStyle(
              fontSize: 14, color: surfacecolor, fontWeight: FontWeight.bold),
        ),
      ),
      children: [
        Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 21),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Text(
                body,
                style: TextStyle(fontSize: 12, color: surfacecolor),
              ),
            ))
      ],
    );
  }
}
