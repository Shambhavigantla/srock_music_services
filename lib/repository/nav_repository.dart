import '../model/nav_item.dart';

class NavRepository {
  List<NavItem> getNavItems() {
    return [
      NavItem(
        iconPath: 'assets/icons/home.svg',
        label: 'Home',
        route: '/home',
      ),
      NavItem(
        iconPath: 'assets/icons/news.svg',
        label: 'News',
        route: '/news',
      ),
      NavItem(
        iconPath: 'assets/icons/music.svg',
        label: 'TrackBox',
        route: '/music',
      ),
      NavItem(
        iconPath: 'assets/icons/projects.svg',
         label: 'Projects', 
         route: '/playlist'),
    ];
  }
}