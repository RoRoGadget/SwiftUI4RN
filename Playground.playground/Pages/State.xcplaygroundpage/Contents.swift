import UIKit
import SwiftUI
import PlaygroundSupport

// https://facebook.github.io/react-native/docs/state

struct Blink: View {
    
    @State var isShowingText: Bool = true
    
    var body: some View {
        Group {
            Spacer()
            Toggle(isOn: $isShowingText) {
                Text("Show Text")
            }
            Spacer()
            
            (self.isShowingText)
                ? Text("I love to toggle")
                : nil
            (self.isShowingText)
                ? Text("Yes blinking is so great")
                : nil
            (self.isShowingText)
                ? Text("Why did they ever take this out of Swift")
                : nil
            (self.isShowingText)
                ? Text("Look at me look at me look at me")
                : nil
            Spacer()
        }
        
    }
}

PlaygroundPage.current.liveView = UIHostingController(rootView: Blink())
