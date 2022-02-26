import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Stack
    Widget stack = Stack(
      overflow: Overflow.visible,
      alignment: Alignment.center,
      children: [
        Image.asset(
          'images/banner.jpg',
          height: MediaQuery.of(context).size.height / 3,
          fit: BoxFit.cover,
        ),
        Positioned(
          bottom: -50.0,
          child: CircleAvatar(
            radius: 80,
            backgroundColor: Colors.white,
            backgroundImage: NetworkImage(
                'https://media-exp1.licdn.com/dms/image/C5635AQHAwchw4SWFUA/profile-framedphoto-shrink_200_200/0/1620122081134?e=1645977600&v=beta&t=3qkOKKxdjbzHtoRBUl_hc0Z8dum4Xoq7Ru9W6ZvsCuk'),
          ),
        )
      ],
    );

    Widget sizeBox = SizedBox(
      height: 40,
    );

    Widget detailProfile = ListTile(
      title: Center(
          child: Text(
        'Nurkholis Yusuf',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
      )),
      subtitle: Center(child: Text('Flutter Develoepr')),
    );

    Widget detailAbout = ListTile(
      title: Text(
        'About Me',
      ),
      subtitle: Text(
          'Hi, i\'m Nurkholis Yusuf from indonesia. I\'m and Flutter developer for company indonesia, Over 1 years of Experienced Software Development.',
          style: TextStyle(letterSpacing: 1)),
    );

    Widget buttonProfile = ElevatedButton(
        onPressed: () {},
        child: Wrap(
          children: [
            Icon(
              Icons.mail,
              size: 20.0,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'Hire Me!',
              style: TextStyle(
                fontSize: 16,
              ),
            )
          ],
        ));

    return Column(
      children: [stack, sizeBox, detailProfile, buttonProfile, detailAbout],
    );
  }
}
