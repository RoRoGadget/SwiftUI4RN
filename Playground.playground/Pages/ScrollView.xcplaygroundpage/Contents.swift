import UIKit
import SwiftUI
import PlaygroundSupport

// https://facebook.github.io/react-native/docs/using-a-scrollview

struct IScrolledDownAndWhatHappenedNextShockedMe: View {
    
    var body: some View {
        // This caused alot of crashes of the lldb-rpc-server so i pushed a bug report and only rendered a few.
        // The errors received are of complex closure result type.
        // Radar filed.
        ScrollView {
            
            Text("Scroll me plz")
                .font(Font.system(size: 96.0))
            
            self.image() ?? nil
            self.image() ?? nil
            self.image() ?? nil
            self.image() ?? nil
            self.image() ?? nil
        }
    }
    
    // This is a workaround for loading image data.
    func image() -> Image? {
        
        if let image = UIImage(named: "swift.png") {
            return Image(uiImage: image)
        }
        return nil
    }
}

PlaygroundPage.current.liveView = UIHostingController(rootView: ScrollComponent())
