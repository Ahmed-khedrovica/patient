# Patient App
[![Ask DeepWiki](https://devin.ai/assets/askdeepwiki.png)](https://deepwiki.com/Ahmed-khedrovica/patient)

Patient App is a comprehensive Flutter mobile application designed to streamline the process of finding and booking medical appointments. It provides a user-friendly interface for patients to browse doctor specializations, view detailed doctor profiles, and manage their appointments efficiently.

## Features

- **User Authentication:** Secure login and registration for patients.
- **Home Dashboard:** A central hub to view recommended doctors and browse various medical specialties.
- **Doctor & Specialty Discovery:** Explore a grid of all available specialties and view lists of doctors filtered by their field.
- **Appointment Booking:** A seamless flow to select a doctor, choose an available date and time, and confirm the booking.
- **My Appointments:** A dedicated screen to view a list of all scheduled appointments with their status (e.g., Confirmed, Pending).
- **User Profile:** View user account details and securely log out of the application.

## Technology Stack & Architecture

This project follows the principles of Clean Architecture with a feature-first directory structure, promoting separation of concerns and scalability.

- **State Management:** `flutter_bloc` (Cubit) is used to manage the application's state in a predictable and efficient manner.
- **Dependency Injection:** `get_it` handles the inversion of control, making the app modular and easy to test.
- **Networking:** `Dio` and `Retrofit` are used for robust and type-safe communication with the backend API.
- **Code Generation:** `freezed`, `json_serializable`, and `retrofit_generator` are utilized to reduce boilerplate code for models and API services.
- **Responsive UI:** `flutter_screenutil` ensures the UI is responsive across different screen sizes.

## Getting Started

### Prerequisites

Ensure you have the Flutter SDK installed on your machine.

### Installation

1.  Clone the repository:
    ```bash
    git clone https://github.com/Ahmed-khedrovica/patient.git
    ```
2.  Navigate to the project directory:
    ```bash
    cd patient
    ```
3.  Install dependencies:
    ```bash
    flutter pub get
    ```
4.  Run the code generator to create necessary files:
    ```bash
    flutter pub run build_runner build --delete-conflicting-outputs
    ```
5.  Run the application:
    ```bash
    flutter run
    ```

## Project Structure

The codebase is organized into a feature-driven structure within the `lib` directory:

-   **`core/`**: Contains shared components used across multiple features.
    -   `di/`: Dependency injection setup using `get_it`.
    -   `networking/`: API service definitions (`Retrofit`), Dio client configuration, and error handling.
    -   `routing/`: Application routes and navigation logic.
    -   `theming/`: App-wide colors, text styles, and themes.
    -   `widgets/`: Common, reusable UI widgets.

-   **`features/`**: Each feature is a self-contained module (e.g., `login`, `home`, `profile`). Each feature folder typically contains:
    -   `data/`: Repositories, data models, and API data sources.
    -   `logic/`: Cubits and state management classes.
    -   `ui/`: Widgets and screens specific to the feature.
