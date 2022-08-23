import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:jini/domain/core/blood_group.dart';
import 'package:jini/presentation/core/common/image_resources.dart';
import 'package:jini/presentation/core/common/j_screen_util.dart';
import 'package:jini/presentation/core/common/j_widget_styles.dart';
import 'package:jini/presentation/profile/widgets/blood_group_grid.dart';

class CreateRequestPage extends StatelessWidget {
  const CreateRequestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              padding: JScreenUtil.padFromLTRB(4, 20, 2, 0),
              height: JScreenUtil.sh(0.3),
              width: JScreenUtil.sw(1),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(JScreenUtil.r(40)),
                ),
              ),
              child: Image.asset(ImageResources.bloodDonation),
            ),
            JScreenUtil.vSpace(18),
            Padding(
              padding: JScreenUtil.padSymmetric(horizontal: 18),
              child: Text(
                'Select Blood group',
                style: TextStyle(
                  fontSize: JScreenUtil.r(18),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            JScreenUtil.hSpace(20),
            GridView.builder(
              primary: false,
              shrinkWrap: true,
              itemCount: BloodGroup.values.length,
              padding: JScreenUtil.globalPadding,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisExtent: JScreenUtil.sh(0.08),
                crossAxisSpacing: JScreenUtil.r(10),
                mainAxisSpacing: JScreenUtil.r(10),
              ),
              itemBuilder: (context, i) {
                final _bg = BloodGroup.values[i];
                final selected = true;
                return Parent(
                  gesture: Gestures(),
                  style: JWidgetStyles.selectItemsStyles(selected, theme),
                  child: Text(
                    _bg.value,
                    style: textTheme.titleMedium?.copyWith(
                      color:
                          selected ? Colors.white : textTheme.bodyLarge?.color,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
