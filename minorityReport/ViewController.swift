//
//  ViewController.swift
//  minorityReport
//
//  Created by Andrew Yang on 6/13/17.
//  Copyright © 2017 Andrew Yang. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var futureLabel: UILabel!
    @IBOutlet weak var preCogsLabel: UILabel!

    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    @IBAction func onDrag(_ sender: UIPanGestureRecognizer)
    {
        print("drag")
        
        let point = sender.location(in: view)
        print(point)
        futureLabel.center = point
        
        if sender.state == .ended
        {
        UIView.animate(withDuration: 0.75, animations:
        {
            self.futureLabel.center = self.view.center
        })
        }
    }

}

