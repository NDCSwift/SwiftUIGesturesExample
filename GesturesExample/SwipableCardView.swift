//  Created by Noah Carpenter
//  🐱 Follow me on YouTube! 🎥
//  https://www.youtube.com/@NoahDoesCoding97
//  Like and Subscribe for coding tutorials and fun! 💻✨
//  Fun Fact: Cats have five toes on their front paws, but only four on their back paws! 🐾
//  Dream Big, Code Bigger

import SwiftUI

// MARK: - SwipableCardView

/// A view representing a swipable card that can be liked or disliked based on swipe direction.
struct SwipableCardView: View {
    // MARK: - State Properties
    
    @State private var cardOffset = CGSize.zero // Tracks the card's drag offset
    @State private var cardRotation: Double = 0 // Tracks the card's rotation based on drag
    @State private var isLiked = false // Indicates if the card has been liked
    
    // MARK: - Body
    
    var body: some View {
        ZStack {
            // RoundedRectangle serves as the card's background
            RoundedRectangle(cornerRadius: 20)
                .fill(isLiked ? Color.green.opacity(0.5) : Color.red.opacity(0.5)) // Changes color based on like status
                .frame(width: 300, height: 500) // Sets card size
                .overlay(
                    // Displays text indicating like status or swipe prompt
                    Text(isLiked ? "Liked" : "Swipe Me")
                        .font(.largeTitle) // Sets the font size to large
                        .foregroundStyle(Color.white) // Sets the text color to white
                )
                .offset(cardOffset) // Applies the drag offset to the card
                .rotationEffect(.degrees(cardRotation)) // Rotates the card based on drag
                .gesture(
                    DragGesture()
                        .onChanged { gesture in
                            cardOffset = gesture.translation // Updates offset as user drags
                            cardRotation = Double(cardOffset.width / 20) // Rotates card proportionally to drag
                        }
                        .onEnded { _ in
                            if abs(cardOffset.width) > 100 {
                                isLiked = cardOffset.width > 0 // Sets isLiked based on swipe direction
                            }
                            cardOffset = .zero // Resets card position
                            cardRotation = 0 // Resets card rotation
                        }
                )
                .animation(.spring(), value: cardOffset) // Adds spring animation to movements
                .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 5) // Adds shadow for depth
        }
        .frame(maxHeight: .infinity) // Ensures the card centers vertically
    }
}

// MARK: - Preview

#Preview {
    SwipableCardView()
}
