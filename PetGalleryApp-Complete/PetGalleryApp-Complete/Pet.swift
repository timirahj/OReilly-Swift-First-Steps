//
//  Pet.swift
//  PetGalleryApp-Complete
//
//  Created by Timirah James on 8/25/20.
//  Copyright © 2020 Timirah James. All rights reserved.
//

import Foundation
import UIKit

class Pet {
  
  var name: String?
  var weight: Int?
  var photo: UIImage!
  
  // initialization of the Pet object 
  init(petName: String, petWeight:Int, petPhoto: UIImage) {
    
    name = petName
    weight = petWeight
    photo = petPhoto
  }
}
