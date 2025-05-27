# Music Services App - Flutter Assignment

## 📱 App Overview
A Flutter application showcasing music services with:
- Firebase Firestore integration
- MVVM architecture pattern with Provider state management
- Custom SVG icons
- Responsive UI for mobile and web

## Getting Started

### Prerequisites

- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- [Firebase Project](https://firebase.google.com/)
- A configured Firestore database

### Installation

1. **Clone the repository:**
   ```sh
   git clone https://github.com/Shambhavigantla/srock_music_services.git
   cd srock_music_services
   ```

2. **Install dependencies:**
   ## add dependencies in pubsec.yaml:
 ``` flutter:
    sdk: flutter
  firebase_core: ^2.15.1
  cloud_firestore: ^4.9.1
  provider: ^6.0.5
  flutter_svg: ^2.0.7
   ```
3. **Run in command shell**
   ```
   flutter pub get
   ```

4. **Add your Firebase configuration:**
   - Place your `google-services.json` (Android) and/or `GoogleService-Info.plist` (iOS) in the appropriate folders.
   - Update `firebase_options.dart` if needed.

5. **Run the app:**
   ```sh
   flutter run
   ```

### Project Structure (MVVM)

```
lib/

  model/          # Data models
     nav_item.dart # Navigation items model
     service_model.dart # Music services model

  view/           # UI screens and widgets
     widgets/ # Reusable components
         service_card.dart (if you want to reuse the ServiceCard widget)
         custom_bottom_nav.dart (if you have a custom bottom navigation bar)
     home_screen.dart
     service_detail_screen.dart

  viewmodel /      # State management (Provider)
      nav_viewmodel.dart # Navigation state
      service_viewmodel.dart # Services state

  repository/     # Firestore and data logic
      nav_repository.dart # Navigation data source
      service_repository.dart # Firestore service data

assets/
  icons/          # SVG icons for services and navigation

pubspec.yaml      # Dependencies and asset declarations
```

### Firestore Data Example

Each service document should look like:
```json
{
  "title": "Music Production",
  "description": "Custom instruments & film scoring",
  "icon": "assets/icons/music_production.svg"
}
```

### Assets

All SVG icons used in the app are stored in `assets/icons/` and declared in `pubspec.yaml`.

## License

[MIT](LICENSE)

---

**Made with Flutter &hearts;**

  
