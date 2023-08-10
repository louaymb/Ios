import UIKit

class VolumeSettingsViewController: UIViewController {

	let ringtoneSlider = UISlider()
	let mediaSlider = UISlider()
	let notificationSlider = UISlider()

	override func viewDidLoad() {
    	super.viewDidLoad()

    	view.backgroundColor = .white
    	navigationItem.title = "Volume Settings"

    	setUpSliders()
	}

	func setUpSliders() {
    	ringtoneSlider.frame = CGRect(x: 20, y: 100, width: 200, height: 20)
    	ringtoneSlider.minimumValue = 0.0
    	ringtoneSlider.maximumValue = 100.0
    	view.addSubview(ringtoneSlider)
   	 
    	mediaSlider.frame = CGRect(x: 20, y: 150, width: 200, height: 20)
    	mediaSlider.minimumValue = 0.0
    	mediaSlider.maximumValue = 100.0
    	view.addSubview(mediaSlider)
   	 
    	notificationSlider.frame = CGRect(x: 20, y: 200, width: 200, height: 20)
    	notificationSlider.minimumValue = 0.0
    	notificationSlider.maximumValue = 100.0
    	view.addSubview(notificationSlider)

    	// Add targets for value changes
    	ringtoneSlider.addTarget(self, action: #selector(ringtoneSliderValueChanged), for: .valueChanged)
    	mediaSlider.addTarget(self, action: #selector(mediaSliderValueChanged), for: .valueChanged)
    	notificationSlider.addTarget(self, action: #selector(notificationSliderValueChanged), for: .valueChanged)
	}

	@objc func ringtoneSliderValueChanged(slider: UISlider) {
    	// Handle ringtone volume change
	}

	@objc func mediaSliderValueChanged(slider: UISlider) {
    	// Handle media volume change
	}

	@objc func notificationSliderValueChanged(slider: UISlider) {
    	// Handle notification volume change
	}
}
