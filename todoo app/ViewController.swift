//
//  ViewController.swift
//  todoo app
//
//  Created by Brandon Lepine on 12/2/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var dailyOverviewTable: UITableView!
    override func viewDidLoad() {
            super.viewDidLoad()
            dailyOverviewTable.delegate = self
            dailyOverviewTable.dataSource = self
            dailyOverviewTable.layer.cornerRadius = 10
        
            
            // Do any additional setup after loading the view.
        }
}


extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        return cell
    }
    
    func tableView(_ dailyOverviewTable: UITableView, numberOfRowsInSection section: Int) -> Int { return 2 }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
   

}
    
    
    
    

    
    
    
    
   




