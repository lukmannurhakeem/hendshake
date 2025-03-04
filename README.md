# HendShake

A Flutter application implementing MVVM architecture with Provider for state management.

![Flutter Version](https://img.shields.io/badge/Flutter-3.13.9-blue.svg)
![License](https://img.shields.io/badge/License-MIT-green.svg)

## 📋 Overview

HendShake demonstrates MVVM (Model-View-ViewModel) design pattern integration in Flutter, with local storage options including Hive. The app showcases proper architecture, state management, and exception handling techniques.

## 🚀 Getting Started

### Prerequisites
- Flutter SDK (version 3.13.9 recommended)
- An IDE (VS Code, Android Studio, etc.)
- FVM (Flutter Version Management) - optional

### Installation

1. Clone the repository
   ```bash
   git clone https://github.com/yourusername/hendshake.git
   cd hendshake
   ```

2. If using FVM, set the Flutter version
   ```bash
   fvm use 3.13.9
   ```

3. Install dependencies
   ```bash
   fvm flutter pub get
   # or without FVM:
   # flutter pub get
   ```

4. Run the application
   ```bash
   fvm flutter run
   # or without FVM:
   # flutter run
   ```

## 📱 Features

- MVVM Architecture
- Provider State Management
- Local Storage with Hive
- Activity Tracking and History
- Robust Error Handling
- Dio for API Integration

## 📷 Screenshots

### Initial App State
![Initial App State](https://github.com/user-attachments/assets/742e3359-46a3-474d-a75f-88f8a276cf3d)
<p align="center"><i>User first opens app without selected type</i></p>

### Hive Local Storage
![Hive Local Storage](https://github.com/user-attachments/assets/d8839c5e-a22e-40df-b6d0-04f9ba6f2fb4)  
<p align="center"><i>App with Hive local selected type</i></p>

### Activity States
<table>
  <tr>
    <td width="50%">
      <img src="https://github.com/user-attachments/assets/f67e4728-c0ae-42f2-a35b-120b375a36c0" alt="Fetch without type">
      <p align="center"><i>Fetching activity (no type selected)</i></p>
    </td>
    <td width="50%">
      <img src="https://github.com/user-attachments/assets/98b9f406-ba12-421a-86f8-834fdfaa9572" alt="History without type">
      <p align="center"><i>Activity history (no type selected)</i></p>
    </td>
  </tr>
  <tr>
    <td width="50%">
      <img src="https://github.com/user-attachments/assets/c344558a-abde-45a8-ae3a-f9e56b47414b" alt="Fetch with type">
      <p align="center"><i>Fetching activity (with type selected)</i></p>
    </td>
    <td width="50%">
      <img src="https://github.com/user-attachments/assets/4816b321-cb4e-46f3-b179-a0483782dfbc" alt="History with type">
      <p align="center"><i>Activity history (with type selected)</i></p>
    </td>
  </tr>
</table>

## 🔍 API Testing with Dio Logger

### Request Logging
![Request GET](https://github.com/user-attachments/assets/bccf73ee-6680-49bc-83c8-e95ad3a55168)

### Response Logging
![Response GET](https://github.com/user-attachments/assets/8e0e3c32-bde6-4b4c-82b7-7e7a46aa5a25)

## ⚠️ Exception Handling

### API Error Handling
![API Error Handling](https://github.com/user-attachments/assets/a2a58ed3-7632-40f4-88dc-4236093ae33f)

### UI Feedback
![Error Snackbar](https://github.com/user-attachments/assets/caf58f13-76ee-42eb-ab73-3332490efef6)
<p align="center"><i>Failed operation with user feedback via Snackbar</i></p>

## 🛠️ Project Structure

```
lib/
├── models/        # Data models
├── viewmodels/    # Business logic and state management
├── views/         # UI components
├── services/      # API and local storage services
└── utils/         # Helper functions and constants
```

## 🤝 Contributing

Contributions, issues, and feature requests are welcome! Feel free to check the [issues page](https://github.com/yourusername/hendshake/issues).

## 📝 License

This project is [MIT](LICENSE) licensed.
