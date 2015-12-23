//
//  ViewController.swift
//  playSound
//
//  Created by SwagSoft Vn on 12/22/15.
//  Copyright © 2015 SwagSoft Vn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var recordLabel: UILabel!
    @IBOutlet weak var pauseButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewWillAppear(animated: Bool) {
        
        recordButton.enabled = true
        recordLabel.hidden = true
        pauseButton.hidden = true
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAction(sender: UIButton) {
        print("star recording")
        
        recordLabel.hidden = false
        pauseButton.hidden = false
        
        recordButton.enabled = false
    }

    @IBAction func pausAction(sender: UIButton) {
        print("stop recording");
        
        
        
    }
}

