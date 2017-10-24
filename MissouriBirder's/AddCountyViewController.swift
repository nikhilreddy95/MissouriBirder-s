//
//  AddCountyViewController.swift
//  MissouriBirder's
//
//  Created by Kankanala,Nikhil Reddy on 10/23/17.
//  Copyright © 2017 Kankanala,Nikhil Reddy. All rights reserved.
//

import UIKit

class AddCountyViewController: UIViewController {

    @IBOutlet weak var CountyNameTF: UITextField!
    @IBAction func DoneBTN(_ sender: Any) {
    }
    @IBAction func cancel(Segue : UIStoryboardSegue) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
