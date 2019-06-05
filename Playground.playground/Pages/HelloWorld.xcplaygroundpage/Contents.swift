import UIKit
import SwiftUI
import PlaygroundSupport

struct HelloWorld: View {
    
    var body: some View {
        Text("Hello World!")
    }
}

PlaygroundPage.current.liveView = UIHostingController(rootView: HelloWorld())
