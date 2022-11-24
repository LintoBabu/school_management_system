import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      'https://careersmart.org.uk/sites/default/files/2016-12/Quality-management-systems.jpg',
      'https://www.entab.in/images/Schhol-ERP-software.jpg',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUINmLo-0q5Y9B8GyuLrd1zZ4OE9D1w8kjAw&usqp=CAU',
      'https://assets.thehansindia.com/h-upload/2020/04/11/961042-students.jpg',
      "https://images.indianexpress.com/2020/02/College-student.jpg"
    ];

    final List<Widget> imageSliders = imgList
        .map((item) => Container(
              child: Container(
                margin: EdgeInsets.all(5.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    child: Stack(
                      children: <Widget>[
                        Image.network(item, fit: BoxFit.cover, width: 1000.0),
                        Positioned(
                          bottom: 0.0,
                          left: 0.0,
                          right: 0.0,
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromARGB(200, 0, 0, 0),
                                  Color.fromARGB(0, 0, 0, 0)
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 20.0),
                          ),
                        ),
                      ],
                    )),
              ),
            ))
        .toList();

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xFFD4E7FE),
          title: Text(
            'Management Section',
            style: GoogleFonts.alegreyaSc(fontSize: 25, color: Colors.black,fontWeight: FontWeight.bold),
          ),
          leading: Icon(Icons.menu_outlined,color: Colors.black,),
        ),
        backgroundColor: Color(0xFFD4E7FE),
        bottomNavigationBar: Container(
          height: 55,
          color: Colors.transparent,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            backgroundColor: Color(0xFFD4E7FE),
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle_sharp, color: Colors.black),
                  label: 'Home',
                  backgroundColor: Color(0xFFD4E7FE)),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings, color: Colors.black),
                  label: 'Settings',
                  backgroundColor: Colors.blueGrey),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.newspaper,
                    color: Colors.black,
                  ),
                  label: 'About',
                  backgroundColor: Colors.blueGrey),
            ],
          ),
        ),
        body: Column(children: [
          Container(
            child: SafeArea(
              child: Column(
                children: <Widget>[
                  CarouselSlider(
                    options: CarouselOptions(
                      autoPlay: true,
                      aspectRatio: 1.9,
                      viewportFraction: 0.9,
                      enlargeStrategy: CenterPageEnlargeStrategy.height,
                      enlargeCenterPage: true,
                    ),
                    items: imageSliders,
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
          ),
          Expanded(
            child: GridView.count(
              padding: EdgeInsets.all(10),
              crossAxisCount: 3,
              childAspectRatio: .85,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              children: [
                card(
                  title: 'Teachers',
                  img:
                      "https://img.freepik.com/free-vector/teacher-concept-illustration_114360-1638.jpg?size=338&ext=jpg",
                ),
                card(
                  title: 'Attendance',
                  img:
                      "https://img.freepik.com/free-photo/green-apple-pile-books-notebook-pencils-table-with-blurred-white-board-back-school-concept_482257-24191.jpg?size=626&ext=jpg",
                ),
                card(
                  title: 'Exams',
                  img:
                      "https://collegeprep.uworld.com/wp-content/uploads/2021/06/Feature-Image-What-are-the-SAT-exam-registration-requirements.jpg",
                ),
                card(
                  title: 'Results',
                  img:
                      "https://cdn.xxl.thumbs.canstockphoto.com/results-sign-results-paper-origami-speech-bubble-results-tag-results-banner-vector-clipart_csp60138201.jpg",
                ),
                card(
                  title: 'Registration',
                  img:
                      "https://zestechinc.com/wp-content/uploads/2017/02/registration.jpg",
                ),
                card(
                  title: 'Time Table',
                  img: "https://educloud.app/lms/src/timetable/hero.png",
                ),
                card(
                  title: 'School Bus',
                  img:
                      "https://cms.eichertrucksandbuses.com/uploads/truck/sub-category/a933e5958e4a354cfb8d22665bd244fd.png",
                ),
                card(
                  title: 'Holidays',
                  img:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXuV2I0T_UvclkddZFlEIzUNkGsEwkk9982Q&usqp=CAU",
                ),
                card(
                  title: 'Library',
                  img:
                      "https://images.unsplash.com/photo-1521587760476-6c12a4b040da?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8bGlicmFyeXxlbnwwfHwwfHw%3D&w=1000&q=80",
                ),
              ],
            ),
          )
        ]));
  }
}

class card extends StatelessWidget {
  final String img;
  final String title;
  const card({
    Key? key,
    required this.img,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 7,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(13)),
        child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {},
              child: Column(children: [
                Spacer(),
                Image.network(
                  img,
                  fit: BoxFit.cover,
                ),
                Spacer(),
                Text(title,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.merriweather(
                        fontSize: 13, fontWeight: FontWeight.bold))
              ]),
            )),
      ),
    );
  }
}
