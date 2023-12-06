# <div align="center">🎳 Flutter Customized Dialogs 🎳</div>


## 🚀 Getting Started

- A versatile and easy-to-use Flutter repo that provides a collection of customizable dialogs for your Flutter applications. This repo simplifies the process of creating and managing dialogs with various styles, animations, and interactive elements. Elevate the user experience in your app by seamlessly integrating tailored dialogs that align with your design aesthetics.


## 🎲 Features

- **Android dialog:** Simplifie the creation of dialog that adhere to the visual style guidelines of Android, offering a consistent and familiar experience for Android users.

- **iOS Dialog:** Simplifie the creation of dialog that adhere to the visual style guidelines of iOS, offering a consistent and familiar experience for iOS users.

- **Customized dialog based on platform:** Whether your app is running on Android or iOS, this package allows you to create dialogs that feel native to each platform, providing a seamless and cohesive user experience.

- **Animated dialog:** These dialog feature smooth transitions and animations, adding a touch of elegance to your app. Easily integrate animated dialogs that adapt to platform-specific preferences for a cohesive and engaging user interface.


## ⚙️ Customization

- Customize the appearance and behavior of the clipboard according to your requirements:

1- **Android dialog**

```dart
class AppDialogs {
  static androidDialog(BuildContext context, String title, String content) {
    return AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(false),
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () => Navigator.of(context).pop(true),
          child: const Text('Delete'),
        ),
      ],
    );
  }
}
```

2- **iOS dialog**

```dart
class AppDialogs {
  static iosDialog(BuildContext context, String title, String content) {
    return CupertinoAlertDialog(
      title: Text(title),
      content: Text(content),
      actions: [
        CupertinoDialogAction(
          child: const Text('Cancel'),
          onPressed: () => Navigator.of(context).pop(false),
        ),
        CupertinoDialogAction(
          isDefaultAction: true,
          child: const Text('Confirm'),
          onPressed: () => Navigator.of(context).pop(true),
        ),
      ],
    );
  }
}
```

3- **Customized dialog**

```dart
class AppDialogs {
  static customizedDialog(BuildContext context, String title, String content) {
    return Platform.isAndroid
        ? androidDialog(context, title, content)
        : iosDialog(context, title, content);
  }
}
```

3- **Animated dialog**

```dart
class AppDialogs {
  static animatedDialog(BuildContext context, Widget dialog) {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      transitionDuration: const Duration(milliseconds: 400),
      pageBuilder: (context, _, __) {
        return const SizedBox.shrink();
      },
      transitionBuilder: (context, _, __, widget) {
        return ScaleTransition(
          scale: Tween<double>(begin: 0.5, end: 1.0).animate(_),
          child: FadeTransition(
              opacity: Tween<double>(begin: 0.5, end: 1.0).animate(_),
              child: dialog),
        );
      },
    );
  }
}
```


## 📱 UI

![Customized Dialogs](https://github.com/Shalaby-VBS/Flutter_Customized_Dialogs/assets/149938388/28bb7051-da75-4fa2-ba4c-c2d4b4b38934)


## 🛠 Dependencies

- Haven't any Dependencies 🚫

## 🫴 Contributing

- Contributions are welcome 💜
- If you find any issues or have suggestions for improvements, feel free to open an issue or submit a pull request.

## 💳 License

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Version](https://img.shields.io/badge/version-1.0.0-blue.svg)](https://github.com/Shalaby-VBS/Flutter_Customized_Dialogs)
- This package is distributed under the MIT License. Feel free to use and modify it according to your project requirements.

## 🤝 Contact With Me

[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/ahmed-shalaby-21196521b/) 
[![Gmail](https://img.shields.io/badge/Gmail-333333?style=for-the-badge&logo=gmail&logoColor=red)](https://www.shalaby.vbs@gmail.com)
[![Facebook](https://img.shields.io/badge/Facebook-0077B5?style=for-the-badge&logo=facebook&logoColor=white)](https://www.facebook.com/profile.php?id=100093012790432&mibextid=hIlR13)
[![Instagram](https://img.shields.io/badge/Instagram-E4405F?style=for-the-badge&logo=instagram&logoColor=white)](https://www.instagram.com/sh4l4by/)

</div>

## 💖 Support

- If you find this tutorial useful or learned something from this code, consider show some ❤️ by starring this repo.
