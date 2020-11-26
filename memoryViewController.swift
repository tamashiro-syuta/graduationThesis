//
//  ViewController.swift
//  Swift6TableViewApp1
//
//  Created by 玉城秀大 on 2020/11/15.
//

import UIKit

class memoryViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    

    @IBOutlet weak var tableView: UITableView!
    
    

    
    var textArray = [String]()
    var imageArray = ["noImage"]
    var sectionNumber = 1
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
    
        
    }
    
    
    //セルの数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionNumber
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 563
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        //タグが１のものをimageViewに設置している
        let imageView = cell.contentView.viewWithTag(1) as! UIImageView
        //タグが2のものをlabelに設置している
        let label = cell.contentView.viewWithTag(2) as! UILabel
        
        label.text = textArray[indexPath.row]
        imageView.image = UIImage(named: imageArray[indexPath.row] )
        
        return cell
        
    }
    
    

        
    
    
    
}

