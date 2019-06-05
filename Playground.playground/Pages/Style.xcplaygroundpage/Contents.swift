import UIKit
import SwiftUI
import PlaygroundSupport

// https://facebook.github.io/react-native/docs/style

struct LotsOfStyles: View {
    
    var body: some View {
        Group {
            Text("just red").color(Color.red)
            Text("just bigBlue")
                .color(Color.blue)
                .fontWeight(Font.Weight.bold)
                .font(Font.system(size: 30))
            Text("bigBlue, then red")
                .color(Color.blue)
                .fontWeight(Font.Weight.bold)
                .font(Font.system(size: 30))
                .color(Color.red)
            Text("red, then bigBlue")
                .color(Color.red)
                .color(Color.blue)
                .fontWeight(Font.Weight.bold)
                .font(Font.system(size: 30))
        }
    }
}

PlaygroundPage.current.liveView = UIHostingController(rootView: LotsOfStyles())
