//
//  SettingsViewController.swift
//  Tip Calculator Chancedy P
//
//  Created by Student on 12/10/15.
//  Copyright © 2015 CodePath. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    
    @IBOutlet var defaultTipControl: UISegmentedControl!
    @IBOutlet var tipQuote: UILabel!
    
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        let defaults = NSUserDefaults.standardUserDefaults()
        let intValue = defaults.integerForKey("defaultPercentage")
        
        defaultTipControl.selectedSegmentIndex = intValue
        
        let quoteArray = ["If you having money problems I feel bad for you son, I got 99 problems, but a tip aint't one", "Tip me Baby one more time!", "Everytime you don't tip a child gets a mullet."]
        let random = Int(arc4random_uniform(3))
        
        //set a quote
        tipQuote.text = quoteArray[random]
        tipQuote.sizeToFit()
        
        
        
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
        
    }

    @IBAction func setDefaultPercentages(sender: AnyObject) {
        
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setInteger(defaultTipControl.selectedSegmentIndex, forKey: "defaultPercentage")
        defaults.synchronize()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

        /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
