
# 🔐 Flutter GetX Login Flow

A clean, scalable Flutter project demonstrating a complete **authentication flow** using [GetX](https://pub.dev/packages/get) — including login, logout, routing with middleware, reactive state management, and dependency injection.

---

## 📸 Screenshots

| Login Page | Home Page |
|------------|-----------|
| ![Login](screenshots/login.png) | ![Home](screenshots/home.png) |

---

## 🧱 Project Architecture

```
lib/
 ┣ bindings/         # Dependency Injection (DI) with Get.lazyPut / Get.put
 ┣ controllers/      # Logic: LoginController, HomeController
 ┣ middleware/       # AuthMiddleware for protecting routes
 ┣ routes/           # Centralized GetPage() definitions
 ┣ services/         # AuthService to manage login/logout logic
 ┣ ui/               # UI Pages: LoginPage, HomePage
 ┗ main.dart         # App bootstrap using GetMaterialApp
```

---

## 🚀 Features

- 🔐 Login & Logout functionality
- 🧠 State Management using `RxBool`, `obs`, and `Get.find()`
- 🛡️ Middleware for route protection (Auth Guard)
- 💉 Binding system for Dependency Injection
- 🔄 Routing with `GetMaterialApp` and named routes
- ⚙️ Clean separation of UI, Logic & Services (Clean MVC-style)

---

## ⚙️ Technologies Used

| Tool           | Purpose                                 |
|----------------|-----------------------------------------|
| Flutter        | UI toolkit                              |
| GetX           | State Management, Routing, DI           |
| Dart           | Programming Language                    |

---

## 🛠️ Getting Started

1. **Clone the Repo**

```bash
git clone https://github.com/MehedisGits/flutter_getx_login_flow
cd flutter_getx_login_flow
```

2. **Install Dependencies**

```bash
flutter pub get
```

3. **Run the App**

```bash
flutter run
```

✅ Default Credentials:
```bash
Username: admin
Password: password
```

---

## 🧪 Login Logic

Inside `AuthService`:

```dart
void login(String user, String pass) {
  if (user == 'admin' && pass == 'password') {
    isLoggedIn.value = true;
    Get.offAllNamed('/home');
  } else {
    Get.snackbar("Login Failed", "Invalid credentials");
  }
}
```

---

## 🛡️ Middleware Example

```dart
class AuthMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    final isLoggedIn = AuthServices.to.isLoggedIn.value;
    if (!isLoggedIn) {
      return const RouteSettings(name: '/login');
    }
    return null;
  }
}
```

---

## ✨ Future Improvements

- ✅ API-based login
- 🌗 Light/Dark Theme toggle with `Get.changeTheme()`
- 🔐 JWT token management
- 🧪 Unit & Widget testing

---

## 📃 License

MIT License © 2025 [Rakibul Islam Mehedi](https://github.com/MehedisGits)

---

## 🙌 Acknowledgement

Thanks to [GetX package](https://pub.dev/packages/get) and the Flutter community 💙
