//
//  ViewController.swift
//  Currency_Converter_App
//
//  Created by Egemen Karakaya on 16.09.2022.
//


import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    
    @IBAction func convertButton(_ sender: UIButton) {
        
        
    }
    
    let currencies = [""]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Currency Converter"
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
    }
                
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = currencies[indexPath.row]
        
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currencies.count
    }
    

    
    
}
