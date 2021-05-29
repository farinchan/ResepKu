class ResepList {
  String title,
      description,
      image,
      bahan,
      pembuatan,
      waktu,
      kategori,
      penyajian;

  ResepList(
      {required this.title,
      required this.description,
      required this.image,
      required this.bahan,
      required this.pembuatan,
      required this.waktu,
      required this.kategori,
      required this.penyajian});
}

var resepList = [
  ResepList(
      title: 'Nasi Goreng Babat',
      waktu: "30 menit",
      kategori: 'nasi',
      penyajian: '15 porsi',
      description:
          'Nasi goreng khas kota Semarang ini memakai campuran babat jarit bahkan babat hitam. Kenyal gurih dan pedas rasanya diselingi manisnya kecap bikin rasanya enak dikunyah.',
      image: 'assets/images/nasi-goreng-babat.jpg',
      bahan:
          '2 sdm minyak sayur\n2 butir bawang merah, iris tipis\n2 siung bawang putih, iris tipis\n150 g babat rebus, iris tipis panjang\n400 g nasi putih\n1 batang daun bawang, iris kasar\n4 sdm kecap manis\nHaluskan:\n2 buah cabai merah besar, buang bijinya, rebus\n2 buah cabai rawit merah\n2 butir bawang merah\n1 siung bawang putih\n1/2 sdt terasi goreng\n1 sdt garam\nPelengkap:\n2 sdm bawang merah goreng\nAcar timun',
      pembuatan:
          '1. Tumis bawang merah dan bawang putih hingga layu.\n2. Masukkan Bumbu Halus, aduk hingga matang dan harum.\n3. Tambahkan babat, aduk hingga rata.\n4. Masukkan nasi, daun bawang dan kecap manis.\n5. Aduk hingga rata dan agak kering.\n6. Angkat, Sajikan hangat dengan Pelengkapnya.'),
  ResepList(
      title: 'Pecel madiun',
      waktu: "30 menit",
      kategori: 'Lauk',
      penyajian: '5 porsi',
      description:
          'Pecel adalah makanan khas Indonesia berupa aneka sayuran rebus dengan siraman sambal atau saus kacang. Pecel banyak ditemui di Jawa Tengah dan Jawa Timur. Salah satu yang terkenal adalah pecel Madiun.\nPecel Madiun banyak digemari karena cita rasanya yang khas. Sambal kacangnya tidak terlalu cair dan rasanya manis gurih. Memakai banyak daun jeruk purut dan kencur sehingga aromanya wangi sedap.',
      image: 'assets/images/pecel-madiun.jpg',
      bahan:
          '500 g kacang tanah, sangrai atau goreng\n150 g gula Jawa, sisir halus\n10 helai daun jeruk purut, buang tulangnya\n1 sdm air asam Jawa\n10 buah cabe merah keriting\n5 buah cabe merah keriting\n7 siung bawang putih\n3 cm kencur tua\n1 potong terasi bakar\n2 sdm garam',
      pembuatan:
          '1. Tumbuk kacang dengan ulekan atau lumpang hingga halus dan sedikit berminyak. Sisihkan.\n2. Bumbu : Goreng cabe, bawang putih dan kencur.\n3. Haluskan bahan bumbu bersama daun jeruk purut hingga menyatu.\n4. Haluskan gula Jawa dengan sedikit air.\n5. Aduk jadi satu kacang halus, gula, air asam Jawa dan Bumbu. Aduk hingga benar-benar menyatu. Jika terlalu kering bisa ditambahkan sedikit air panas.\n6. Sambel pecel Madiun siap digunakan.'),
  ResepList(
      title: 'Sayur asem',
      waktu: "45 menit",
      kategori: 'Sayur',
      penyajian: '6 porsi',
      description:
          'Sayur asem yang sederhana ini bisa membangkitkan selera makan seusai lebaran. Sayuran yang beragam dengan rasa pedas asam dijamin bikin lahap makan.\nSayur asem atau sayur asem banyak versinya. Ada yang bening dengan paduan oncom khas Jakarta. Atau tanpa oncom, berkuah bening ala Sunda. Ada juga sayur asem Jawa yang pedas dan agak keruh kuahnya.',
      image: 'assets/images/sayur-asem.jpg',
      bahan:
          '1 buah jagung manis, potong-potong\n100 g melinjo muda\n2 cm lengkuas, memarkan\n2 lembar daun salam\n1 buah labu siam, potong-potong\n5 helai kacang panjang, potong-potong\n50 g daun melinjo muda\n3 buah asam muda\n1 potong kecil gula aren\n8 buah cabe merah keriting\n5 buah cabe rawit merah\n5 butir bawang merah\n3 siung bawang putih\n4 butir kemiri\n1 potong terasi bakar\n2 sdt garam',
      pembuatan:
          '1.Didihkan air secukupnya dalam panci, rebus jagung dan buah melinjo hingga lunak.\n2.Dalam panci terpisah, rebus asam muda dengan sedikit air hingga lunak. Angkat, remas-remas, saring airnya sekitar 100 ml.\n3.Bumbu: Giling atau tumbuk semau bahan bumbu hingga halus.\n4.Masukkan bumbu dan gula ke dalam rebusan jagung, bersama lengkuas dan daun salam.\n5.Tambahkan labu siam dan kacang panjang. Rebus hingga lunak.\n6.Masukkan daun melinjo dan air asam muda, didihkan kembali.\n7Angkat dan sajikan hangat.'),
  ResepList(
      title: 'Telur balado',
      waktu: "30 menit",
      kategori: 'Lauk',
      penyajian: '6 porsi',
      description:
          'Balado merupakan sambal atau bumbu cabe merah khas Minang yang mudah dibuat. Rasa pedasnya bisa disesuaikan dengan selera. Beberapa orang nenambahkan tomat agar rasanya lebih segar.\nSedangkan untuk telur ayam rebus, bisa digoreng sebentar tetapi bisa juga langsung dibumbui. Karena dimasak beberapa saat bumbu baldo menyerap dalam telur sehingga lebih enak rasanya.',
      image: 'assets/images/telur-balado.jpg',
      bahan:
          '6 butir telur ayam\nminyak goreng\n2 lembar daun jeruk purut\n1 sdm kaldu ayam/jamur\n1 buah jeruk nipis/limau\nBumbu:\n3 buah cabe merah besar\n5 buah cabe merah keriting\n5 buah cabe rawit merah\n5 butir bawang merah\n3 siung bawang putih\n1 sdt gula pasir\n2 sdt garam',
      pembuatan:
          '1.Rebus telur hingga matang. Tiriskan dan rendam air dingin. Kupas kulit telur. Sisihkan.\n2.Goreng telur dalam minyak banyak hingga sedikit kecokelatan lalu tiriskan.\n3.Bumbu: Giling bahan bumbu hingga agak halus.\n4Panaskan 4 sdm dalam wajan, tumis Bumbu bersama daun jeruk hingga harum dan matang.\n5.Tambahkan kaldu ayam dan air jeruk nipis, aduk rata.\n6.Masukkan telur rebus yang sudah digoreng, masak beberapa saat lalu angkat.\n7.Sajikan hangat.'),
];
