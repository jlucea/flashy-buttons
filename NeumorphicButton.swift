//
//  SwiftUIView.swift
//  FlashyButtons
//
//  Created by Jaime Lucea on 18/1/25.
//

import SwiftUI

// A neumorphic button is a UI design element inspired by neumorphism (short for “new skeuomorphism”), a design trend that blends minimalism with subtle 3D-like effects to create soft, realistic-looking UI components

struct NeumorphicButton: View {
    
    let action: () -> Void

    var body: some View {
        Button(action: {
            action()
        }) {
            Text("Press Me!")
                .font(.system(size: 20, weight: .semibold, design: .rounded))
                .foregroundColor(Color(#colorLiteral(red: 0.1848020604, green: 0.2119035249, blue: 0.3241921769, alpha: 1)))
                .frame(width: 220, height: 64)
                .background(
                    // Internal shadow
                    ZStack {
                        Color(#colorLiteral(red: 0.5718681216, green: 0.7278346419, blue: 0.8807016015, alpha: 1))
                        RoundedRectangle(cornerRadius: 14, style: .continuous)
                            .foregroundStyle(Color.white)
                            .blur(radius: 4)
                        
                        RoundedRectangle(cornerRadius: 14, style: .continuous)
                            .fill(
                                LinearGradient(colors: [Color(#colorLiteral(red: 0.8554889232, green: 0.9385153055, blue: 0.9656315446, alpha: 1)), .white], startPoint: .topLeading, endPoint: .bottomTrailing)
                            )
                            .padding(2)
                            .blur(radius: 2)
                    }
                )
                .cornerRadius(14)
                .shadow(color: Color(#colorLiteral(red: 0.6413493752, green: 0.8163261414, blue: 0.9877682328, alpha: 1)), radius: 20, x: 10, y: 15)
                .shadow(color: Color.white, radius: 20, x: -10, y: -10)
        }
    }

}

#Preview {
    NeumorphicButton(action: {
        print("Button pressed!")
    })
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .background(Color(#colorLiteral(red: 0.8740081191, green: 0.88475281, blue: 0.9394941926, alpha: 1)))
}
