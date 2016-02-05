//
//  ContainerViewController.swift
//  CommonCellDemo
//
//  Created by Trupti on 1/25/16.
//  Copyright © 2016 Trupti. All rights reserved.
//

import UIKit

@objc protocol tableViewDelegateDataSource{
     func numberOfRowsInSection()->Int
    optional func heightForRowAtIndexPath()-> CGFloat
    optional func cellForRowAtIndexPath(cell:TableViewCell)->TableViewCell
    func didSelectRowAtIndexPath(indexPath:NSIndexPath)
}
class ContainerViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{
    var delegate : tableViewDelegateDataSource!

    @IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if delegate !=  nil {
             return delegate.numberOfRowsInSection()
        }
       return 3
    }

    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if delegate !=  nil {
            return delegate.heightForRowAtIndexPath!()
        }
        return 200
    }

    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if delegate !=  nil {
            delegate.didSelectRowAtIndexPath(indexPath)
        }
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("tablecell") as! TableViewCell
        cell.backgroundColor = UIColor(patternImage: UIImage(named: "bg.png")!)
        cell.layer.borderColor = UIColor.whiteColor().CGColor
        cell.layer.borderWidth = 1.0

        cell.label1.text = "containerLabel1"
        cell.label2.text = "containerLabel2"
        cell.label3.text = "containerLabel3"
        if delegate !=  nil {
            return delegate.cellForRowAtIndexPath!(cell)
        }
        return cell
    }
    

}
