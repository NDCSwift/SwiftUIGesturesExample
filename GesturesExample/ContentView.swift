//  Created by Noah Carpenter
//  🐱 Follow me on YouTube! 🎥
//  https://www.youtube.com/@NoahDoesCoding97
//  Like and Subscribe for coding tutorials and fun! 💻✨
//  Fun Fact: Cats have five toes on their front paws, but only four on their back paws! 🐾
//  Dream Big, Code Bigger

import SwiftUI

// MARK: - ContentView

/// The main view for the GesturesExample app.
/// Demonstrates tap, long press, and drag gestures.
struct ContentView: View {
    // MARK: - State Properties
    
    @State private var tapCount = 0 // Tracks the number of taps
    @State private var longPressed = false // Indicates if a long press has occurred
    @State private var offset = CGSize.zero // Tracks the drag offset
    
    // MARK: - Body
    
    var body: some View {
        VStack(spacing: 30) {
            // Tap Gesture Section
            Text("Tap Count: \(tapCount)")
                .padding() // Adds padding around the text
                .background(Color.purple.opacity(0.3)) // Sets a light purple background
                .onTapGesture {
                    tapCount += 1 // Increments tap count on tap
                }
                .cornerRadius(10) // Rounds the corners of the background
            
            // Long Press Gesture Section
            Text(longPressed ? "Long Pressed" : "Press and Hold")
                .padding() // Adds padding around the text
                .background(Color.red.opacity(0.3)) // Sets a light red background
                .onLongPressGesture {
                    longPressed = true // Updates state when long press is detected
                }
                .cornerRadius(10) // Rounds the corners of the background
            
            // Drag Gesture Section
            Text("Drag me!")
                .padding() // Adds padding around the text
                .background(Color.blue.opacity(0.3)) // Sets a light blue background
                .cornerRadius(10) // Rounds the corners of the background
                .offset(offset) // Applies the drag offset to the view
                .gesture(
                    DragGesture()
                        .onChanged { gesture in
                            offset = gesture.translation // Updates offset as user drags
                        }
                        .onEnded { _ in
                            // Optional: Add any actions to perform when drag ends
                        }
                )
        }
        .padding() // Adds padding around the VStack
    }
}

// MARK: - Preview

#Preview {
    ContentView()
}
