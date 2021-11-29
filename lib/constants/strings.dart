import 'package:studio_app_ui/changepassword/changepassword.dart';
import 'package:studio_app_ui/privacypolicy/privacypolicy.dart';
import 'package:studio_app_ui/settings/languages.dart';
import 'package:studio_app_ui/settings/notifications.dart';

const String image = 'assets/static_images';
const String dynamicImage = 'assets/dynamic_images';

List drawerlist = [
  'Settings',
  'Sign Out',
];
List drawericnlist = [
  'images/setting.svg',
  'images/signout.svg',
];
List montaltotaluplist = ["Service", "Prix"];
List montaltotaldownlist = ["Réservation", "50€"];
List services = ["Mix", "Mastering", "Video clip", "Enregistrement", "Beat"];
List reviewnames = ["Jonson Wiliam", "Shikha Das", "Fiza Kubila"];
List reviewstimes = ["1 day ago", "2 month ago", "3 month ago"];
List chatnames = ["Sandra", "Lisa", "Mike", "Jennifer", "Travis"];
List lastchat = [
  "I would love to take this trip with ...",
  "Sure, lets do it.",
  "Yes, it was an amazing experience",
  "Loved it out there.",
  "Can't wait to do it again"
];
List chatimages = [
  "images/sandra.png",
  "images/lisa.png",
  "images/mike.png",
  "images/lisa.png",
  "images/mike.png",
];
List settingsicons = [
  "images/notifications.svg",
  "images/lockicon.svg",
  "images/language.svg",
  "images/privacypolicy.svg",
];
List settingsnames = [
  "Notifications",
  "Change Password",
  "Language",
  "Privacy Policy",
];

List languages = [
  "English (English)",
  "French (Français)",
];

List settingsnavigation = [
  NotificationsScreen(),
  ChangePassword(),
  LanguagesScreen(),
  const PrivacyPolicyScreen(),
];
List notificationstitle = [
  "Eugene Hanson",
  "From Toney Stark",
  "New Musicians ",
];
List notificationssubtitle = [
  "Booked your Reservation...",
  "You have received \$ 250 in wallet",
  "Explore new artists for you next event...",
];
List notificationstime = [
  "10:55 PM",
  "4:12 PM",
  "4:12 PM",
];
