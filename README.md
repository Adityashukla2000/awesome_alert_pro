# 🚀 Awesome Alert

A beautiful, customizable, and modern Flutter alert dialog package with multiple alert types and an easy-to-use API.
Designed to deliver a premium UI experience with minimal effort.

---

## ✨ Features

* 🎨 Modern & clean UI design
* ⚡ Multiple alert types: **Success, Error, Info**
* 🧩 Fully customizable (text, buttons, behavior)
* 📱 Responsive & production-ready
* 🌗 Works perfectly with dark themes
* 🚀 Simple one-line usage helper
* 🔥 Smooth blur background effect

---

## 📦 Getting Started

Add the package to your `pubspec.yaml`:

```yaml
dependencies:
  awesome_alert: ^0.0.1
```

Then run:

```bash
flutter pub get
```

---

## 🛠 Usage

### 🔹 1. Import Package

```dart
import 'package:awesome_alert/awesome_alert.dart';
```

---

### 🔹 2. Show Alert (Recommended)

```dart
showAwesomeAlert(
  context: context,
  title: "Success",
  message: "Your data has been saved successfully",
  type: AlertType.success,
  onConfirm: () {
    print("Confirmed");
  },
);
```

---

### 🔹 3. Different Alert Types

```dart
// ✅ Success Alert
type: AlertType.success

// ❌ Error Alert
type: AlertType.error

// ℹ️ Info Alert
type: AlertType.info
```

---

### 🔹 4. Single Button Alert

```dart
showAwesomeAlert(
  context: context,
  title: "Info",
  message: "This is a single button alert",
  isSingleButton: true,
  onConfirm: () {},
);
```

---

### 🔹 5. Custom Button Text

```dart
AwesomeAlert(
  title: "Delete Item",
  message: "Are you sure?",
  positiveText: "YES",
  negativeText: "NO",
  onConfirm: () {},
)
```

---

## 📸 Screenshots

> Add your screenshots here for better visibility on pub.dev

---

## 🧱 Architecture

This package follows a clean and modular structure:

* `AwesomeAlert` → Main dialog UI
* `AlertConfig` → Handles colors & icons
* `AlertIcon` → Custom icon widget
* `PrimaryButton / SecondaryButton` → Reusable buttons
* `showAwesomeAlert()` → Helper function

---

## 🤝 Contributing

Contributions are welcome!
If you’d like to improve this package:

1. Fork the repo
2. Create a new branch
3. Make your changes
4. Submit a pull request

---

## 🐛 Issues & Feedback

If you find any bugs or have suggestions, feel free to open an issue.

---

## 📄 License

This project is licensed under the MIT License.

---

## ❤️ Support

If you like this package, give it a ⭐ on GitHub and share it with others!
