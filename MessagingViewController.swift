import UIKit

class MessagingViewController: UIViewController {

	let textView = UITextView()
	let sendButton = UIButton()

	override func viewDidLoad() {
    	super.viewDidLoad()

    	view.backgroundColor = .white
    	navigationItem.title = "Messaging"

    	setUpTextView()
    	setUpSendButton()
	}

	func setUpTextView() {
    	textView.frame = CGRect(x: 20, y: 100, width: 200, height: 100)
    	textView.layer.borderColor = UIColor.lightGray.cgColor
    	textView.layer.borderWidth = 1.0
    	view.addSubview(textView)
	}

	func setUpSendButton() {
    	sendButton.frame = CGRect(x: 20, y: 220, width: 100, height: 44)
    	sendButton.setTitle("Send", for: .normal)
    	sendButton.setTitleColor(.systemBlue, for: .normal)
    	sendButton.addTarget(self, action: #selector(sendMessage), for: .touchUpInside)
    	view.addSubview(sendButton)
	}

	@objc func sendMessage() {
    	guard let message = textView.text else { return }
    	// Logic to send the message
	}
}
