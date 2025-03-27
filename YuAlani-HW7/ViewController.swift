//
//  ViewController.swift
//  YuAlani-HW7
//
//  Created by Alani Yu on 3/27/25.
//

import UIKit

protocol addNewTimer{
    func addNewTimer(newTimer: Timer)
}

class ViewController: UIViewController, UISceneDelegate, addNewTimer, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var timerTableView: UITableView!
    
    var timerList: [Timer] = []; // list of timers
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timerTableView.delegate = self
        timerTableView.dataSource = self
        // Do any additional setup after loading the view.
    }

    var textCellIdentifier = "timerCell"
    
    // prepares the pizza segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "addTimerSegue",
           let timerVC = segue.destination as? addTimerVC {
            timerVC.delegate = self
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(timerList.count)
        return timerList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        print("adding cell")
        let cell = tableView.dequeueReusableCell(withIdentifier: textCellIdentifier, for:indexPath as IndexPath)
        cell.textLabel?.text = timerList[indexPath.row].toString()
        
        return cell
    }
    
    func addNewTimer(newTimer: Timer){
        timerList.append(newTimer);
        print("Timer added")
    }

}

