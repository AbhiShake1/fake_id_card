// extension DateTimeX on DateTime {
//   int get waitTime => add(
//         Duration(
//           hours: FirebaseRemoteConfig.instance.getInt(AppConst.waitHoursSTR),
//         ),
//       ).difference(DateTime.now()).inSeconds;
// }
