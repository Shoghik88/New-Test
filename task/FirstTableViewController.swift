//
//  ViewController.swift
//  task
//
//  Created by Shoghik Khachatryan on 3/19/18.
//  Copyright © 2018 Shoghik Khachatryan. All rights reserved.
//

import UIKit

class TypeTableViewController: UITableViewController {

    let proffesionalsArray = ["Doctor", "Police" ,"Techer"]
   
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
            performSegue(withIdentifier: "show", sender:proffesionalsArray[0])

    }
   
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return proffesionalsArray.count
    }
   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for:indexPath )
        cell.textLabel?.text = proffesionalsArray[indexPath.row]
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "show"){
        let docVC = segue.destination as! ContactsViewController
       print ("Hellllo")
   }
//        else if (segue.identifier == "new")  {
//            let polVC = segue.destination as!
//            print ("nooo")
//
//        }
    }
}
