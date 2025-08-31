import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

import 'package:auto_route/auto_route.dart';

import 'package:test_ex1/presentation/constants/constants.dart';
import 'package:test_ex1/presentation/routing/app_routing.gr.dart';
import 'package:test_ex1/presentation/utils/utils.dart';
import 'package:test_ex1/presentation/widgets/widgets.dart';

class FollowedScreen extends StatelessWidget {
  const FollowedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        FirstSliverAppBar(title: context.l10n.followed),
        // Visibility(
        //   visible: tasks.isNotEmpty,
        //   replacement: EmptyState(
        //     message: context.l10n.emptySubscriptions,
        //     iconPath: AppIcons.search,
        //     needArrow: false,
        //   ),
        //   child: SliverPadding(
        //     padding: const P(horizontal: S.s16),
        //     sliver: SliverList(
        //       delegate: SliverChildBuilderDelegate(
        //         childCount: tasks.length,
        //         (context, index) {
        //           final task = tasks[index];
        //           final String countMembers = task.members
        //               .resolveCountMembers();
        //           final String countComplete = task.complete
        //               .resolveCountComplete();
        //           final blue = context.appColors.blueIndicator;
        //           final yellow = context.appColors.yellowIndicator;
        //           final orange = context.appColors.orangeIndicator;
        //           return Padding(
        //             padding: const P(bottom: S.s12),
        //             child: GestureDetector(
        //               onTap: () =>
        //                   context.pushRoute(TaskDetailRoute(task: task)),
        //               child: DecoratedBox(
        //                 decoration: BoxDecoration(
        //                   borderRadius: BorderRadius.circular(R.r24),
        //                   color: context.appColors.gray100,
        //                   boxShadow: [context.appColors.shadow1],
        //                 ),
        //                 child: Padding(
        //                   padding: const P(horizontal: S.s24, vertical: S.s24),
        //                   child: Row(
        //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                     children: [
        //                       Row(
        //                         children: [
        //                           SizedBox(
        //                             width: Sz.s24,
        //                             height: Sz.s48,
        //                             child: ClipRRect(
        //                               borderRadius: BorderRadius.circular(
        //                                 R.r10,
        //                               ),
        //                               child: ColoredBox(
        //                                 color:
        //                                     task.getActualStatus ==
        //                                         Status.lessHour
        //                                     ? blue
        //                                     : task.getActualStatus ==
        //                                           Status.lessDay
        //                                     ? yellow
        //                                     : orange,
        //                               ),
        //                             ),
        //                           ),
        //                           const SizedBox(width: S.s12),
        //                           Column(
        //                             crossAxisAlignment:
        //                                 CrossAxisAlignment.start,
        //                             children: [
        //                               Text(
        //                                 task.name,
        //                                 style: context.appTextStyle.headline2,
        //                                 overflow: TextOverflow.ellipsis,
        //                               ),
        //                               const SizedBox(height: S.s2),
        //                               Row(
        //                                 children: [
        //                                   _Text(
        //                                     text: context.l10n.members,
        //                                     count: countMembers,
        //                                   ),
        //                                   const SizedBox(width: S.s12),
        //                                   _Text(
        //                                     text: context.l10n.complete,
        //                                     count: countComplete,
        //                                   ),
        //                                 ],
        //                               ),
        //                             ],
        //                           ),
        //                         ],
        //                       ),
        //                       MyIconButton(
        //                         onPressed: () =>
        //                             handlePrayButtonPressed(context, task),
        //                         iconPath: AppIcons.prayArms,
        //                         backgroundColor: context.appColors.gray300,
        //                         width: Sz.s46,
        //                         height: Sz.s46,
        //                       ),
        //                     ],
        //                   ),
        //                 ),
        //               ),
        //             ),
        //           );
        //         },
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}

// class _Text extends StatelessWidget {
//   const _Text({required this.count, required this.text});
//   final String count;
//   final String text;

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Text(
//           text,
//           style: context.appTextStyle.body4.copyWith(
//             color: context.appColors.gray700,
//           ),
//         ),
//         const SizedBox(width: S.s4),
//         Text(count, style: context.appTextStyle.body3),
//       ],
//     );
//   }
// }
