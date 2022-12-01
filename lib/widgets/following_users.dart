import 'package:flutter/material.dart';
import 'package:social_ui/data/data.dart';
import 'package:social_ui/models/user_model.dart';

class FollowingUsers extends StatelessWidget {
  const FollowingUsers({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
          child: Text(
            'Following',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, letterSpacing: 1.2),
          ),
        ),
        SizedBox(
          height: 80,
          child: ListView.builder(
            padding: const EdgeInsets.only(left: 10),
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: users.length,
            itemBuilder: (BuildContext context, int index) {
              User user = users[index];
              return GestureDetector(
                onTap: () {},
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 2,
                          color: Theme.of(context).colorScheme.primary),
                      shape: BoxShape.circle,
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0, 2),
                            blurRadius: 6),
                      ]),
                  margin: const EdgeInsets.all(10),
                  child: ClipOval(
                    child: Image(
                        height: 60,
                        width: 60,
                        fit: BoxFit.cover,
                        image: AssetImage(user.profileImageUrl!)),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
