import UIKit

class MainTabBarController: UITabBarController {

	override func viewDidLoad() {
    	super.viewDidLoad()

    	let onboardingViewController = OnboardingViewController()
    	let homeViewController = HomeViewController()
    	let phoneCallsViewController = PhoneCallsViewController()
    	let volumeSettingsViewController = VolumeSettingsViewController()
    	let messagingViewController = MessagingViewController()
    	let sosViewController = SOSViewController()
    	let webBrowserViewController = WebBrowserViewController()
    	let launcherViewController = LauncherViewController()
    	let mediaPlaybackViewController = MediaPlaybackViewController()
    	let accessibilitySettingsViewController = AccessibilitySettingsViewController()

    	onboardingViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .featured, tag: 0)
    	homeViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
    	phoneCallsViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 2)
    	volumeSettingsViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .more, tag: 3)
    	messagingViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 4)
    	sosViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 5)
    	webBrowserViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 6)
    	launcherViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .topRated, tag: 7)
    	mediaPlaybackViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 8)
    	accessibilitySettingsViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .more, tag: 9)

    	let nav0 = UINavigationController(rootViewController: onboardingViewController)
    	let nav1 = UINavigationController(rootViewController: homeViewController)
    	let nav2 = UINavigationController(rootViewController: phoneCallsViewController)
    	let nav3 = UINavigationController(rootViewController: volumeSettingsViewController)
    	let nav4 = UINavigationController(rootViewController: messagingViewController)
    	let nav5 = UINavigationController(rootViewController: sosViewController)
    	let nav6 = UINavigationController(rootViewController: webBrowserViewController)
    	let nav7 = UINavigationController(rootViewController: launcherViewController)
    	let nav8 = UINavigationController(rootViewController: mediaPlaybackViewController)
    	let nav9 = UINavigationController(rootViewController: accessibilitySettingsViewController)

    	viewControllers = [nav0, nav1, nav2, nav3, nav4, nav5, nav6, nav7, nav8, nav9]
	}
}
