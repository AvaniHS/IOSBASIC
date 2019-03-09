//
//  fifthViewController.swift
//  segue1
//
//  Created by APPLE-20 on 27/02/19.
//  Copyright © 2019 tableviewproj. All rights reserved.
//

import UIKit

class fifthViewController: UIViewController,UITableViewDataSource,UITableViewDelegate  {
   
    let Animals = ["elephant","tiger","lion","panda"]
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
    return(Animals.count)
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
{
    tableView.rowHeight = 200
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
    cell.imageview.image = UIImage(named: Animals[indexPath.row]+".jpg")
    cell.Label.text = Animals[indexPath.row]
    return (cell)
    
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
