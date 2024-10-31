import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let url: URL

    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        return webView
    }

    func updateUIView(_ webView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        webView.load(request)
    }
}

struct ContentView: View {
    var body: some View {
        WebView(url: URL(string: "https://theweedshop.site")!)
            .edgesIgnoringSafeArea(.all)
    }
}

@main
struct WebViewApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}