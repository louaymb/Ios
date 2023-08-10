import UIKit

class AccessibilitySettingsViewController: UIViewController {

	let brightnessSlider = UISlider()
	let fontSizeSlider = UISlider()
	let colorContrastSlider = UISlider()
	let voiceoverSwitch = UISwitch()

	override func viewDidLoad() {
    	super.viewDidLoad()

    	view.backgroundColor = .white
    	navigationItem.title = "Accessibility Settings"

    	setUpBrightnessSlider()
    	setUpFontSizeSlider()
    	setUpColorContrastSlider()
    	setUpVoiceoverSwitch()
	}

	func setUpBrightnessSlider() {
    	brightnessSlider.frame = CGRect(x: 20, y:100, width: 200, height: 20)
	brightnessSlider.minimumValue = 0.0
	brightnessSlider.maximumValue = 1.0
	// Add target and action
	view.addSubview(brightnessSlider)
}

func setUpFontSizeSlider() {
	fontSizeSlider.frame = CGRect(x: 20, y: 150, width: 200, height: 20)
	fontSizeSlider.minimumValue = 0.0
	fontSizeSlider.maximumValue = 1.0
	// Add target and action
	view.addSubview(fontSizeSlider)
}

func setUpColorContrastSlider() {
	colorContrastSlider.frame = CGRect(x: 20, y: 200, width: 200, height: 20)
	colorContrastSlider.minimumValue = 0.0
	colorContrastSlider.maximumValue = 1.0
	// Add target and action
	view.addSubview(colorContrastSlider)
}

func setUpVoiceoverSwitch() {
	voiceoverSwitch.frame = CGRect(x: 20, y: 250, width: 100, height: 40)
	voiceoverSwitch.isOn = false
	// Add target and action
	view.addSubview(voiceoverSwitch)
}
