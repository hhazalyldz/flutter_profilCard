import 'package:flutter/material.dart';

final double container_width = 300;
final String img_url =
    'https://media-exp1.licdn.com/dms/image/C4D03AQE9cSQlw6CMiQ/profile-displayphoto-shrink_200_200/0/1616763483914?e=1625702400&v=beta&t=DBVqXh1tgPW1m6XcbIe6MkFg8029BgQA8oaoip0edbw';

class ProfileContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.red,
      width: container_width,
      child: Column(
        children: [
          ProfileIcon(),
          SizedBox(height: 20),
          Text(
            "Hazal Yıldız",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Flutter Developer",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              letterSpacing: 5,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileIcon extends StatelessWidget {
  const ProfileIcon({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: NetworkImage(img_url),
        ),
      ),
    );
  }
}
