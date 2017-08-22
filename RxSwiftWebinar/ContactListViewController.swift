//
//  ContactListViewController.swift
//  RxSwiftWebinar
//
//  Created by Bryan Andres Bolivar Martinez on 8/22/17.
//  Copyright © 2017 Bryan Andres Bolivar Martinez. All rights reserved.
//

import UIKit

class ContactListViewController: UIViewController {

   //MARK: - Properties
   
   let contactListViewModel = ContactListViewModel()
   @IBOutlet weak var contactListTableView: UITableView!

   //MARK: - View Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
      contactListTableView.dataSource = self
      contactListTableView.delegate = self
    }
}

//MARK: - TableView DataSource

extension ContactListViewController: UITableViewDataSource {
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return contactListViewModel.data.count
   }

   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      guard let cell = tableView.dequeueReusableCell(withIdentifier: "ContactCell") else {
         return UITableViewCell()
      }

      let contact = contactListViewModel.data[indexPath.row]
      cell.textLabel?.text = contact.name
      cell.detailTextLabel?.text = contact.phone
      cell.imageView?.image = contact.image
      return cell
   }
}

extension ContactListViewController: UITableViewDelegate {
   func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
      print("\(contactListViewModel.data[indexPath.row].name)")
   }
}
