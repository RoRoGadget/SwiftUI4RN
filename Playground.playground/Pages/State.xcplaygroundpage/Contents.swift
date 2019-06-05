import UIKit
import SwiftUI
import PlaygroundSupport

struct Blink: View {
    
    @State var isShowingText: Bool = true
    
    var body: some View {
        VStack {
            Spacer()
            Toggle(isOn: $isShowingText) {
                Text("Show Text")
            }
            Spacer()
            (self.isShowingText)
                ? Text("Hello World!")
                : nil
            Spacer()
        }
        
    }
}

PlaygroundPage.current.liveView = UIHostingController(rootView: Blink())
