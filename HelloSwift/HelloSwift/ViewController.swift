//
//  ViewController.swift
//  HelloSwift
//
//  Created by Timirah James on 10/14/20.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var goButton: UIButton!
  @IBOutlet weak var nameLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    
    self.nameLabel.text = "Timirah"
    self.view.backgroundColor = .green
    
    self.goButton.backgroundColor = .black
    
  }

  @IBAction func greet(_ sender: Any) {
    self.nameLabel.text = "Hello Swift!"
    
  }
  
}

