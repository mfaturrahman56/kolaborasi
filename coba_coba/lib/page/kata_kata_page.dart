import 'package:flutter/material.dart';

class katakata extends StatefulWidget {
  const katakata({Key? key}) : super(key: key);

  @override
  _katakataState createState() => _katakataState();
}

class _katakataState extends State<katakata> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff44aca0),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: Icon(Icons.arrow_back, color: Colors.white),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: EdgeInsets.only(top: 80),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xffb4ddd9)),
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: Container(
                        margin: EdgeInsets.only(top: 120, left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Shabat Nabi",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Pejuang Islam",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    child: Image.asset(
                      "assets/images/istanbul.png",
                      width: 330,
                      height: 200,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(top: 250, right: 20),
                    child: Material(
                      elevation: 3,
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        width: 120,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color(0xff0e1446)),
                        child: Material(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.transparent,
                          child: InkWell(
                            splashColor: Colors.amber,
                            borderRadius: BorderRadius.circular(50),
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (_) => AlertDialog(
                                        title: Center(
                                            child: Text("Muslim Heroes")),
                                        content: SingleChildScrollView(
                                          child: Text(
                                            "Allah adalah Tuhan Yang Maha Esa, tidak ada tuhan selain Dia, dan hanya Dia yang berhak untuk disembah. Adapun tuhan-tuhan yang lain yang disembah oleh sebagian manusia dengan alasan yang tidak benar, memang banyak jumlahnya. Akan tetapi Tuhan yang sebenarnya hanyalah Allah. Hanya Dialah Yang hidup abadi, yang ada dengan sendiri-Nya, dan Dia pulalah yang selalu mengatur makhluk-Nya tanpa ada kelalaian sedikit pun.\n\nKemudian ditegaskan lagi bahwa Allah tidak pernah mengantuk. Orang yang berada dalam keadaan mengantuk tentu hilang kesadarannya, sehingga dia tidak akan dapat melakukan pekerjaannya dengan baik, padahal Allah swt senantiasa mengurus dan memelihara makhluk-Nya dengan baik, tidak pernah kehilangan kesadaran atau pun lalai.\n\nKarena Allah tidak pernah mengantuk, sudah tentu Dia tidak pernah tidur, karena mengantuk adalah permulaan dari proses tidur. Orang yang tidur lebih banyak kehilangan kesadaran daripada orang yang mengantuk.\n\nSifat Allah yang lain yang disebutkan dalam ayat ini ialah bahwa Dialah yang mempunyai kekuasaan dan yang memiliki apa yang ada di langit dan di bumi. Dialah yang mempunyai kekuatan dan kekuasaan yang tak terbatas, sehingga Dia dapat berbuat apa yang dikehendaki-Nya. Semuanya ada dalam kekuasaan-Nya, sehingga tidak ada satu pun dari makhluk-Nya termasuk para nabi dan para malaikat yang dapat memberikan pertolongan kecuali dengan izin-Nya, apalagi patung-patung yang oleh orang-orang kafir dianggap sebagai penolong mereka.\n\nYang dimaksud dengan \"pertolongan\" atau \"syafaat\" dalam ayat ini ialah pertolongan yang diberikan oleh para malaikat, nabi dan orang-orang saleh kepada umat manusia pada hari kiamat untuk mendapatkan keringanan atau kebebasan dari hukuman Allah. Syafaat itu akan terjadi atas izin Allah. Dalam hadis disebutkan :\n\nNabi Saw bersabda, \"¦Kemudian Allah berfirman, \"Para Malaikat memberikan syafaat, para Nabi memberikan syafaat, dan orang-orang mukmin juga memberikan syafaat. (Riwayat Ahmad dan Muslim dari Abu Sa'id al-Khudri)\n\nSifat Allah yang lain yang disebutkan dalam ayat ini ialah: bahwa Allah senantiasa mengetahui apa saja yang terjadi di hadapan dan di belakang makhluk-Nya, sedang mereka tidak mengetahui sesuatu pun dari ilmu Allah, melainkan sekadar apa yang dikehendaki-Nya untuk mereka ketahui. Kursi Allah mencakup langit dan bumi. Allah tidak merasa berat sedikit pun dalam memelihara makhluk-Nya yang berada di langit dan di bumi, dan di semua alam ciptaan-Nya. Allah Mahatinggi lagi Mahabesar.\n\nMereka tidak mengetahui ilmu Allah, kecuali apa yang telah dikehendaki-Nya untuk mereka ketahui. Dengan demikian, yang dapat diketahui oleh manusia hanyalah sekadar apa yang dapat dijangkau oleh pengetahuan yang telah dikaruniakan Allah kepada mereka, dan jumlahnya amat sedikit dibanding dengan ilmu-Nya yang luas. Hal ini ditegaskan Allah dalam firman-Nya:\n\n\"Sedangkan kamu diberi pengetahuan hanya sedikit.\" (al-Isra' 17:85)",
                                            textAlign: TextAlign.justify,
                                          ),
                                        ),
                                      ));
                            },
                            child: Center(
                              child: Text(
                                "Heroes",
                                style: TextStyle(
                                    letterSpacing: 2,
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 20),
                child: ListView(
                  children: [
                    Center(
                      child: Text(
                        "بِسْمِ اللَّـهِ الرَّحْمَـٰنِ الرَّحِيمِ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Center(
                      child: Text(
                        "Dengan menyebut nama Allah Yang Maha Pemurah lagi Maha Penyayang",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontStyle: FontStyle.italic),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SelectableText(
                      " Khalid Bin Walid ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      child: SelectableText(
                        " Khalid bin Walid bahkan sempat memerangi Islam ketika ia memimpin pasukan kaum kafir Quraisy dalam perang Uhud. Ketika itu, Khalid berhasil memanfaatkan peluang menaklukkan pasukan Islam saat mereka tergoda dengan harta rampasan perang Di bawah kepemimpinan Khalid bin Walid itulah, pasukan kafir Quraisy berhasil memukul mundur pasukan Islam. Akan tetapi, justru karena perang itulah ia mendapat hidayah dari Allah dan menyatakan diri untuk masuk Islam.Masuknya Khalid bin Walid ke dalam naungan Islam kemudian disambut gembira oleh Nabi Muhammad saw. Sebab, Khalid dikenal sebagai seorang yang ahli strategi perang sehingga pasti akan sangat menguntungkan umat Islam.Berkat kepiawaiannya dalam memperjuangkan panji-panji Islam inilah, Khalid bin Walid mendapat julukan pedang Allah yang terhunusCeritanya, pada masa pemerintahan Abu Bakar terjadi Perang Yarmuk antara umat muslim menghadapi tentara Byzantium.Khalid bin Walid pun langsung diangkat menjadi panglima perang memimpin pasukan muslim sebanyak 46.000, sedangkan pasukan Byzantium mencapai 240.000.Meskipun perbandingan pasukan sangat jomplang, tetapi Khalid bin Walid tidak gentar dan tidak takut demi menegakkan agama Allah.Tidak hanya itu, kelemahan umat muslim juga ada pada kualitasnya. Pasukan Islam saat itu tidak didukung dengan persenjataan yang mumpuni begitu pula dengan mutu pasukan karena jarang sekali berlatih.Namun, berkat kecerdasan Khalid, pasukan Islam dibagi menjadi 40 kontingen dari 46.000 pasukan sehingga mampu memberi kesan seolah-olah pasukan Islam lebih besar dari musuh.Dan benar saja, strategi yang dijalankan oleh Khalid tersebut membuahkan hasil hingga membuat orang-orang tercengang. Pasukan Islam yang berjumlah jauh lebih sedikit dari lawan berhasil memenangkan perang tersebut.Prestasi-prestasi yang diukir Khalid berkat keahliannya dalam menyusun strategi perang, ahli senjata dan karisma yang dimilikinya nyatanya tidak membuat Khalid menjadi sombong.Bahkan saat Khalifah Umar bin Khatab mencopot jabatannya tanpa suatu kesalahan dari Khalid, ia begitu legowo menerimanya. Setelah dicopot, ia pun sempat menuntaskan peperangan dengan sempurna dan barulah ia menyerahkan kepemimpinan kepada Abu Ubaidah bin Jarrah.Begitulah sikap baik Khalid bin Walid, salah seorang sahabat Rasulullah yang patut kita jadikan contoh. Berada di atas, tapi tidak haus jabatan.Wallahu alam."
                        ,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                        ),
                            textAlign: TextAlign.justify,
                      ),              
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
