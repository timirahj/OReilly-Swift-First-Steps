//
//  DetailViewController.swift
//  PetGalleryApp-Complete
//
//  Created by Timirah James on 8/25/20.
//  Copyright © 2020 Timirah James. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
  
  @IBOutlet weak var fullPetPhoto: UIImageView!
  @IBOutlet weak var petNameLabel: UILabel!
  @IBOutlet weak var petWeightLabel: UILabel!
  
  var selectedPet: Pet?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
      
      // Assign data
      self.fullPetPhoto.image = selectedPet?.photo
      self.petNameLabel.text = selectedPet?.name
      self.petWeightLabel.text = "\(selectedPet!.weight!) lbs."
    }
    

  
  
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
