# 🏀 Basketball Score Tracker

[![Flutter Version](https://img.shields.io/badge/Flutter-3.0+-blue.svg)](https://flutter.dev/)
[![Dart Version](https://img.shields.io/badge/Dart-2.17+-blue.svg)](https://dart.dev/)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Platform](https://img.shields.io/badge/Platform-Android%20%7C%20iOS-lightgrey.svg)](https://flutter.dev/)

> **A comprehensive basketball score tracking application with complete player management system**

Basketball Score Tracker is an advanced digital solution specifically designed for basketball coaches and sports teams to track scores and manage player data efficiently and effectively. The app provides an intuitive user interface and advanced features that make game monitoring a smooth and organized experience.

---

## ✨ Key Features

### 🎯 **Advanced Score Tracking**
- ✅ **Real-time Score Updates** - Add points for both teams with a single tap
- ✅ **Multiple Point Options** - Add 1, 2, or 3 points based on shot type
- ✅ **Undo Functionality** - Subtract points feature to correct mistakes
- ✅ **Quick Reset** - Clear scores and start a new game instantly

### 👥 **Comprehensive Player Management**
- 📊 **Player Database** - Detailed view of all team members
- 🔍 **Detailed Information** - Player name, position, jersey number, and contact details
- 📈 **Advanced Statistics** - Display personal statistics for each player
- 🎨 **Interactive Design** - Attractive interface for displaying player data

### 🎨 **Outstanding User Experience**
- 🚀 **Professional Splash Screen** - Interactive startup experience with app logo
- 📱 **Responsive Design** - Works efficiently on all screen sizes
- 🎭 **Distinctive Team Colors** - Clear visual distinction between teams
- ⚡ **Fast Performance** - Instant response to all interactions

---

## 📋 System Requirements

| Requirement | Required Version | Link |
|-------------|------------------|------|
| **Flutter SDK** | 3.0.0 or higher | [Download Flutter](https://flutter.dev/docs/get-started/install) |
| **Dart SDK** | 2.17.0 or higher | [Download Dart](https://dart.dev/get-dart) |
| **Android Studio/VS Code** | Latest version | [Android Studio](https://developer.android.com/studio) / [VS Code](https://code.visualstudio.com/) |
| **Git** | Latest version | [Download Git](https://git-scm.com/) |

### System Requirements:
- **Android:** API level 21 (Android 5.0) or higher
- **iOS:** iOS 11.0 or higher
- **Disk Space:** At least 500 MB

---

## 🚀 Installation Steps

### 1️⃣ **Clone the Repository**
```bash
git clone https://github.com/Zeyad-GenAI/Basketball_Score_App.git
cd Basketball_Score_App
```

### 2️⃣ **Install Dependencies**
```bash
flutter pub get
```

### 3️⃣ **Verify Flutter Setup**
```bash
flutter doctor
```

### 4️⃣ **Run the Application**

**For Android:**
```bash
flutter run
```

**For iOS:**
```bash
flutter run -d ios
```

**For Web:**
```bash
flutter run -d web
```

### 5️⃣ **Build for Production**

**Android APK:**
```bash
flutter build apk --release
```

**iOS:**
```bash
flutter build ios --release
```

---

## 📱 How to Use

### 🎮 **Score Tracking**
1. **Start Game:** Open the app and select "Get Started" from the welcome screen
2. **Add Points:** Press the point buttons (+1, +2, +3) for each team
3. **Correct Scores:** Use the "Subtract" button to remove one point
4. **Reset:** Press the refresh icon to start a new game

### 👥 **Player Management**
1. **View Player List:** Press the people icon in the bottom corner
2. **View Player Details:** Tap on any player to view their detailed information
3. **Statistics:** Review player statistics in the details screen

### 🎯 **Tips for Optimal Use**
- Use landscape mode for the best viewing experience
- Make sure to save results before closing the app
- Regularly review player statistics to track performance

---

## 📁 Project Structure

```
basketball_score_tracker/
├── 📱 lib/
│   ├── 🏠 main.dart                 # App entry point and routing setup
│   ├── 🎯 home_screen.dart          # Main screen for score tracking
│   ├── 🎬 splash_screen.dart        # Welcome and loading screen
│   ├── 📚 onboarding_screen.dart    # App introduction screens
│   ├── 👤 player.dart               # Player data model
│   ├── 📋 player_list_screen.dart   # Player list screen
│   ├── 📊 player_detail_screen.dart # Player detail screen
│   └── 🔧 player_service.dart       # Player data management service
├── 📁 android/                     # Android files
├── 📁 ios/                         # iOS files
├── 📁 assets/                      # Images and resources
├── 📄 pubspec.yaml                 # Project dependencies
└── 📖 README.md                    # Project documentation
```

### Main Files Description:

| File | Description |
|------|-------------|
| `main.dart` | Contains basic app setup and routing configuration between screens |
| `home_screen.dart` | Main interface for score tracking with all control elements |
| `player_service.dart` | Manages player data and provides interface to access it |
| `player.dart` | Defines player data structure with all required properties |

---

## 🤝 Contributing to the Project

We welcome your contributions to developing this project! Please follow these steps:

### 📝 **Before Contributing**
1. Make sure to read the [Contributing Guide](CONTRIBUTING.md)
2. Review the [open issues list](https://github.com/Zeyad-GenAI/Basketball_Score_App/issues)
3. Look for issues labeled "good first issue" for beginners

### 🔧 **Contribution Steps**
1. **Fork the project** to your personal account
2. **Create a new branch** for the desired feature:
   ```bash
   git checkout -b feature/amazing-feature
   ```
3. **Implement changes** with appropriate tests
4. **Commit changes** with a clear message:
   ```bash
   git commit -m "Add: amazing new feature"
   ```
5. **Push to branch**:
   ```bash
   git push origin feature/amazing-feature
   ```
6. **Create Pull Request** with detailed description of changes

### 🎯 **Code Guidelines**
- Follow Dart/Flutter coding standards
- Add explanatory comments for complex code
- Ensure all tests pass
- Use clear variable and function names

---

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for full details.

```
MIT License

Copyright (c) 2024 Basketball Score Tracker Team

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense and/or sell
copies of the Software and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.
```

---

## 🙏 Credits and Acknowledgments

### 👨‍👩‍👧‍👦 **Development Team**
- **Zeyad Mohamed** - Power Forward & Lead Developer
- **Abdulhamid Ahmed** - Point Guard & UI/UX Designer  
- **Mahmoud Abdalaziz** - Power Forward & Backend Developer
- **Abdallah Emad** - Small Forward & Quality Assurance
- **Ahmed Muhammad** - Center & DevOps Engineer

### 🛠️ **Technologies Used**
- [Flutter](https://flutter.dev/) - Application development framework
- [Dart](https://dart.dev/) - Primary programming language
- [Material Design](https://material.io/) - Design system

### 📚 **Sources of Inspiration**
- [Flutter Documentation](https://docs.flutter.dev/)
- [Material Design Guidelines](https://material.io/design)
- Arabic Flutter developers community

### 💝 **Special Thanks**
- All contributors to open-source Flutter projects
- Arabic GitHub community for support and assistance
- Coaches and athletes who provided valuable feedback

---

## 📞 Contact and Support

### 📧 **For Inquiries**
- **Email:** zeyadelfaramawy@gmail.com
- **GitHub Issues:** [Open new issue](https://github.com/Zeyad-GenAI/Basketball_Score_App/issues/new)

---

<div align="center">

### 🏀 **Made with ❤️ for Sports Excellence**

**If you liked the project, don't forget to give it a ⭐ on GitHub!**

[⬆️ Back to Top](#-basketball-score-tracker)

</div>
