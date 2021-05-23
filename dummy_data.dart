import 'package:artifact_app/models/artifact.dart';

import './models/category.dart';
import './models/sec_category.dart';
import './models/eras.dart';
import './models/museum.dart';
import './models/artifact.dart';
import './models/artifact_overview.dart';

const DUMMY_CATEGORIES = const [
  Category(
    id: 'c1',
    title: 'الحضارة الفرعونية القديمة',
    imageUrl:
        'https://cdn.pixabay.com/photo/2015/01/15/18/35/abu-simbel-600667_960_720.jpg',
  ),
  Category(
    id: 'c2',
    title: 'الحضارة الرومانية واليونانية',
    imageUrl:
        'https://cdn.pixabay.com/photo/2020/11/24/19/34/colosseum-5773684_960_720.jpg',
  ),
  Category(
    id: 'c3',
    title: 'الحضارة  القبطية',
    imageUrl:
        'https://cdn.pixabay.com/photo/2020/01/30/10/49/egypt-4805067__340.jpg',
  ),
  Category(
    id: 'c4',
    title: 'الحضارة  الإسلامية',
    imageUrl:
        'https://cdn.pixabay.com/photo/2020/07/15/13/56/birds-5407779__340.jpg',
  ),
];

const SEC_CATRGORIES = const [
  const SecCategory(
    id: 'a1',
    title: 'أدوات',
    imageUrl:
        'https://images.akhbarelyom.com//images/images/medium/20201113185327000.jpg',
    categories: ['c1'],
  ),
  SecCategory(
    id: 'a2',
    title: 'فخار',
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c8/Keramik-Neues-Museum-02.JPG/640px-Keramik-Neues-Museum-02.JPG',
    categories: ['c1'],
  ),
  SecCategory(
    id: 'a3',
    title: 'أواني',
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/03/09/08/17/sculpture-3210912__340.jpg',
    categories: ['c1'],
  ),
  SecCategory(
    id: 'a4',
    title: 'مناظر',
    imageUrl: '',
    categories: ['c1'],
  ),
  SecCategory(
    id: 'a5',
    title: 'صلايات',
    imageUrl:
        'https://egymonuments.gov.eg//media/2744/palettee.jpg?crop=0.082239174205257892,0.17750572430840952,0.12372741967501077,0.13730933264344758&cropmode=percentage&width=1200&height=630&rnd=132581519660000000',
    categories: ['c1'],
  ),
  SecCategory(
    id: 'a6',
    title: 'أحجار مميزة',
    imageUrl:
        'https://cdn.pixabay.com/photo/2015/01/03/02/22/hieroglyphs-587138__340.jpg',
    categories: ['c1'],
  ),
  SecCategory(
    id: 'a7',
    title: 'تماثيل',
    imageUrl:
        'https://cdn.pixabay.com/photo/2017/11/27/08/56/ancient-egypt-2980853__340.jpg',
    categories: ['c1'],
  ),
  SecCategory(
    id: 'a8',
    title: 'أهرامات',
    imageUrl:
        'https://cdn.pixabay.com/photo/2016/04/21/16/45/egypt-1343909__340.jpg',
    categories: ['c1'],
  ),
  SecCategory(
    id: 'a9',
    title: 'مقابر',
    imageUrl:
        'https://www.aleqt.com/sites/default/files/styles/scale_660/public/rbitem/2020/04/5/1306146-1875248841.jpeg?itok=JW7XXqzu',
    categories: ['c1'],
  ),
  SecCategory(
    id: 'a10',
    title: 'توابيت',
    imageUrl:
        'https://cdn.pixabay.com/photo/2016/12/12/09/27/history-1901078__340.jpg',
    categories: ['c1'],
  ),
  SecCategory(
    id: 'a11',
    title: 'مومياوات',
    imageUrl:
        'https://cdn.pixabay.com/photo/2015/09/11/04/23/mummy-935258__340.jpg',
    categories: ['c1'],
  ),
  SecCategory(
    id: 'a12',
    title: 'معابد ملكية وجنائزية',
    imageUrl:
        'https://cdn.pixabay.com/photo/2016/04/21/15/08/temple-of-isis-1343591__340.jpg',
    categories: ['c1'],
  ),
  SecCategory(
    id: 'a13',
    title: 'مسلات',
    imageUrl:
        'https://cdn.pixabay.com/photo/2019/10/01/07/25/egypt-4517423_960_720.jpg',
    categories: ['c1'],
  ),
  SecCategory(
    id: 'a14',
    title: 'لوحات جدرانية',
    imageUrl:
        'https://cdn.pixabay.com/photo/2015/02/18/15/42/egypt-640875__340.jpg',
    categories: ['c1'],
  ),
  SecCategory(
    id: 'r1',
    title: 'رؤوس',
    imageUrl:
        'https://open3dmodel.com/wp-content/uploads/2019/09/Roman-Bust-Hercules-3D-Model.jpeg',
    categories: ['c2'],
  ),
  SecCategory(
    id: 'r2',
    title: 'تصوير بالفسيفساء',
    imageUrl:
        'https://decorexpro.com/images/article/orig/2018/02/rimskaya-mozaika-aktualnyj-trend-v-sovremennom-dizajne-9.jpg',
    categories: ['c2'],
  ),
  SecCategory(
    id: 'r3',
    title: 'عملات',
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/d/d0/7antoninianii.jpg',
    categories: ['c2'],
  ),
  SecCategory(
    id: 'r4',
    title: 'أعمدة',
    imageUrl:
        'https://p0.pikist.com/photos/849/327/columns-roman-empire-classic-roman-ruins.jpg',
    categories: ['c2'],
  ),
  SecCategory(
    id: 'r5',
    title: 'مقابر',
    imageUrl:
        'https://ecesr.org/wp-content/uploads/2015/05/-----------------------.jpg',
    categories: ['c2'],
  ),
  SecCategory(
    id: 'r6',
    title: 'مناظر',
    imageUrl:
        'https://news.travelerpedia.net/wp-content/uploads/2012/07/timgad_ruins__algeria.jpg',
    categories: ['c2'],
  ),
  SecCategory(
    id: 'r7',
    title: 'جرار وأواني',
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e4/Roman_pottery_from_Britain.jpg/450px-Roman_pottery_from_Britain.jpg',
    categories: ['c2'],
  ),
  SecCategory(
    id: 'r8',
    title: 'تماثيل',
    imageUrl:
        'https://img.youm7.com/ArticleImgs/2019/11/5/78814-%D8%A7%D8%AB%D8%A7%D8%B1---Copy.jfif',
    categories: ['c2'],
  ),
  SecCategory(
    id: 'r9',
    title: 'معابد',
    imageUrl:
        'https://modo3.com/thumbs/fit630x300/110022/1478704303/%D8%A7%D9%84%D8%A2%D8%AB%D8%A7%D8%B1_%D8%A7%D9%84%D8%B1%D9%88%D9%85%D8%A7%D9%86%D9%8A%D8%A9_%D9%81%D9%8A_%D9%85%D8%B5%D8%B1.jpg',
    categories: ['c2'],
  ),
  SecCategory(
    id: 'i1',
    title: 'مساجد',
    imageUrl:
        'https://cdn.pixabay.com/photo/2017/01/14/20/55/cairo-1980350_960_720.jpg',
    categories: ['c4'],
  ),
  SecCategory(
    id: 'i2',
    title: 'جوامع',
    imageUrl:
        'https://cnn-arabic-images.cnn.io/cloudinary/image/upload/w_1920,c_scale,q_auto/cnnarabic/2020/05/24/images/155459.jpg',
    categories: ['c4'],
  ),
  SecCategory(
    id: 'i3',
    title: 'قلاع',
    imageUrl:
        'https://cdn.pixabay.com/photo/2016/03/29/21/41/egypt-1289497_960_720.jpg',
    categories: ['c4'],
  ),
  SecCategory(
    id: 'i4',
    title: 'زخارف خشبية',
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Dado_panel2.JPG/1200px-Dado_panel2.JPG',
    categories: ['c4'],
  ),
  SecCategory(
    id: 'i5',
    title: 'مشكاوات',
    imageUrl:
        'https://images.akhbarelyom.com/images/images/large/20191110172959658.jpg',
    categories: ['c4'],
  ),
  SecCategory(
    id: 'c1',
    title: 'كنائس',
    imageUrl:
        'https://cdn.pixabay.com/photo/2020/03/24/09/11/egypt-4963282__340.jpg',
    categories: ['c3'],
  ),
  SecCategory(
    id: 'c2',
    title: 'أديره',
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/5/5d/Monastero_Antonio_-_Main_Gate.jpg',
    categories: ['c3'],
  ),
  SecCategory(
    id: 'c3',
    title: 'أيقونات',
    imageUrl:
        'http://st-takla.org/Pix/Jesus-Christ-our-Lord-n-Savior/29-Bantokrator/www-St-Takla-org___Jesus-Christ-Pantokrator-35.jpg',
    categories: ['c3'],
  ),
  SecCategory(
    id: 'c4',
    title: 'صور شخصيةأو بورترية',
    imageUrl:
        'https://www.albawabhnews.com/upload/photo/news/317/6/600x338o/857.jpg?q=1',
    categories: ['c3'],
  ),
  SecCategory(
    id: 'c5',
    title: 'مومياوات',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqxik5hXxIbowAflA7adROeb4dW5Q70V-lTA&usqp=CAU',
    categories: ['c3'],
  ),
];

const EGY_ERAS = const [
  Era(
    id: 'e1',
    title: 'عصر ماقبل الأسرات',
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/HMB_AE_368_-_Barke_mit_Menschenfiguren.jpg/1280px-HMB_AE_368_-_Barke_mit_Menschenfiguren.jpg',
    time: '5500-3100 ق.م',
    description:
        'The prehistory of Egypt spans the period from the earliest human settlement to the beginning of the Early Dynastic Period around 3100 BC, starting with the first Pharaoh, Narmer for some Egyptologists, Hor-Aha for others, with the name Menes also possibly used for one of these kings. This Predynastic era is traditionally equivalent to the final part of the Neolithic period beginning c. 6000 BC and ending in the Naqada III period c. 3000 BC.The dates of the Predynastic period were first defined before widespread archaeological excavation of Egypt took place, and recent finds indicating very gradual Predynastic development have led to controversy over when exactly the Predynastic period ended. Thus, various terms such as "Protodynastic period", "Zero Dynasty" or "Dynasty 0"[1] are used to name the part of the period which might be characterized as Predynastic by some and Early Dynastic by others.The Predynastic period is generally divided into cultural eras, each named after the place where a certain type of Egyptian settlement was first discovered. However, the same gradual development that characterizes the Protodynastic period is present throughout the entire Predynastic period, and individual "cultures" must not be interpreted as separate entities but as largely subjective divisions used to facilitate study of the entire period.The vast majority of Predynastic archaeological finds have been in Upper Egypt, because the silt of the Nile River was more heavily deposited at the Delta region, completely burying most Delta sites long before modern times.',
  ),
  Era(
    id: 'e2',
    title: 'العصر العتيق',
    imageUrl:
        'https://egymonuments.gov.eg//media/2744/palettee.jpg?crop=0.082239174205257892,0.17750572430840952,0.12372741967501077,0.13730933264344758&cropmode=percentage&width=1200&height=630&rnd=132581519660000000',
    time: '3100-2686 ق.م',
  ),
  Era(
    id: 'e3',
    title: 'الدولة القديمة',
    imageUrl:
        'https://modo3.com/thumbs/fit630x300/100098/1480429463/%D8%B9%D8%B5%D8%B1_%D8%A7%D9%84%D8%AF%D9%88%D9%84%D8%A9_%D8%A7%D9%84%D9%82%D8%AF%D9%8A%D9%85%D8%A9.jpg',
    time: '2686-2181 ق.م',
  ),
  Era(
    id: 'e4',
    title: 'عصر الانتقال الأول',
    imageUrl: 'http://www.al-jazirah.com/2014/20140108/ms_31_1.jpg',
    time: '2181-2055 ق.م',
  ),
  Era(
    id: 'e5',
    title: 'الدولة الوسطي',
    imageUrl: 'https://mssader.com/public/uploads/images/7991524891927839.jpg',
    time: '2055-1650 ق.م',
  ),
  Era(
    id: 'e6',
    title: 'عصر الانتقال الثاني',
    imageUrl:
        'https://aawsat.com/sites/default/files/styles/article_img_top/public/2020/09/03/daily-040920-2.1.jpg?itok=yDnka9O7',
    time: '1650-1550 ق.م',
  ),
  Era(
    id: 'e7',
    title: 'الدولة الحديثة',
    imageUrl: 'https://img.youm7.com/large/202011130132213221.jpg',
    time: '1550-1069 ق.م',
  ),
  Era(
    id: 'e8',
    title: 'عصر الانتقال الثالث',
    imageUrl: 'https://img.youm7.com/large/20200105013806386.jpg',
    time: '1069-747 ق.م',
  ),
  Era(
    id: 'e9',
    title: 'العصر المتأخر',
    imageUrl:
        'https://www.shorouknews.com/uploadedimages/Sections/Culture/original/athar31.jpg',
    time: '747-332 ق.م',
  ),
  Era(
    id: 'e10',
    title: 'العصر البطلمي',
    imageUrl: 'https://24.ae/images/Articles/20171128131496050M.jpg',
    time: '332-30 ق.م',
  ),
  Era(
    id: 'e11',
    title: 'العصر الروماني',
    imageUrl:
        'https://lifeweb-eg.com/wp-content/uploads/2021/03/%D8%A7%D9%84%D9%85%D8%B3%D8%B1%D8%AD-%D8%A7%D9%84%D8%B1%D9%88%D9%85%D8%A7%D9%86%D9%89-%D8%A8%D8%A7%D9%84%D8%A7%D8%B3%D9%83%D9%86%D8%AF%D8%B1%D9%8A%D8%A9.jpg',
    time: '30ق.م  _ ',
  ),
  Era(
    id: 'e12',
    title: 'العصر البيزنطي',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSL46m8CgdpxJNx0ulA6Obngag5sRgkQ1iDNg&usqp=CAU',
    time: '395-641 A.D',
  ),
  Era(
    id: 'e13',
    title: 'العصر الإسلامي',
    imageUrl:
        'https://cdn.sotor.com/thumbs/fit630x300/26904/1570427859/%D9%86%D8%A8%D8%B0%D8%A9_%D8%B9%D9%86_%D8%A7%D9%84%D8%AE%D9%84%D8%A7%D9%81%D8%A9_%D8%A7%D9%84%D8%B9%D8%A8%D8%A7%D8%B3%D9%8A%D8%A9.jpg',
    time: '641-1805 A.D',
  ),
  Era(
    id: 'e14',
    title: 'عصر أسرة محمد علي',
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/%D8%A3%D8%B3%D8%B1%D8%A9_%D9%85%D8%AD%D9%85%D8%AF_%D8%B9%D9%84%D9%8A_%D8%A8%D8%A7%D8%B4%D8%A7.JPG/800px-%D8%A3%D8%B3%D8%B1%D8%A9_%D9%85%D8%AD%D9%85%D8%AF_%D8%B9%D9%84%D9%8A_%D8%A8%D8%A7%D8%B4%D8%A7.JPG',
    time: '1805-1952 A.D',
  ),
  Era(
    id: 'e15',
    title: 'عصر الجمهورية',
    imageUrl:
        'https://22arabi.com/wp-content/uploads/2020/06/%D9%86%D8%A7%D8%B5%D8%B1.jpeg',
    time: '1952 Till now',
  )
];

const DUMMY_MUSEUMS = const [
  Museum(
    id: 'm1',
    title: 'أماكن سياحية مشهورة',
    imageUrl:
        'https://i2.wp.com/www.ar-traveler.com/wp-content/uploads/2017/02/%D8%B4%D8%A7%D8%B1%D8%B9-%D8%A7%D9%84%D9%85%D8%B9%D8%B2-%D9%84%D8%AF%D9%8A%D9%86-%D8%A7%D9%84%D9%84%D9%87.jpg?resize=810%2C585&ssl=1',
    description: '',
  ),
  Museum(
    id: 'm2',
    title: 'متحف كفرالشيخ ',
    imageUrl:
        'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBYWFRgWFRYZGRgYGBgYGBgYGBgYGBgYGBgaGRkYGBocIS4lHB4rHxgYJjgmKy8xNTU1GiQ7QDs0Py40NTEBDAwMEA8QHBISHzQkISE0NDQ0NDQ0NDQ0NDE0NDQ0NDQ0NDQ0NDQ0NDQ0NDE0NDE0NDQ0NDQxNDQ0NDQ0NDQ0NP/AABEIAKMBNgMBIgACEQEDEQH/xAAbAAACAwEBAQAAAAAAAAAAAAACBAEDBQAGB//EAD0QAAIBAgQDBAcHAwQCAwAAAAECAAMRBBIhMQVBUSJhcZETMoGhscHRBkJSYpLh8BRyohWCsvFDwiMzU//EABkBAAMBAQEAAAAAAAAAAAAAAAABAgMEBf/EACQRAAICAgICAgMBAQAAAAAAAAABAhEDMRIhQVEEExQiYTKB/9oADAMBAAIRAxEAPwD6YphSpHlhebGBYrSwRcGEGktDstZJU1GWK8MNEMoAtLQIeUSLQAodBFito+RK2SNMTEK2qnwPwnmMHiw7utiLvUykZtbXHasCAbFdzfS+09Tj0AR7nKMj3a9svZOt9LW8Z5vhhtRCqfR9twGZsxDKCt9hfM6t2dNDC+xUajJKnWOLT01NyNza1zzNpTUSbJmTQkwlbLG2pwDTM0TJoTKTmpkx5aBlqUI+YuJlilLqVKPf08uShE5j4iS0+Uup4W8eTDRpMPIcylERo4flaaKUbQ0S0IyHKy0qKrWkiSZFohgvBCyy06OxUCFhWk2khYhgTsstyzrQABUkkyGaVs8KGEzytngEwTARzPBMkmAYCBadIJkx2AyolqiAktWQUQFk5YUkQAALDWTJiGEDJgSbxASJJEEGdeACHGK4Si7HbI9za4HZNrjx66TC+zVBGpEHU+mqZg6jM1+2MwbXTMD42M9DxGoFpOW1XIbgC5IItYDnvMfgiLnfMO1/VVLAC4RvRnUG2l1JFzbcAbm4Hg02SVNSj7U5Apy1IlxM30cNKPdH/RCEtKPkTxEhThLSjopS1acnkVQomHlooxjaDeKwpAKkkwjIyxgCZBEPLIIjACQRDCyQIWBXlhBIUgtHYHWkFpBaAYASakBnM4yDAATItCJgM0BEEQWaCzypjHQrCZ5WzyCYDNCgOLzoBcTowNVTDBlSGWAyWirCBhCCIQMkYQMm8G8IRDJEmROvEB0GTecIAIcXvkABILOo0NvVu59yGZ3BMy1K6AgquKIIN9B6NRcH7zXGvLwO7nHqJZadi2j3KqAc4yP2TfYG1v8AcYlwQD0uIXNly4lLILWIdEbLttZwbAA9kHbcA9IJGWHacBARASTaSYJqqN2HmIAHaQWlfpl/Gv6h9Zwrp+NP1L9YAEZIWCK6fiX9QhCoOR8oAFaRBLGQWjAK8iDeCWjAMmQTKy8BnjoRaTBLSo1JU1WNIVl5aCWi7VhKmriUosTkNl5WzxNsV3yl8X3y1BkuSH2eUvUmc+M75Q2NlLEyXNGm9e0pbEGZxxRgnEmWsZPMfaqZWcREGrEwcxg4DUh1qnfOiJvIkcSuR7BYYgKYV5hZqHeEJUDCDSRlohXlOaZfG+OJhl7QLOfVQGx8WP3Rp7eQ3kjNnNFsXj6dMXqOif3MAfYNz7J824r9qMRV0D5FJ9WmSvm3rHzt3TCL3N+Z3PM+MVlqJ9Mr/bLCrfKXe34EIHXdyvWIV/t4PuUPAu9vMKp+M8Cjb+J+nyh3icilFHp8R9sa727NNbNcWQnUH8zHpEaPFa5dijHO7hyERbl7ABlAXewG3zMxqbae0/EzV4GCahtTWoQt8jBTmXOiuVDEAsqMzAc8vtitj4pBVONYhiL16h0J9dgOVtAfGRRxNV2VM9RixtoXc25kKDdrC5sOkuw7YTPZExDsC2lR8LSpkq2qk3yhbi1hy0EFsdhdbYV3B5PWAG99MqkW08jCw6KVoOxYBWJVgrAizBmfIoYHYltLdYomwv0EffiSC3osMtMh0ct6Z39R84UKVAAzAajpF+HYpEu7rnbLYIV7DlhYln+4B62gvoAOcQA00zG2g0ZtifVUsR2QTsP+oVXDkIrkqAzFUB9ZytsxAA2Fxcm3tj9DjYS+TDUluCps76g7jwiuN4pnT0a0aaKXVjkzE3UG1rmwOtr720jDsSAHOw7zsO890llsSLbXvYdNz4c5enEQoUGgjMoAz53Um2xsNiOvdGaPHyjl1oKHO7+mqEkaXDD7wNhv74/+hb9GclRhchwtrWXOEY3vqi3Bbbl3S5OJ1htWqDwqP9YVTi9Mlr4RTnIZj/UPcm5Ohyaa32690oxfEA6oi0lpqhcizl2OfLfMxAvqp16EDlqrBL+D9PjWKsSuIqWHNnLAE7ete/h3GGv2qxiWvVDD8yIQbb6hQfZvMSniFDKHIGVsy5rZGuLMGBOW4spF+h1HMcXUW7ZWBzsGyrbKgVbE9kkBmJJsDy15Sk+rFSvR6RPtxiB6yU2/2uPg8Yp/b3Xt0Par/Ir854vNKWOp/nIQU2J44s+iJ9tKDbh0/uW4/wACY3T+0FF9EqIT0Jynyaxny/NAvvNI5q2iJYU9M+svjDF3xRnzWhi3T1HZe4EgeWxm5gftM4AFRA4/EtlfxPI+6dEM0HtUYTwyWnZ6r0hPOASYGBxiVVzIb9QdGXxHz2jISdKkvBztNdMotOyxoJOFKJyChbIZGSOijJ9FE5FUJZIWWNejk5JDkNITNOdGiBOk2UehCwwsANJzTjs6CwCSBKvSTvSQ7Asd7AnoCfIXnyvjOILuztuzkn36DuG0+k42pam5/I//ABM+WY9tfaT/ADziLiKVTt4/I/WV3k1G29vy+srktmqDQ6e0/EwwZUh0Hn56ywGSMOiL2A5k+9j9ZrYng+SqlF3F2Du5K9hKaFu2STY5gjtbkAL7zHw72ysORVu7QgzRfjNdjfMob/5LOFYuoqvnZVLMQANl00BMFQnfg0KXA0C9svf05oAJ6MKLOiBjnYEgl9lDGUccwCUWVUL3KsxV8hIAdlVrppZspIG452OkRrcVqO6s7LdG9IhyqLO2UFj1/wDrT39ZVW4gWCh6gYLmyglBbOxdtQATdidDoOVodAkz0WN4ZQV6tNGzGnRrObVVdw6LTKB0CDJfOdLm9uUUwWCRsO7EE1QlR1BYp2aaqcyXUq9iTmF7jTaIN9pKpYMcV2gGAOamLBipbYc8q+UXbjDsrK2IJVzmdc+jsdSW158xsYrDiz1o4FRFXLcMprqmVXJZF9A7lX/CxZQfC3WIJgaT5jkFhUw6jI9VhZ2YPq6oxuAOWltDMEcYa5b+oOYtnJz6l8uTOTffKSL9DAr8ZZjc4l2a6kk1GJ7N8p35Em3S5haDhI2a/DkDFQQFWg7+lLnIXV8pvbZU2POUtg0GIWmSchUEkHU//HnJBt1mKOI2GX0vZIYZc+hD6uLX2Y2J6yf9SGbP6YZtg2dbgWy2/TpG5IFCRo43BohYFjcI5W2t2FiinpdWBPiIa4BGD5WZmVFZUBTMQaectY2zgNoQuo75jPj7tm9KCQBYlkbll2a4PZCjW+wgLWNyQ4ud7ZPMadnTTS0SY6Zt4rg63VMzaqzZiEy6Uy9hZ83K2oHtiuH4MSoKuNUotbL/APr33+7YnvtylTcSqFlfsZltZgiBiAuXK5A7S5TaxlY4rWuW7AuFFghCqFR0UIAdAA7G2utulpVxIqRViaZR2Qm5VitxtobXizHU/wA5S/EVy7s5ABYliBewJ6Xizb+Umy1om8EmdBbf2D5wsYV4aHQeEpvDQ6CUmSzRwNdkKshIYHQjx2PUd0+lYSqror2tmANuh5jzvPl1E6T23C+MUkpqjsQy3v2WI1YkagHkROnHNR/06ObJCUn+qtnobiQXEzl4rQP/AJUHiSv/ACtL0xCN6ro39rKfgZupwemYPHOO0y81IJecU8YBSV0LsgvALwikEpH0T2Aak6SUkR9Ctm4Ks7OekzcVxejT0ZrsPuqMze3p7bTKxP2rP/jpgd7m/wDitvjPNeSMdnorBOWkeozmZuP42lJ8jlr5M+guAva31/KTPK1vtBiG+/lHRFUe+1/fM2tXZzmdmY/iYlj5mZT+Sl/k6Mfwm3+zPX4j7Q0XRkRnzEGwKEDTU3Ow0BniMfWVbZmA0Pt22HPaRjMSyIzJq1rDnYHslrdwJM8t6UszZje4G5uSST+0IZXJWxZcCxypaNSvxBb2AY2B2BG/v5dJQ/ErGwC8rG5YG+mlrRWlcVOyeg115OflIrhQc7q1yx1Vx1PIrGyY1Y+K77XA8FHzvOZ2/G3sNvhaDSemR98eNvkJazUxux8/2mT5HRcF4Eq9UoRdmKkWtmbQjmNdtZVe+vxmi9Gk+9z01kphaeg2HUlrDyBPlK7ojnG/4ZmUdB5Tqlsp8PhNVsNTvYdrXQgvY+ANj7oJoU+aX8Wf6wSYPJEUwFfN3fOPpU5X2gKlMHsoB4FvrLM69B5mTKLbLjnjFdkmp3zOxOKy1AbfdynXqfqI8ayd3n+8AvS5hPMX+MFFocvkJrosV9Abww8rXEUx+HzEn+qp9V84uDK/Ij6ZXXewJ6AnyEzMO4bNoPWv13/6mznRhsCD7RBFOn+Aey4+Eai0jOWZNpmQyDoPISAOnu0mx6Kl+AebfWWDA0ge2jICLg9vUciAWFwesNC+yL8Hnq2JZdAzeOY9fGaFO5HrN53+N42cFRO6f5P9ZatGkPunzY/ON3XQoyjbtCAv+LzA+VoNZyoJNjboCD8Y6tWgev8Al9JGI9CRYIW8WKj6+6TyaL/SS6Rmpi1Ivt5fznGKddbA306nbz2i1TDjkoA5DUgfqjvBqbFFsbDOwNtPuNz35TWMrMJR47GaBuPbNJGvrPP4kZKrhTYAIRbqRqO/UTX4XXLoSRsbdx0Gvvk5pXGjT48f2sZJ2vC0PIGQ6yFp2nLZ3MsSoynsOy/2sy/Axqlxmuv/AJCw6MFb3kX98TIgOZpHJOOmZyxwe0mb2H+0z/fpq39pKH35pp4b7QYd9GJQ9HGn6luPO08ZTbXxEO82h8qa27Oefw8ctKj6IArAMCCDsQQQfAjedPn2HxD0ycjsl98ptf2Tpv8Alr0cz+A/YWf36n2yGaKVuIU0JDOARysSfcIs/GUvYK5I7gPnOCpM9RuKHwDDMyV4uS4QU+YGrbXIHSapEiSa2VFp6IiWJ4bTfXLY9V0923umbU4rVzWXJa5t2Te3LnJGMrEgXA8FHzmkYyWmZSlGXTVktwhlN0cH+4Ee/XqekTxmGqBe0ospvcEH3b84f9XWJPb2NtFX6QS1RjYuSD4TVOS2zGUIvSGcMgyjSL4kWJiwZ7kZ2sCR6xlzDsi/Tcwoib6oao0uypzWuAfdAr1SovoRe3TkT8oxSbsqOgHt0ivFH0Ud59w/eEW7NHCPG6Dp4g6EEg76HUe2VVMVqbk353udesWQaSuqNZSZjKCobOLHWCcX3xEmDnHf5SjNqIxXqhhF7QvPuuND7ZECkl4OI/nhb6wSIRY2tpYa9+vfIgMbw+JyqAeV/iZcMYJnm1t/dI9IO/y/eHZNRNRsWulmO2ulrHoDz8dIQx47/IzMU3HP2j94SSSlFM02x2hsPOFh6zPe7AAG1hp+8zX2Md4W2h9nzky0axjG6K6Y1t0PzmsKI6TNRe2f7j8TMoKB3W058oKPIiOThfR6Z0G1t4phWqAFUIUZybkagm40301PKYwv+I+ZhZ2H3m/UZSi15CWWMto9HT4WGbNUcufK/id/K01EpgAAAADYDaeOXFONqj/rb6zR4Ti3Z7M7MLHQnnvf3TOcJVbZpjyxtRSqz0RXQyPR9CZUrnqZhnitYEgupsSNUHI25TKMXLRvOahV+T0kBhPPjjNUfgP+1h/7S3/W3tqiHwYr8by/qkZ/fE1VNiPGWGKYasXQNa176Xvax6yv/VkBIYOLEj1bjTTkZKi9GjlGk2x286KDiVI/fHtBHxE6OmTyj7MnEEF8xubt8TYfEQqjqKpW18zkC3c1oCsC6Cx9dNLHkwJt10BkUyGrIdbBgx0a/rXNha52mqREpVoawhviCLDd28ApNveRNfEvZGPRT8NJmcKtndyG9UAEI59YknYflEa4lXGQjtC5A1Vx3ncdJjNNyRtF1FswazlbFd721F4zw+q7VFBbS5uMoGwO+mkVxKFrWBOvQ9PCNcNQqxJDDsN907ixm9Licjk+arQgazB9DYHU7c7xvBsS63Y210/2kxMjtb9OvSPcOIz36An5c5TX6kcnzXfkv4fw9HDO7uO0RZQ1u46D+WlWOQLcLewuBfew2J77TU+z3FlpgK2fKLkhUXW5ubM7gE9NLna0zuJG5Y8iT42JkMJbLyugmfxAXt+UH32+keD5jop2vc5QB75nY6quu+wA0053+XKEYuzoco1VgUXFoFQE9oi1726G29jz5Q8NTuhb81ttPG/jpHMYpKLpYA9kXF8vaNzbS+stIwlPSMavylMvxA19hi8paMZbDp7y2VUt5eYMqOgZ0m04iIsoqnWDl0+AhVd5BMpGUtl9OiwFztLUjdPDs69kjbUWY8xptKadA2fNdSguQVt5k7SZIrHLrsB9o1w5he3dFyt5dgaTBr208R3SGujZSXIbpr2j/cfjL2oX/n86QKK9pvGNovxmTk0XCKbdii8OS9iPe31kvwtDyP6jHwsNR1i5y9mv1x9GcnCk2sf1S+hw1UbMM1x1YEfCMpoYyw6xSnL2NY4p3RT7Yi/ClZi2Y6knlbU3jtoYMiMnHRpKEZbMw8GHN9PD5gwTwcC9m06EX+c1CZIWX9svZm8EPQvhaBRctwf5aIYnAuWYraxNxr135dZrmch0hGbTsJYouKj6PPNgqn4fev1nT0RkzT7GY/jx9swsPilW/Za+p+7bu59ZGCpAuH1sNLWF9j398qFFukboUWA25xOSRdwe2OUWVFA7WwF7L0sefUynGqHAAuNSdQOdgOfj5yLHa31juH4TXf1aT+JGUebWElbtFOcK2JYeiFBBJ35AfWXuFKsBm1DD7v3lt1msv2cca1Xp0x+Zrny0Hvhrw7Cr61WpUI5IgRfNr+4y+LMnlgurPHtgDe9/d+8Z4dhu2fWY5bAIoJvcG9r909aooj1MMnc1Vi5/Rt74a4+p6qsEX8NNFQc/b75duqbMHKN2kY2H4DVK2Wi4W47TlENgb/eII8pNbgN/Xr0112QPVPkoA981GBY3Ylu9iWPvkuoiIcmxRuHUAmW1RgO9EDeJAZvhKHwFLZaKDv7bt+pmPwjzkaCL4irYHUDe1+sOTYGXjsMqo1hyPfymJhqrFTmYmxsAdhb/AL9028TnqXCKbHS5BtKKXAWF8zCxN9mGvlNIvrslnnMWe17IvPbU+BAc18O19JbT4Gp3IHnC0B4mgNfZGMs9r/oVPqfP9oX+h0+v88oNplKVHh8plhoHJn0te3O957RuCU7HU39lvhOp8GTnp/PCK0PkeCenueluvOVET6KeB0uv88pQ/AqX8t9I1Ilmd9lwCGv1J+H1nr6vC6VRMlVNxYMCR5G/ZPuPumNhMEtI3Um3MW/aespLdbHW4HhIlKn0B4biv2UqU7tTvUToB218VHreK690yaDdP5yn1HVOpX/IfUfzuiWP4FRxHbIyufvpoT/eNn9uveJSlYrPCYamxbRTqR3d3OO1aDpo6kX2vztvNJ+EvQJzDMulnXbn6w3U+Omu5l1S1RMjbjVW56bH2bHqDIlGzbHk4vsx1MsvFHQqxVhYg2IhKZi4ncnei46GXq8VWXIdJDKRB3nQsp6HyMnKeh8jEMAwlnWPScM41W4YeqdDY8t9IqCwA4Flvqb2HW0OnvO42tqxYCwzq45ALUFx4aMJ2U3mnGiFKyTOnETo7A1RgMKmlWqhboha/hYO5githU9Sg7nq5IXyYn/jMuig1sP5aX5Zt+vhHltGmnFnAtTp06Y/Ktz7rD3Siti6rHtVHI6Kcg/wtKUEJljtkg06Y6C558/OWlJWKgBFza5sO8nlDFSIYSrIQb/z+bwWqgbxV8XyUXhVjHQ8WqYqxNzf8IG+w+dzJpYOo51Nh0E2cDwpU1y+07x8QsxqeFqOdBlHU6nymlhuCINW7R/Nr7pvUcL/AAxlcMOph0gszaeB6C0uTC25COmkOp853o+8wAV/pe5ff9IDKBpZfZ+8vcEaAnzlQp9YUBWKQvtO9COkZyQlQwAoTDdBCGF7hHGpabmQaZiGLNhe4SirQt3eEc9F3nzldajodT5xiExShohXTr6p7/wyQD/Ly9bEWO3dFJDQKiAaZHaT2jkf374YbcHce8dZN5K6GRTqhr8jzU7j6jv/AOojiuDoxzIcjD9B9nL2eUZr07i40YagjceEKhifuvoeTcj4/h+HhNIyvZDVGJxvhGZM6L21GoGuZeYB5kbjrqOk8sHn0wpMPiHAcxL07AnUobWJ/KeXgdO8RShfZvjzuKpnlKbQ6T6x/wBE6NZkIPMEfy8lkYH1D+kzN4/6bfkfwVDwg80Qj6WVvIyVov8AhPw+MX1r2H5D9GeCeh8jJynofIzRXC1PwnzH1hjBP3DxP0hwXsX3y9GLxlCUVgDc0l86d0/9DDQEgEA6i/nNbE4B2QL2dM3PkxJ6fmaU4bhjqiqSpsoFxfkLcxK4xfkhZJLwZ/oW6DzE6bA4dfdvd+86Pig+6Zj0OfiZekidGcxYs5pE6ACtbdP7x8DLKjaTp0YCi6trrNvAUV00EmdLZJt0EFhpyl9OdOgNFkg8p06IompKxtOnRDBG8tTedOgwLX5SDz8J06IEVrCG3nOnRgCZKyJ0QFMJZ06NiIraFD3285y+u39qfGpOnSCiX5+2RVGkmdBCK+FOTmUnQWt3a9d47InTaOiGA6AjUTLdBY6dZE6Z5DTGdhtj4y/nOnTM1JbaSsidARwkGTOgIgCdOnShH//Z',
    description: '',
  ),
  Museum(
    id: 'm3',
    title: 'متحف برلين',
    imageUrl:
        'https://media-cdn.tripadvisor.com/media/photo-s/14/b6/4b/28/achim-kleuker.jpg',
    description: '',
  ),
];

List<Artifact> artifacts = [
  Artifact(
      id: 'a1',
      titleAR: 'تمثال 1',
      titleEN: 'statue 2',
      categoriesId: ['a1'],
      imageUrl:
          'https://cdn.pixabay.com/photo/2019/05/08/18/57/sculpture-4189352__340.jpg',
      descriptionEN: [
        'lkjdsalk;djasldh',
      ],
      descriptionAR: [
        'تمثال جامد جدا',
      ]),
  /*
  Artifact(
    id: 'a2',
    title: '',
    categoriesId: ['a2'],
    imageUrl:
        'https://cdn.pixabay.com/photo/2015/06/14/16/48/sarcophagus-809103_960_720.jpg',
  ),
  Artifact(
    id: 'a3',
    title: 'تمثال',
    categoriesId: ['a2'],
    imageUrl:
        'https://cdn.pixabay.com/photo/2019/03/07/12/50/egypt-4040121__340.jpg',
  ),
  Artifact(
    id: 'a4',
    title: 'اواني كانوبية',
    categoriesId: ['a5'],
    imageUrl: 'http://collezioni.museoegizio.it/assets/ph-gallery.png',
  ), */
];

List<Artifact_Overview> loadedArtifacts = [
  Artifact_Overview(
    id: 'a1',
    titleAR: 'تمثال 1',
    titleEN: 'statue',
    categoriesId: ['a1'],
    imageUrl: [
      'https://cdn.pixabay.com/photo/2019/05/08/18/57/sculpture-4189352__340.jpg'
    ],
    descriptionEN: ['lkjdsalk;djasldh'],
    descriptionAR: ['يشسيشسيشسي'],
  ),
  Artifact_Overview(
    id: 'a2',
    titleAR: 'تمثال 2',
    titleEN: 'statue 2',
    categoriesId: ['a1'],
    imageUrl: [
      'https://cdn.pixabay.com/photo/2015/06/14/16/48/sarcophagus-809103_960_720.jpg'
    ],
    descriptionEN: ['lkjdsalk;djasldh'],
    descriptionAR: ['تمثال جامد جدا'],
  ),
  Artifact_Overview(
    id: 'a3',
    titleAR: 'تمثال 3',
    titleEN: 'statue 3',
    categoriesId: ['a1'],
    imageUrl: [
      'https://cdn.pixabay.com/photo/2019/03/07/12/50/egypt-4040121__340.jpg'
    ],
    descriptionEN: ['lkjdsalk;djasldh'],
    descriptionAR: ['تمثال جامد نيك'],
  ),
  Artifact_Overview(
    id: 'a4',
    titleAR: 'تمثال 4',
    titleEN: 'statue4',
    categoriesId: ['a1'],
    imageUrl: [
      'https://cdn.pixabay.com/photo/2016/12/10/22/21/canopic-1898323__340.jpg'
    ],
    descriptionEN: ['lkjdsalk;djasldh'],
    descriptionAR: ['تمثال جامد اوي'],
  ),
  Artifact_Overview(
    id: 'a5',
    titleAR: 'تمثال الاله اوزوريس',
    titleEN: 'Statuette of the god Osiris',
    categoriesId: ['a1'],
    imageUrl: ['http://collezioni.museoegizio.it/assets/ph-gallery.png'],
    descriptionEN: [''],
    descriptionAR: ['تمثال جامد اوي'],
  ),
];

/*
'.',
'.',
'.',
'.',
'.',
'.',
'.',
'.',
'.',
'.',
*/
