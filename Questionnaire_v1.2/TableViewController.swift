//
//  TableViewController.swift
//  Questionnaire_v1.2
//
//  Created by Peng Lian on 10/22/15.
//  Copyright (c) 2015 Peng Lian. All rights reserved.
//

import UIKit

var Global_dict = Dictionary<String, AnyObject>()

class TableViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
    }


    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {

        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        //return 0

        return 1
    }

    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        //return 0
        
        return 21
    }
    
    
    // connections to the QModel
    var Qmodel = QModel()
    
    @IBOutlet weak var Q2: UILabel!

    // for Textfield
    @IBAction func textfieldControl(sender: UITextField) {
        let tfID = sender.restorationIdentifier!
        let tfValue = sender.text
        
        Global_dict[tfID] = tfValue
    }
    
    
    // for Switchs
    @IBAction func switchControl(sender: UISwitch) {
        let switchID = sender.restorationIdentifier!
        let switchValue = sender.on.boolValue
        if switchValue {
            Global_dict[switchID] = "1"
        } else {
            Global_dict[switchID] = "0"
        }
        
        //Global_dict[switchID] = switchValue
    }


    // for page down button
    @IBAction func pageDown_1(sender: UIButton) {
        let sortedKeys = Array(Global_dict.keys).sorted(<)
        //println(Global_dict)
        for i in sortedKeys {
            let str = "\(i) : \(Global_dict[i]!)"
            //println(str)
        }
    }


    // for submit button
    
    @IBOutlet weak var stop_submit_button: UIButton!
    
    @IBAction func Submit(sender: UIButton) {
        // format the Golobal dict
        var results_dict = Qmodel.formatGlobaldict(Global_dict)
        //println(results_dict)
        
        // comunicate with the server
        var backValue = Qmodel.postLocalData_v1(results_dict)
        //println(backValue)
        
        // feedback
        if backValue == "Success"{
            //println("Submited")
            
            stop_submit_button.enabled = false

            // clean the results_dict
            results_dict.removeAll(keepCapacity: false)
            Global_dict.removeAll(keepCapacity: false)
            
            //Alert
            var alert = UIAlertView()
            alert.title = "提交成功\nSubmitted successfully"
            alert.message = "谢谢您的参与！"
            alert.addButtonWithTitle("OK")
            alert.show()
            

            
        } else {
            //Alert
            var alert = UIAlertView()
            alert.title = "提交失败，请检查网络\nFailed to submit, check the network please."
            //alert.message = "All Data"
            alert.addButtonWithTitle("OK")
            alert.show()
            
            println("Failed to submit")
        }
    }

    
    
    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath) as UITableViewCell

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}



class TableViewControllerPage1: TableViewController {
    @IBOutlet weak var Page1Q2: UILabel!
    
    override func viewDidLoad() {
        //println("page1")
        
        // init the label for Q2
        var Qmodel = QModel()
        var datestr = Qmodel.getDate()
        Page1Q2.text = datestr
        
        super.viewDidLoad()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        //return 0
        
        return 1
    }
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        //return 0
        
        return 21
    }

}




