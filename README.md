# 👆 SwiftUI Gestures Example

A SwiftUI demo covering the core gesture recognizers — `TapGesture`, `LongPressGesture`, `DragGesture`, `MagnificationGesture`, and `RotationGesture` — with live visual feedback for each.

---

## 🤔 What this is

This project demonstrates how to attach SwiftUI gestures to views and respond to them with state changes. Each gesture type is shown with a practical example: tapping to toggle color, long-pressing to scale, dragging to reposition, pinching to zoom, and rotating with two fingers.

## ✅ Why you'd use it

- **TapGesture** — single and double tap with `.onTapGesture(count:)`
- **LongPressGesture** — hold-to-activate with minimum duration
- **DragGesture** — real-time drag offset tracking with `.offset` and state
- **MagnificationGesture** — pinch-to-scale with `scaleEffect`
- **RotationGesture** — two-finger rotate with `rotationEffect`
- **Gesture composition** — `simultaneously` and `sequenced` gesture combinations

## 📺 Watch on YouTube

[![Watch on YouTube](https://img.shields.io/badge/YouTube-Watch%20the%20Tutorial-red?style=for-the-badge&logo=youtube)](https://youtu.be/d0W7fzWwncE)

> This project was built for the [NoahDoesCoding YouTube channel](https://www.youtube.com/@NoahDoesCoding97).

---

## 🚀 Getting Started

### 1. Clone the Repo
```bash
git clone https://github.com/NDCSwift/SwiftUIGesturesExample.git
cd SwiftUIGesturesExample
```

### 2. Open in Xcode
- Double-click `GesturesExample.xcodeproj`

### 3. Set Your Development Team
In Xcode: **TARGET → Signing & Capabilities → Team**

### 4. Update the Bundle Identifier
Change `com.example.MyApp` to a unique identifier (e.g., `com.yourname.GesturesExample`).

---

## 🛠️ Notes

- If you see a code signing error, check that Team and Bundle ID are set.

## 📦 Requirements

- iOS 16+
- Xcode 15+
- Swift 5.9+

---

📺 [Watch the guide on YouTube](https://youtu.be/d0W7fzWwncE)
