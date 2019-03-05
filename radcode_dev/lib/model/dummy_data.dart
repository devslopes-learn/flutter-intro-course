import 'user.dart';
import 'post.dart';


User getUser() {
  final posts = [
    Post('iOS 12 animation tutorial', 'https://youtube.com', ['iOS', 'Mobile']),
    Post('iOS 13 animation tutorial', 'https://youtube.com', ['iOS', 'Mobile']),
    Post('iOS 14 animation tutorial. Learn to build your very own animations', 'https://youtube.com', ['iOS', 'Mobile']),
    Post('iOS 15 animation tutorial', 'https://youtube.com', ['iOS', 'Mobile']),
    Post('iOS 16 animation tutorial', 'https://youtube.com', ['iOS', 'Mobile']),
    Post('iOS 14 animation tutorial. Learn to build your very own animations', 'https://youtube.com', ['iOS', 'Mobile']),
    Post('iOS 14 animation tutorial. Learn to build your very own animations', 'https://youtube.com', ['iOS', 'Mobile']),
    Post('iOS 14 animation tutorial. Learn to build your very own animations', 'https://youtube.com', ['iOS', 'Mobile']),
    Post('iOS 14 animation tutorial. Learn to build your very own animations', 'https://youtube.com', ['iOS', 'Mobile']),
    Post('iOS 14 animation tutorial. Learn to build your very own animations', 'https://youtube.com', ['iOS', 'Mobile']),
    Post('iOS 14 animation tutorial. Learn to build your very own animations', 'https://youtube.com', ['iOS', 'Mobile'])
  ];
  return User('kilokiller', 'kilo@killer.com', posts);
}