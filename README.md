# 🛍️ E-Commerce App

A modern and responsive Flutter application for showcasing products with cart functionality, smooth navigation, and persistent storage.

---

## 📱Images
![WhatsApp Image 2025-08-02 at 03 14 02_eacb58a6](https://github.com/user-attachments/assets/b68f7a44-6f74-465a-9b08-03520a78251f)



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
