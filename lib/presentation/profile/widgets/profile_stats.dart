import 'package:flutter/material.dart';
import 'package:jini/presentation/profile/widgets/profile_stats_item.dart';

class ProfileStats extends StatelessWidget {
  const ProfileStats({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const ProfileStatItem(value: '18', title: 'Donations'),
          const VerticalDivider(color: Colors.white),
          const ProfileStatItem(value: '09', title: 'Requests'),
          const VerticalDivider(color: Colors.white),
          const ProfileStatItem(value: '12', title: 'Events'),
        ],
      ),
    );
  }
}
