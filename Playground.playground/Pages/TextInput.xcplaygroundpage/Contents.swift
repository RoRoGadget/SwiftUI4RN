import UIKit
import SwiftUI
import PlaygroundSupport

struct PizzaTranslator: View {
    
    @State var text: String = ""
    
    var body: some View {
        VStack {
            Spacer()
            TextField($text, placeholder: Text("Type here to translate!"))
            Spacer()
            Text(self.text.split(separator: " ").map { (word) in return "🍕" }.joined(separator: " ") )
            Spacer()
        }
        
    }
}

PlaygroundPage.current.liveView = UIHostingController(rootView: PizzaTranslator())
