//
//  DetailViewController.swift
//  DGStarter
//
//  Created by Peter Gansy on 2/21/23.
//

import UIKit

class DetailViewController: UIViewController {
    
    // Property
    var dinosaur: Dinosaur?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let dinosaur = dinosaur {
            // Configure the dinosaur image and dynamic labels
            dinoImage.image = dinosaur.image
            dinoName.text = dinosaur.name
            dinoType.text = dinosaur.type
            dinoWeight.text = String(dinosaur.weight) + " KG"
            dinoHeight.text = String(dinosaur.height) + " M"
            dinoDiet.text = String(dinosaur.diet)
            dinoEra.text = String(dinosaur.era)
            dinoRegion.text = String(dinosaur.region)
            dinoSpeed.text = String(dinosaur.speed) + " mph"
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBOutlet weak var dinoType: UILabel!
    @IBOutlet weak var dinoSpeed: UILabel!
    @IBOutlet weak var dinoRegion: UILabel!
    @IBOutlet weak var dinoEra: UILabel!
    @IBOutlet weak var dinoDiet: UILabel!
    @IBOutlet weak var dinoHeight: UILabel!
    @IBOutlet weak var dinoWeight: UILabel!
    @IBOutlet weak var dinoName: UILabel!
    @IBOutlet weak var dinoImage: UIImageView!
}
