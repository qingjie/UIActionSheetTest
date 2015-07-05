//
//  ViewController.swift
//  UIActionSheetTest
//
//  Created by qingjiezhao on 7/4/15.
//  Copyright (c) 2015 qingjiezhao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func tappedActionSheet(sender: AnyObject) {
        
        let actionAlert = UIAlertController(title: nil, message: "What do u want to do?", preferredStyle: .ActionSheet)
        
        let save = UIAlertAction(title: "Save", style: .Default) { (Alert:UIAlertAction!) -> Void in
            println("Save")
        }
        
        let delete = UIAlertAction(title: "Delete", style: .Destructive) {  (Alert:UIAlertAction!) -> Void in
            println("Delete")
        }
        
        let cancel = UIAlertAction(title: "Cancel", style: .Cancel) {(Alert:UIAlertAction!) -> Void in
            println("Cancel")
        }
     
        
        actionAlert.addAction(save)
        actionAlert.addAction(delete)
        actionAlert.addAction(cancel)
        
        self.presentViewController(actionAlert, animated: true, completion: nil)
        
    }
    
    @IBAction func tappedAlert(sender: AnyObject) {
        
        var alert = UIAlertController(title: "Alert", message: "Message", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
        
        alert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: { action in
            switch action.style{
            case .Default:
                println("Ok")
                
            case .Cancel:
                println("cancel")
                
            case .Destructive:
                println("destructive")
            }
        }))
        
    }
    
    
    
    @IBAction func tappedAlertField(sender: AnyObject) {
        
        let alertController = UIAlertController(title: "title1", message: "msg1", preferredStyle: .Alert)
        
        let cancel = UIAlertAction(title: "Cancel", style:.Cancel){ action -> Void in
            println("Cancel")
        }
        alertController.addAction(cancel)
        
        let next = UIAlertAction(title: "Next", style:.Default){ action -> Void in
            println("Next")
        }
        alertController.addAction(next)
        
        alertController.addTextFieldWithConfigurationHandler { textField-> Void in
            textField.textColor = UIColor.blueColor()
        }
        
        self.presentViewController(alertController, animated: true, completion: nil)
        
    }
}

