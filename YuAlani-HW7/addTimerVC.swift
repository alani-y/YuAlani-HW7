//
//  addTimerVC.swift
//  YuAlani-HW7
//
//  Created by Alani Yu on 3/27/25.
//

import UIKit

class addTimerVC: UIViewController {
    
    var delegate: UIViewController!

    @IBOutlet weak var eventName: UITextField!
    @IBOutlet weak var locationName: UITextField!
    @IBOutlet weak var totalTimeNum: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func newTimerButtonPressed(_ sender: Any) {
        
        let totalTimeInt = Int(totalTimeNum.text!)
        
        let newTimer = Timer(event: eventName.text!, location: locationName.text!, timeRemaining: totalTimeInt!)
        
        let timerVC = delegate as! addNewTimer
        
        timerVC.addNewTimer(newTimer: newTimer)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
