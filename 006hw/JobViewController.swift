//
//  JobViewController.swift
//  006hw
//
//  Created by Debby on 2016/11/13.
//  Copyright © 2016年 Debby. All rights reserved.
//

import UIKit

class JobViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        money.text="40000"
        gender.selectedSegmentIndex=1
        time.isOn=false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var gender: UISegmentedControl!
    @IBOutlet weak var time: UISwitch!
    @IBOutlet weak var money: UITextField!
    
    @IBAction func show(_ sender: Any) {
        
        var job = false
        if gender.selectedSegmentIndex==1{
            if time.isOn==false{
                if Int(money.text!)!>=40000{
                    job=true
                }
            }
        }
        
        if job{good.isHidden = false
            bad.isHidden = true}
        else{good.isHidden = true
            bad.isHidden = false}
    }
    
    @IBOutlet weak var good: UIImageView!
    @IBOutlet weak var bad: UIImageView!
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
