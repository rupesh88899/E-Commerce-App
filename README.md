# 🛍️ E-Commerce App

A modern and responsive Flutter application for showcasing products with cart functionality, smooth navigation, and persistent storage.

---

## 📱 UI Preview

### 🔹 Splash & Home

<p align="center">
  <img src="https://github.com/user-attachments/assets/b68f7a44-6f74-465a-9b08-03520a78251f" alt="App Icon" height="400px" />
  <img src="https://github.com/user-attachments/assets/a48d9813-5b5c-4ef7-b514-f2c71ca40bca" alt="Splash Screen" height="400px" />
  <img src="https://github.com/user-attachments/assets/b703169a-b4a0-4357-8687-ad020c20e0b6" alt="Home Page" height="400px" />
</p>

### 🔹 Product & Cart

<p align="center">
  <img src="https://github.com/user-attachments/assets/a34c6104-d5e4-4642-aa5a-efb7e52e5773" alt="Product Detail" height="400px" />
  <img src="https://github.com/user-attachments/assets/7e643a80-ca74-48b9-8665-5eb6dae4e6d2" alt="Cart Icon" height="400px" />
  <img src="https://github.com/user-attachments/assets/5e07ef78-d553-4b93-a595-3fc8dcad9b7a" alt="Cart Page" height="400px" />
</p>


## ✨ Features

- 🏠 Home Screen
  - AppBar with title and optional search
  - Carousel banner for promotions
  - Horizontal category list
  - Grid view of products with image, name, price, and "Add to Cart" button

- 🛒 Cart Screen
  - View added products
  - Quantity-based total calculation
  - Delete individual items
  - Clear the entire cart

- 📦 Product Detail Page
  - Full product info including image, name, price, and description
  - Add to cart from the detail screen

- 🔁 Bottom Navigation
  - Toggle between Home and Cart screens

- 💾 Persistent Cart
  - Data saved locally using `shared_preferences` even after app restart

---

## 🧱 Project Structure
lib/
├── main.dart
├── models/
│ ├── product_model.dart
│ └── cart_item.dart
├── providers/
│ ├── product_provider.dart
│ └── cart_provider.dart
├── screens/
│ ├── home_screen.dart
│ ├── product_detail_screen.dart
│ └── cart_screen.dart
├── widgets/
│ ├── product_card.dart
│ ├── category_tile.dart
│ ├── banner_slider.dart
│ └── main_wrapper.dart

## 📦 Dependencies

| Package             | Purpose                                  |
|---------------------|------------------------------------------|
| `provider`          | State management for cart/products       |
| `carousel_slider`   | For horizontal image banners             |
| `shared_preferences`| Persistent local storage for cart items  |
| `google_fonts`      | Better font rendering and customization  |



## 🧪 Getting Started

1. **Clone the repo**
   ```bash
   git clone https://github.com/rupesh88899/E-Commerce-App.git
   
2. Navigate to the project
        --cd E-Commerce-App

3. Install packages
        --flutter pub get
4. Run the app
       --flutter run
