//
//  ContactListViewController.swift
//  RxSwiftWebinar
//
//  Created by Bryan Andres Bolivar Martinez on 8/22/17.
//  Copyright © 2017 Bryan Andres Bolivar Martinez. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ContactListViewController: UIViewController {

   //MARK: - Properties

   let contactListViewModel = ContactListViewModel()
   @IBOutlet weak var contactListTableView: UITableView!
   let disposeBag: DisposeBag = DisposeBag()
   let cellIdentifier = "ContactCell"

   //MARK: - View Life Cycle

   override func viewDidLoad() {
      super.viewDidLoad()

      //Rx DataSource
      contactListViewModel.data
         .bind(to: contactListTableView.rx.items(cellIdentifier: cellIdentifier)) { _, contact, cell in
            cell.textLabel?.text = contact.name
            cell.detailTextLabel?.text = contact.phone
            cell.imageView?.image = contact.image
      }
      .addDisposableTo(disposeBag)


      contactListTableView.rx.modelSelected(Contact.self)
         .subscribe(onNext: { object in
            print("Contacto seleccionado: \(object.name), \(object.phone)")
         })
         .addDisposableTo(disposeBag)
   }
}
