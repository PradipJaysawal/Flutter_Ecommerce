# Flutter Ecommerce

A Flutter ecommerce application foundation with a splash screen, authentication flows, GetX-based navigation and dependency injection, and a Dio-powered API service layer.

> **Project status:** The current implementation is an early-stage foundation. The repository includes splash, login, and registration screens; product browsing, cart, checkout, and order features can be added as the project evolves.

## Features

- Splash screen as the application entry point
- Login screen with navigation to registration
- Registration form with name, email, password, and WhatsApp/phone fields
- Form validation for registration inputs
- GetX routing and controller bindings
- Authentication service prepared for API integration
- Dio HTTP client configured with JSON request and response headers
- Flutter project targets for Android, iOS, Web, Linux, macOS, and Windows

## Tech Stack

- [Flutter](https://flutter.dev/)
- [Dart](https://dart.dev/)
- [GetX](https://pub.dev/packages/get) — routing, state management, and dependency injection
- [Dio](https://pub.dev/packages/dio) — HTTP client
- [Gap](https://pub.dev/packages/gap) — layout spacing

## Project Structure

```text
lib/
├── binding/       # GetX controller bindings
├── contoller/      # Authentication controller
├── model/         # Data models
├── routes/        # Application route names and pages
├── service/       # API and authentication services
├── utils/         # Shared utilities, including Dio configuration
├── view/          # Splash, login, and registration screens
└── main.dart      # Application entry point
```

## Requirements

Before getting started, install:

- Flutter SDK with Dart 3.13.3 or later-compatible tooling
- Android Studio and/or Xcode for mobile development
- A configured emulator, simulator, or physical device

Verify your Flutter setup with:

```bash
flutter doctor
```

## Getting Started

1. Clone the repository:

   ```bash
   git clone https://github.com/PradipJaysawal/Flutter_Ecommerce.git
   cd Flutter_Ecommerce
   ```

2. Install dependencies:

   ```bash
   flutter pub get
   ```

3. View available devices:

   ```bash
   flutter devices
   ```

4. Run the application:

   ```bash
   flutter run
   ```

To run on a specific platform, use one of the following commands:

```bash
flutter run -d chrome   # Web
flutter run -d macos    # macOS
flutter run -d windows  # Windows
flutter run -d linux    # Linux
```

## API Configuration

The authentication service currently uses the following API base URL:

```text
https://codeit.com.np/api/
```

The registration request is sent to the `register` endpoint with these fields:

- `name`
- `email`
- `password`
- `whatsapp`

For local development or production deployments, update the base URL in `lib/utils/dio_connector.dart`. Avoid committing private credentials or environment-specific secrets to the repository.

## Development Commands

```bash
# Format Dart code
 dart format .

# Analyze the project
flutter analyze

# Run tests
flutter test

# Build an Android APK
flutter build apk

# Build for the web
flutter build web
```

## Contributing

1. Fork the repository.
2. Create a feature branch:

   ```bash
   git checkout -b feature/your-feature
   ```

3. Make your changes and run `flutter analyze` and `flutter test`.
4. Commit your changes and open a pull request.

## License

No license has been specified for this repository yet. Add a license file before distributing or reusing the project publicly.
