//
//  PetViewController.swift
//  PetGalleryApp-Complete
//
//  Created by Timirah James on 8/25/20.
//  Copyright © 2020 Timirah James. All rights reserved.
//

import UIKit

class PetViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
  @IBOutlet weak var tableView: UITableView!
  var petsArray = [Pet]()
  var selectedPet: Pet?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Set self as the acting delegate and datasource to fill the tableView
    tableView.delegate = self
    tableView.dataSource = self
    
    tableView.tableFooterView = UIView(frame: .zero)
    
    // Create pet instances to fill our table
    let pet1 = Pet(petName: "Cassie", petWeight: 8, petPhoto: UIImage(named: "Cassie")!)
    let pet2 = Pet(petName: "Hopper", petWeight: 4, petPhoto: UIImage(named: "Hopper.jpg")!)
    let pet3 = Pet(petName: "Max", petWeight: 5, petPhoto: UIImage(named: "Max")!)
    let pet4 = Pet(petName: "Marshmello", petWeight: 11, petPhoto: UIImage(named: "Marshmello")!)
    let pet5 = Pet(petName: "Fluffy", petWeight: 6, petPhoto: UIImage(named: "Fluffy")!)
    let pet6 = Pet(petName: "Skittle", petWeight: 10, petPhoto: UIImage(named: "Skittle")!)
    
    // Append all pets to the petsArray
    petsArray.append(pet1)
    petsArray.append(pet2)
    petsArray.append(pet3)
    petsArray.append(pet4)
    petsArray.append(pet5)
    petsArray.append(pet6)
    
  }
  
  
  
  // MARK: - Table view data source
  
  func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  // Number of rows
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return petsArray.count
  }
  
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! PetCell
    
    //Assign Pet values with data from the petsArray
    cell.petNameLabel.text = petsArray[indexPath.row].name
    cell.petWeightLabel.text = "\(petsArray[indexPath.row].weight!) lbs."
    cell.petImageView.image = petsArray[indexPath.row].photo
    
    // Configure the cell...
    return cell
  }
  
  
  // Set static height for the cells
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 120.0
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
    self.selectedPet = petsArray[indexPath.row]
    
    //segue to our DetailViewController
    performSegue(withIdentifier: "showDetail", sender: self.petsArray[indexPath.row])
  }
  
  
  // MARK: - Navigation
  
  // In a storyboard-based application, you will often want to do a little preparation before navigation
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
    // Get the new view controller using segue.destination.
    // Pass the selected object to the new view controller.
    if segue.identifier == "showDetail" {
      let detailVC = segue.destination as! DetailViewController
      detailVC.selectedPet = selectedPet
      
      detailVC.selectedPet?.name = self.selectedPet?.name
      detailVC.selectedPet?.weight = self.selectedPet?.weight
      detailVC.selectedPet?.photo = self.selectedPet?.photo
    }
    
  }
  
}
