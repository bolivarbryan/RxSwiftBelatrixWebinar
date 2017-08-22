//
//  Contact.swift
//  RxSwiftWebinar
//
//  Created by Bryan Andres Bolivar Martinez on 8/22/17.
//  Copyright © 2017 Bryan Andres Bolivar Martinez. All rights reserved.
//

import UIKit

struct Contact {
   let name: String
   let phone: String
   let image: UIImage?

   init(name: String, phone: String, image: UIImage? = nil) {
      self.name = name
      self.phone = phone
      self.image = image
   }
}
