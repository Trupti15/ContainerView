//
//  ViewController.swift
//  ContailerViewDemo
//
//  Created by Trupti on 2/5/16.
//  Copyright © 2016 LiftOff LLC. All rights reserved.
//

import UIKit

class viewController1: UIViewController,tableViewDelegateDataSource{
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func numberOfRowsInSection()->Int {
        return 10
    }
    func heightForRowAtIndexPath()->CGFloat {
        return 120
    }

    func cellForRowAtIndexPath(cell:TableViewCell)->TableViewCell {
        cell.label1.text = "viewController1 Label1"
        cell.label2.text = "viewController1 Label2"
        cell.label3.text = "viewController1 Label3"
        return cell
    }

    func didSelectRowAtIndexPath(indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("viewController2", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

        if (segue.identifier == "commonTable")
        {
            let controller = segue.destinationViewController as! ContainerViewController
            controller.delegate = self
        }
        if (segue.identifier == "viewController2")
        {
//            let controller = segue.destinationViewController as! ViewController2

        }

    }

}