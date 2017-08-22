//
//  ContactListViewModel.swift
//  RxSwiftWebinar
//
//  Created by Bryan Andres Bolivar Martinez on 8/22/17.
//  Copyright © 2017 Bryan Andres Bolivar Martinez. All rights reserved.
//

import UIKit
import RxSwift

struct ContactListViewModel {

   let data = Observable.just([
      Contact(name: "Bryan Bolivar", phone: "+57 31039343482"),
      Contact(name: "Arturo Gamarra", phone: "+51 489631126"),
      Contact(name: "Karla Cerrón", phone: "+51 2403935439")
   ])
}
