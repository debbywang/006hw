//
//  TipViewController.swift
//  006hw
//
//  Created by Debby on 2016/11/13.
//  Copyright © 2016年 Debby. All rights reserved.
//

import UIKit

class TipViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var money: UITextField!

    @IBOutlet weak var percent: UITextField!
    
    @IBAction func count(_ sender: Any) {
        
        if money.text==""||percent.text==""{
            result.text="0"}
            
        else{
        let tip=Double(money.text!)!*Double(percent.text!)!*0.01
            result.text=String(tip)
        }
    }
    
    @IBOutlet weak var result: UILabel!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
