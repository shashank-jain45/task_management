# Task Management App

A comprehensive Task Management application built with Flutter, designed to help users organize their daily tasks efficiently.
https://drive.google.com/file/d/1tGts4_z0KhkEvLQYgPqdXsP83A9khuc2/view?usp=sharing
## Features

-   **User Authentication**: Secure sign-up and login functionality powered by Firebase Authentication.
-   **Task Management**:
    -   Create new tasks with details.
    -   View a list of tasks.
    -   Update existing tasks.
    -   Delete tasks.
    -   Filter tasks based on status or other criteria.
-   **Real-time Synch**: Data is stored and synchronized using Cloud Firestore.
-   **Clean UI**: A modern and responsive user interface.

## Tech Stack

-   **Framework**: [Flutter](https://flutter.dev/)
-   **Language**: [Dart](https://dart.dev/)
-   **State Management**: [flutter_bloc](https://pub.dev/packages/flutter_bloc)
-   **Dependency Injection**: [get_it](https://pub.dev/packages/get_it)
-   **Data Class Generation**: [freezed](https://pub.dev/packages/freezed) (and `json_serializable`)
-   **Backend**: [Firebase](https://firebase.google.com/)
    -   Firebase Auth
    -   Cloud Firestore
-   **Functional Programming**: [dartz](https://pub.dev/packages/dartz)

## Architecture

This project follows **Clean Architecture** principles to ensure separation of concerns, testability, and scalability.

-   **Presentation Layer**: BLoCs and Widgets.
-   **Domain Layer**: Entities, Use Cases, and Repository Interfaces.
-   **Data Layer**: Models, Data Sources (Remote/Local), and Repository Implementations.

## Getting Started

### Prerequisites

-   Flutter SDK installed.
-   A Firebase project setup.

### Installation

1.  **Clone the repository:**

    ```bash
    git clone <repository-url>
    cd task_management
    ```

2.  **Install dependencies:**

    ```bash
    flutter pub get
    ```

3.  **Firebase Setup:**
    -   Ensure `flutterfire_cli` is installed.
    -   Configure the app with your Firebase project:
        ```bash
        flutterfire configure
        ```
    -   This will update `lib/firebase_options.dart`.

4.  **Code Generation:**
    -   The project uses `build_runner` for generating code (Freezed, JSON serialization). Run the following command:
        ```bash
        flutter pub run build_runner build --delete-conflicting-outputs
        ```

5.  **Run the App:**

    ```bash
    flutter run
    ```

## Folder Structure

```
lib/
├── auth/           # Authentication feature (Presentation, Domain, Data)
├── core/           # Core utilities, use cases, and error handling
├── tasks/          # Task management feature
├── firebase_options.dart
├── injection_container.dart # DI Setup
└── main.dart       # Entry point
```
