import UIKit
import WebKit

class WebBrowserViewController: UIViewController {

	let webView = WKWebView()

	override func viewDidLoad() {
    	super.viewDidLoad()

    	view.backgroundColor = .white
    	navigationItem.title = "Web Browser"

    	setUpWebView()
	}

	func setUpWebView() {
    	webView.frame = view.bounds
    	view.addSubview(webView)

    	if let url = URL(string: "https://www.example.com") {
        	let request = URLRequest(url: url)
        	webView.load(request)
    	}
	}
}
