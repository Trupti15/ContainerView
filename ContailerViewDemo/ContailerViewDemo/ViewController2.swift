//
//  ViewController2.swift
//  ContailerViewDemo
//
//  Created by Trupti on 2/5/16.
//  Copyright © 2016 LiftOff LLC. All rights reserved.
//

import UIKit

class ViewController2: UIViewController,tableViewDelegateDataSource{
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func numberOfRowsInSection()->Int {
        return 3
    }
    func heightForRowAtIndexPath()->CGFloat {
        return 200
    }

    func cellForRowAtIndexPath(cell:TableViewCell)->TableViewCell {
        return cell
    }
    func didSelectRowAtIndexPath(indexPath: NSIndexPath) {
        self.navigationController?.popToRootViewControllerAnimated(true)
    }


    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

        if (segue.identifier == "commonTable")
        {
            let controller = segue.destinationViewController as! ContainerViewController
            controller.delegate = self
        }
    }

}
