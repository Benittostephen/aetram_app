# README.md

# AETRAM Flutter App

A modern financial application built with Flutter featuring Dashboard and Profile screens.

## Features

### Dashboard Screen

- Account balance display
- Services section (Deposit, Withdraw, Transfer, History)
- Live/Demo account toggle
- Account list with status indicators
- Create account functionality

### Profile Screen

- User profile with verification badge
- Personal information display
- Settings and preferences
- Edit profile capability

## Getting Started

### Prerequisites

- Flutter SDK (^3.7.0)
- Dart SDK
- Android Studio / VS Code
- iOS Simulator / Android Emulator

### Installation

1. Clone the repository

```bash
git clone <repository-url>
cd aetram_app
```

2. Install dependencies

```bash
flutter pub get
```

3. Add assets

- Place profile images in `assets/images/`
- Add font files in `assets/fonts/Inter/`

4. Run the app

```bash
flutter run
```

## Project Structure

```
lib/
├── main.dart                # Entry point
├── app.dart                 # App configuration
├── core/                    # Core utilities
│   ├── common_widgets/      # Common Widgets
│   ├── constants/           # App constants
│   └── theme/               # Theme configuration
├── features/                # Feature modules
    ├── chart/               # Chart feature
    ├── home/                # Home feature
    ├── profile/             # Profile feature
    └── trading/             # Trading feature

```

## Design System

### Colors

- Primary Dark: #1A1A1A
- Card Dark: #2A2A2A
- Golden: #D4AF37
- Green: #00C851
- Grey: #888888

### Typography

- Font Family: Inter
- Weights: Regular (400), Medium (500), SemiBold (600), Bold (700)

## Development Guidelines

### Code Style

- Follow Dart/Flutter conventions
- Use meaningful variable names
- Add comments for complex logic
- Keep widgets small and focused

### Testing

```bash
# Run unit tests
flutter test

# Run integration tests
flutter drive --target=test_driver/app.dart
```

### Building

```bash
# Build APK
flutter build apk

# Build iOS
flutter build ios
```

## Contributing

1. Create a feature branch
2. Make your changes
3. Add tests
4. Submit a pull request

---

# .gitignore

# Miscellaneous

*.class
*.log
*.pyc
*.swp
.DS_Store
.atom/
.buildlog/
.history
.svn/
migrate_working_dir/

# IntelliJ related

*.iml
*.ipr
*.iws
.idea/

# The .vscode folder contains launch configuration and tasks you configure in

# VS Code which you may wish to be included in version control, so this line

# is commented out by default.

#.vscode/

# Flutter/Dart/Pub related

**/doc/api/
**/ios/Flutter/.last_build_id
.dart_tool/
.flutter-plugins
.flutter-plugins-dependencies
.packages
.pub-cache/
.pub/
/build/

# Symbolication related

app.*.symbols

# Obfuscation related

app.*.map.json

# Android Studio will place build artifacts here

/android/app/debug
/android/app/profile
/android/app/release

---

# assets/data/mock_data.json

{
"user": {
"name": "Dhana",
"email": "user_dhana@gmail.com",
"phone": "+91 890234567",
"dateOfBirth": "December 31, 1996",
"profileImageUrl": "assets/images/profile_image.jpg",
"isVerified": true
},
"account": {
"accountId": "LND-USD-000354",
"accountType": "USD Landing Account",
"balance": 67908.86,
"currency": "USD"
},
"accounts": [
{
"accountNumber": "5000510441",
"accountId": "MT5-USD-005553113",
"balance": 18623.90,
"isActive": true,
"type": "MT5"
},
{
"accountNumber": "5000054135",
"accountId": "0xA13...F6B8",
"balance": 0.90,
"isActive": true,
"type": "Crypto"
}
],
"services": [
{
"name": "Deposit",
"icon": "add_circle_outline",
"enabled": true
},
{
"name": "Withdraw",
"icon": "remove_circle_outline",
"enabled": true
},
{
"name": "Transfer",
"icon": "swap_horiz",
"enabled": true
},
{
"name": "History",
"icon": "history",
"enabled": true
}
]
}
