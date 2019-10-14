import UIKit
import SwiftUI
import PlaygroundSupport

// https://facebook.github.io/react-native/docs/style

struct LotsOfStyles: View {
    
    var body: some View {
        Group {
			
            Text("just red").foregroundColor(Color.red)
            Text("just bigBlue")
                .foregroundColor(Color.blue)
                .fontWeight(Font.Weight.bold)
                .font(Font.system(size: 30))
            Text("bigBlue, then red")
                .foregroundColor(Color.blue)
                .fontWeight(Font.Weight.bold)
                .font(Font.system(size: 30))
                .foregroundColor(Color.red)
            Text("red, then bigBlue")
                .foregroundColor(Color.red)
                .foregroundColor(Color.blue)
                .fontWeight(Font.Weight.bold)
                .font(Font.system(size: 30))
        }
    }
}

PlaygroundPage.current.liveView = UIHostingController(rootView: LotsOfStyles())
