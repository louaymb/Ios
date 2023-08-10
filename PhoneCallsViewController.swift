import UIKit
import ContactsUI

class PhoneCallsViewController: UIViewController {

	let contactList = UITableView()
	var contacts = [CNContact]()

	override func viewDidLoad() {
    	super.viewDidLoad()

    	view.backgroundColor = .white
    	navigationItem.title = "Phone Calls"

    	setUpContactList()
    	fetchContacts()
	}

	func setUpContactList() {
    	contactList.frame = view.bounds
    	contactList.dataSource = self
    	contactList.delegate = self
    	contactList.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    	view.addSubview(contactList)
	}

	func fetchContacts() {
    	let store = CNContactStore()

    	store.requestAccess(for: .contacts) { [weak self] (granted, error) in
        	if granted {
            	let keys = [CNContactGivenNameKey, CNContactFamilyNameKey, CNContactPhoneNumbersKey]
            	let request = CNContactFetchRequest(keysToFetch: keys as [CNKeyDescriptor])
            	do {
                	try store.enumerateContacts(with: request) { (contact, _) in
                    	self?.contacts.append(contact)
                	}
                	DispatchQueue.main.async {
                    	self?.contactList.reloadData()
                	}
            	} catch {
                	print("Failed to fetch contacts:", error)
            	}
        	} else {
            	print("Contacts access denied.")
        	}
    	}
	}

	func makePhoneCall(to phoneNumber: String) {
    	if let url = URL(string: "tel:\(phoneNumber)") {
        	UIApplication.shared.open(url)
    	}
	}
}

extension PhoneCallsViewController: UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    	return contacts.count
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    	let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
    	let contact = contacts[indexPath.row]
    	cell.textLabel?.text = contact.givenName + " " + contact.familyName
    	return cell
	}
}

extension PhoneCallsViewController: UITableViewDelegate {
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    	tableView.deselectRow(at: indexPath, animated: true)
    	let contact = contacts[indexPath.row]
    	if let phoneNumber = contact.phoneNumbers.first?.value.stringValue {
        	makePhoneCall(to: phoneNumber)
    	}
	}
}
