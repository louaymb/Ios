import UIKit

class MediaPlaybackViewController: UIViewController {

	let playButton = UIButton()
	let pauseButton = UIButton()
	let volumeSlider = UISlider()
	let skipButton = UIButton()

	override func viewDidLoad() {
    	super.viewDidLoad()

    	view.backgroundColor = .white
    	navigationItem.title = "Media Playback"

    	setUpPlayButton()
    	setUpPauseButton()
    	setUpVolumeSlider()
    	setUpSkipButton()
	}

	func setUpPlayButton() {
    	playButton.frame = CGRect(x: 20, y: 100, width: 80, height: 40)
    	playButton.setTitle("Play", for: .normal)
    	playButton.setTitleColor(.systemBlue, for: .normal)
    	// Add target and action
    	view.addSubview(playButton)
	}

	func setUpPauseButton() {
    	pauseButton.frame = CGRect(x: 120, y: 100, width: 80, height: 40)
    	pauseButton.setTitle("Pause", for: .normal)
    	pauseButton.setTitleColor(.systemBlue, for: .normal)
    	// Add target and action
    	view.addSubview(pauseButton)
	}

	func setUpVolumeSlider() {
    	volumeSlider.frame = CGRect(x: 20, y: 150, width: 200, height: 20)
    	volumeSlider.minimumValue = 0.0
    	volumeSlider.maximumValue = 1.0
    	// Add target and action
    	view.addSubview(volumeSlider)
	}

	func setUpSkipButton() {
    	skipButton.frame = CGRect(x: 20, y: 200, width: 80, height: 40)
    	skipButton.setTitle("Skip", for: .normal)
    	skipButton.setTitleColor(.systemBlue, for: .normal)
    	// Add target and action
    	view.addSubview(skipButton)
	}
}
