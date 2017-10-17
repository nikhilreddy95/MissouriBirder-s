//
//  BirdsTableViewController.swift
//  MissouriBirder's
//
//  Created by Kankanala,Nikhil Reddy on 10/16/17.
//  Copyright © 2017 Kankanala,Nikhil Reddy. All rights reserved.
//

import UIKit

class BirdsTableViewController: UITableViewController {
    var county : County!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = county.name
        tableView.register(CountyTableViewCell.self, forCellReuseIdentifier: "bird_cell")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return county.birds.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let birdVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "bird_ViewController") as! BirdViewController
        birdVC.bird = county.birds[indexPath.row]
        self.navigationController?.pushViewController(birdVC, animated: true)
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //Setting up the cell via code
        let cell = tableView.dequeueReusableCell(withIdentifier: "bird_cell", for: indexPath)
        cell.textLabel?.text = county.birds[indexPath.row].name
        cell.detailTextLabel?.text = county.birds[indexPath.row].latinName
        var birdName:String = "\(county!.birds[indexPath.row].name!)" + ".jpg"
        let image = UIImage(named: birdName)
        cell.imageView?.image = image
        return cell
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
