//
//  NextViewController.swift
//  moai
//
//  Created by 玉城秀大 on 2020/11/16.
//

import UIKit

class NextViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    

    
    @IBOutlet weak var tableView: UITableView!
    
    var moaiNumber = 1
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    //セルの数②
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return moaiNumber
    }
    
    //セクションの数①
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //各セルを構築し、生成する③
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //セルを作成します。 デフォルトのスタイルを選択
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        
        //セルのテキストを設定
        cell.textLabel?.text = "あいうえお"

        return cell
        
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return tableView.frame.size.height/5
    }
    
    
    //セルがタップされた時に呼ばれる
    //func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //タップした時にその番号の中身を取り出して値を渡す
      //  <#code#>
    //}
    

    @IBAction func tap(_ sender: Any) {
        moaiNumber = moaiNumber + 1
        tableView.reloadData()
        
    }
    
    
    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
    
    
}
