# 🎵 S.Rocks.Music - Tasks

This Flutter assignment demonstrates a real-world module from the **S.Rocks.Music App**, focusing on UI responsiveness, state management using Provider, Firebase integration, and navigation.

## 📱 App Overview

The app displays a list of **Service Cards** fetched from **Firebase Firestore**, each containing:

- 🎨 Icons  
- 🏷️ Title  
- 📄 Short Description  

When tapped, each card navigates to a new screen showing the tapped service name.

---

## ✅ Features Implemented

- 🔥 **Firestore Integration (Read-only):**  
  Data (title, description, icon path, bg img path) is fetched dynamically from Firestore.

- 🧠 **Provider State Management:**  
  Efficient and scalable state handling using Provider pattern.

- 🧭 **Navigation:**  
  Tapping any service card takes the user to a detail screen.

- 🧩 **Clean and Modular Architecture:**  
  Organized using MVVM-like structure:
        
        lib/
        ├── core/ # App-wide config, assets, theme
        ├── view/ # UI: screens + widgets
        ├── models/ # Data models
        ├── viewmodels/ # Logic & providers
        └── main.dart # Entry point

- 💅 **Responsive UI:**  
Designed to scale cleanly on all screen sizes.

- 🔤 **Google Fonts Used:**  
For consistent and appealing typography. 
#### Lobster, Syne. 


---

## 📂 Folder Structure Breakdown

| Folder                  | Purpose                                     |
|-------------------------|---------------------------------------------|
| `core/assets`           | Manages asset paths                        |
| `core/theme`            | Centralized colors & theme configuration   |
| `models/`               | Dart model to map Firestore data           |
| `view/screens/`         | `home_screen.dart` & `service_screen.dart` |
| `view/widget/comman/`   | Reusable UI widgets like `service_card.dart` |
| `viewmodels/`           | Contains `service_provider.dart` (Provider logic) |

---

## 📷 Screenshot


![imgs](https://github.com/user-attachments/assets/90d146de-c010-4230-a16a-c383a2e8053b)

https://github.com/user-attachments/assets/e1bb969c-5cb2-40e2-b7ca-f63ad6cadc3d

---

## Downlaod 
https://docs.google.com/uc?export=download&id=17pddGsnwbXrOEUSLf0csCbAqP1-8mH23
