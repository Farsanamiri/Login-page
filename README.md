# Flutter Login App

This Flutter project is a simple login-based application that navigates to an after-login page displaying user details, job history, and statistics.

## Features

### 1. **Login Page**
- Users enter a username and password.
- Basic validation ensures fields are not empty.
- Hardcoded login credentials (`admin/1234`) for demonstration purposes.
- Error messages are displayed for incorrect credentials.
- Upon successful login, the user is navigated to the after-login screen.

### 2. **After Login Page**
- Displays user information, including:
  - Profile picture
  - Profession
  - Contact details
  - Location
  - Position status (open/closed) controlled via a toggle switch
- A `PageView` displays job titles in a paginated view.
- A smooth page indicator enhances user experience.
- Rating and statistics such as:
  - Average rating
  - Jobs completed
  - Ongoing jobs
  - Pay range
  - Availability, Service, and Quality indicators

## UI Components

### **Widgets Used:**
- `TextField` for user input
- `ElevatedButton` for login
- `ScaffoldMessenger` for displaying snack bars (error messages)
- `PageView.builder` for displaying job titles
- `SmoothPageIndicator` for page navigation dots
- `Switch` to toggle availability status
- `Column` and `Row` for structured layout
- `Container` for styling sections

## Installation

### **Prerequisites**
Ensure you have Flutter installed. You can check by running:
```sh
flutter --version
```

### **Steps to Run the App**
1. Clone the repository:
   ```sh
   git clone https://github.com/yourusername/flutter-login-app.git
   ```
2. Navigate into the project directory:
   ```sh
   cd flutter-login-app
   ```
3. Install dependencies:
   ```sh
   flutter pub get
   ```
4. Run the app on an emulator or a connected device:
   ```sh
   flutter run
   ```

## Project Structure

```
flutter-login-app/
│── lib/
│   ├── main.dart          # Entry point of the app
│   ├── screens/
│   │   ├── first_screen.dart    # Login screen
│   │   ├── after_login.dart     # After login screen
│── assets/
│   ├── image/
│   │   ├── 1910.jpeg      # Profile image
│── pubspec.yaml           # Dependencies and assets
│── README.md              # Documentation (this file)
```

## Dependencies Used

| Package | Purpose |
|---------|---------|
| `google_fonts` | Custom fonts (e.g., Poppins) |
| `smooth_page_indicator` | Smooth page navigation indicator |

## Screenshots

### **Login Page**
![Login Page](screenshots/login_page.png)

### **After Login Page**
![After Login Page](screenshots/after_login_page.png)

## Future Enhancements
- Implement real authentication using Firebase.
- Store and retrieve user data dynamically.
- Add animations for better user experience.
- Improve UI with a more modern design.

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

**Author:** Farsan amiri  
📧 Contact: farsonamiri90@gmail.com
🌐 GitHub: [yourusername](https://github.com/Farsanamiri/)

