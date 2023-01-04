import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilScreen extends StatelessWidget   {

  @override
  const ProfilScreen({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/back_profile.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          color: Colors.transparent,
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.8,
              leading: Padding(
                padding: const EdgeInsets.all(17.0),
                child: Image.asset('assets/left_back_icon.png'),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(17.0),
                  child: Image.asset('assets/menu_ic.png'),
                )
              ],
            ),
            body:SingleChildScrollView(
              child: Container(
                height: size.height,
                child: Column(
                  children: [
                        ProfilePic(),
                        //SizedBox(height: 10.0),
                        Container(
                          color: Colors.white54,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ProfileBody(),
                          ),
                        ),
                    ]),
              ),
            ),
            bottomNavigationBar:Container(
              height: 54,
              child: BottomNavigationBar(
                    backgroundColor: Colors.white70,
                    items: [
                    BottomNavigationBarItem(icon: Icon(Icons.home_outlined,color: Colors.grey,), label: 'Home'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.message_sharp,color: Color(0xff8B4FFF), ),label: 'Home',),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.favorite_outline,color: Colors.grey, ), label: 'Home'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.person_outline,color: Colors.grey,), label: 'Home'),
                  ],),
            ),
            ),
            ),
      ],
    );
  }
}

class ProfilePic extends StatefulWidget {
  @override
  State<ProfilePic> createState() => _ProfilePicState();

}

class _ProfilePicState extends State<ProfilePic> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10, right: 10, top: 50),
          child: Container(
            width: size.width,
            decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Column(
                children: [
                  Text(
                    'Maria',
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 25.0),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Padding(//https://github.com/khawlaboucha/profile_ui_flutter.git
                    padding: EdgeInsets.all(6.0),
                    child: Text(
                      'Photography teacher with 15 years of experience , I use artistic knowledge to '
                          'improve and compose photographs ',
                      style: TextStyle(color: Colors.grey[600], fontSize: 16.0),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only( left: 35, right: 15,bottom: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 230,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Follow',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 18.0),
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff0B4FFF)),
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Container(
                            height: 35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4.0),
                              color: Color(0xff0B4FFF),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Image.asset('assets/send_icon.png'),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/profile_photo.jpg'),
                      fit: BoxFit.cover,
                    )),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
class ProfileBody extends StatefulWidget {
  const ProfileBody({Key? key}) : super(key: key);

  @override
  State<ProfileBody> createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> {
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return  Row(
      mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Expanded(
             child:Container(
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(15.0),
                 color: Color(0xffF8F8FA).withOpacity(0.8),
               ),
               child: Padding(
                 padding: const EdgeInsets.only(top:55),
                 child: Column(
                  children: const [
                    CommonText(KValue: '10K', likelabel: 'Like',),
                    Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Divider(thickness: 1.0,),
                    ),
                    CommonText(KValue: '528', likelabel: 'Following',),
                    Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Divider(thickness: 1.0,),
                    ),
                    CommonText(KValue: '1.2K', likelabel: 'Followers',),
                  ],
          ),
               ),
             ),),
           Expanded(
               flex: 3,
               child:Column(
                 children: [
                   ProfileRightSide(),
                 ],
               )),
        ],

    );
  }
}
class CommonText extends StatelessWidget {
  final String? KValue;
  final String? likelabel;
  const CommonText({Key? key, required this.KValue, required this.likelabel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Container(
      //height: 80,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Text('${KValue}',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
            SizedBox(height: 5.0,),
            Text('${likelabel}',style: TextStyle(color: Colors.grey),),


          ],
        ),
      ),
    );
  }
}
class ProfileRightSide extends StatelessWidget {
  const ProfileRightSide({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Friends',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
          ),
          Container(
            height: 80.0,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                height: 88,
                child: GridView.count(
                    crossAxisCount: 1,
                scrollDirection: Axis.horizontal,
                  children: const [
                    CircularPic(picUrl: 'assets/first_friend.jpeg',),
                    CircularPic(picUrl: 'assets/second_friend.jpg',),
                    CircularPic(picUrl: 'assets/fourth_friend.jpg',),
                    CircularPic(picUrl: 'assets/third_friend.jpg',),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Gallery',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
          ),
          Container(
            height: size.height*0.30,
                child: GridView.count(
                  crossAxisCount: 2,
                  scrollDirection: Axis.vertical,
                  children: const [
                    GaleryPic(topLeftRadius: true,topRightRadius: false,
                    bottomLeftRadius: false,bottomRightRadius: false,galeryUrl: 'assets/galery_first_img.jpg',),
                    GaleryPic(topLeftRadius: false,topRightRadius: true,
                    bottomLeftRadius: false,bottomRightRadius: false,galeryUrl: 'assets/galery_second_img.jpg',),
                    GaleryPic(topLeftRadius:false,topRightRadius: false,
                      bottomLeftRadius: false,bottomRightRadius: false,galeryUrl: 'assets/galery_third_img.jpg',),
                    GaleryPic(topLeftRadius: false,topRightRadius: false,
                      bottomLeftRadius: false,bottomRightRadius: false,galeryUrl: 'assets/galery_fourth_img.jpg',),
                    GaleryPic(topLeftRadius: false,topRightRadius: false,
                      bottomLeftRadius: true,bottomRightRadius: false,galeryUrl: 'assets/galery_fifth_img.jpg',),
                    GaleryPic(topLeftRadius: false,topRightRadius: false,
                      bottomLeftRadius: false,bottomRightRadius: true,galeryUrl: 'assets/galery_seven_img.jpg',),
                  ],
                ),
              ),


        ],
      ),
    );
  }
}
class CircularPic extends StatelessWidget {
  final String picUrl;
  const CircularPic({Key? key, required this.picUrl}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(picUrl),
                  fit: BoxFit.cover,
                )),
          ),
        ),
      ),
    );
  }
}
class GaleryPic extends StatelessWidget {
  final bool topLeftRadius;
  final bool topRightRadius;
  final bool bottomLeftRadius;
  final bool bottomRightRadius;
  final String? galeryUrl;
  const GaleryPic({Key? key, required this.topLeftRadius, required this.topRightRadius, required this.bottomLeftRadius, required this.bottomRightRadius, this.galeryUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft:topLeftRadius? Radius.circular(20.0):Radius.circular(0.0),
            topRight:topRightRadius? Radius.circular(20.0):Radius.circular(0.0),
            bottomLeft:bottomLeftRadius? Radius.circular(20.0):Radius.circular(0.0),
            bottomRight:bottomRightRadius? Radius.circular(20.0):Radius.circular(0.0),
          ),
              image: DecorationImage(
            image: AssetImage(galeryUrl??'assets/galery_first_img.jpg'),
                fit: BoxFit.cover
        )
        ),
      ),
    );
  }
}




