//
//  DetailViewController.swift
//  FoodPin
//
//  Created by 姚宇鴻 on 2017/5/17.
//  Copyright © 2017年 JordanYao. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var restaurant:Restaurant!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! DetailTableViewCell
        
        
        //利用列的index來決定在第幾列要顯示哪些資料
        switch indexPath.row{
        case 0:
            cell.titleLabel.text = restaurant.name
        case 1:
            cell.titleLabel.text = restaurant.location
        case 2:
            cell.titleLabel.text = restaurant.time
        case 3:
            cell.titleLabel.text = restaurant.image
        default:
            cell.titleLabel.text = ""
        }
        
        
        return cell
    }

    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
