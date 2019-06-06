import UIKit
import SwiftUI
import PlaygroundSupport

// https://facebook.github.io/react-native/docs/handling-text-input

struct PizzaTranslator: View {
    
    @State var text: String = ""
    
    var body: some View {
        VStack {
            Spacer()
            TextField($text, placeholder: Text("Type here to translate!"))
                .frame(height: 40)
            Spacer()
            Text(self.text.split(separator: " ").map { (word) in return "🍕" }.joined(separator: " ") )
                .padding(10)
                .font(Font.system(size: 42))
            Spacer()
        }
        
    }
}

PlaygroundPage.current.liveView = UIHostingController(rootView: PizzaTranslator())
