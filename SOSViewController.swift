import UIKit

class SOSViewController: UIViewController {

	let emergencyButton = UIButton()

	override func viewDidLoad() {
    	super.viewDidLoad()

    	view.backgroundColor = .white
    	navigationItem.title = "SOS/Emergency"

    	setUpEmergencyButton()
	}

	func setUpEmergencyButton() {
    	emergencyButton.frame = CGRect(x: 20, y: 100, width: 200, height: 40)
    	emergencyButton.setTitle("Emergency Call", for: .normal)
    	emergencyButton.setTitleColor(.red, for: .normal)
    	emergencyButton.addTarget(self, action: #selector(dialEmergencyCall), for: .touchUpInside)
    	view.addSubview(emergencyButton)
	}

	@objc func dialEmergencyCall() {
    	// Logic to dial emergency services
	}
}
