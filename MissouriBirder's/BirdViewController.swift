//
//  BirdViewController.swift
//  MissouriBirder's
//
//  Created by Kankanala,Nikhil Reddy on 10/16/17.
//  Copyright © 2017 Kankanala,Nikhil Reddy. All rights reserved.
//

import UIKit

class BirdViewController: UIViewController {

    var bird:Bird!
    
    @IBOutlet weak var LocationLBL: UILabel!
    
    @IBOutlet weak var DateLBL: UILabel!
    
    @IBOutlet weak var SightingsTXT: UITextField!
   
    @IBAction func UpdateBTN(_ sender: Any) {
        if let newSightings = Int((SightingsTXT.text)!) {
            bird.updateNumSightings(sightings: newSightings)
        }
    }
    @IBOutlet weak var BirdIMG: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let lat = Double((bird.location?.latitude)!)
        
        let long = Double((bird.location?.longitude)!)
        
        LocationLBL.text = "\(lat), \(long)"
        DateLBL.text = "\(bird.date!)"
        SightingsTXT.text = String(describing: bird.numberOfSightings!)
        let birdName:String = "\(bird.name!).jpg)"
        let birdImage:UIImage = UIImage(named: birdName)!
        BirdIMG.image = birdImage
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(_ animated: Bool) {
        viewDidLoad()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
