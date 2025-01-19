import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NeumorphicButton(action: {
                print("Button pressed!")
            })
        }
    }
}
