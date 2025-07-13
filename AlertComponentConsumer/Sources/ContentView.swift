import SwiftUI
import AlertComponent

struct ContentView: View {
    @State private var showAlert = false

    var body: some View {
        ZStack {
            Button("Show alert") {
                showAlert = true
            }

            if showAlert {
                AlertView(
                    title: "Warning",
                    message: "This is a personalized alert view",
                    onDismiss: {
                        showAlert = false
                    }
                )
                .background(Color.black.opacity(0.4).ignoresSafeArea())
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
